require 'net/http'
require 'uri'
require 'json'

class MusicbrainzService
  BASE_URL = "https://musicbrainz.org/ws/2/"
  COVER_ART_BASE = "https://coverartarchive.org/release/"
  USER_AGENT = "TestembApp/1.0 (contato@exemplo.com)"
  RATE_LIMIT_DELAY = 1.5

  # Mapeamento de países/regiões
  PAISES = {
    'todos' => { nome: 'Todos os países', codigo: nil },
    'americas_norte' => { 
      nome: 'América do Norte', 
      codigos: ['US', 'MX', 'CA'], # EUA, México, Canadá
      label: '🇺🇸🇲🇽🇨🇦'
    },
    'americas_central' => { 
      nome: 'América Central/Caribe', 
      codigos: ['JM', 'PR'], # Jamaica, Porto Rico
      label: '🇯🇲🇵🇷'
    },
    'europa' => { 
      nome: 'Europa', 
      codigos: ['GB', 'FR', 'ES', 'DE'], # Reino Unido, França, Espanha, Alemanha
      label: '🇬🇧🇫🇷🇪🇸🇩🇪'
    },
    'americas_sul' => { 
      nome: 'América do Sul', 
      codigos: ['BR', 'CO', 'AR'], # Brasil, Colômbia, Argentina
      label: '🇧🇷🇨🇴🇦🇷'
    },
    'oceania' => { 
      nome: 'Oceania', 
      codigos: ['AU', 'NZ'], # Austrália, Nova Zelândia
      label: '🇦🇺🇳🇿'
    },
    'asia' => { 
      nome: 'Ásia', 
      codigos: ['JP', 'KR'], # Japão, Coreia do Sul
      label: '🇯🇵🇰🇷'
    }
  }

  def self.search(query)
    return [] if query.blank?
    
    Rails.logger.info("🎵 Iniciando busca MusicBrainz para: '#{query}' (busca automática multi-região)")
    
    begin
      # Faz busca rotativa automática em diferentes regiões
      all_results = []
      
      # Primeira tentativa: busca global
      global_results = search_in_region(query, 'todos')
      all_results.concat(global_results)
      
      # Se poucos resultados, busca em regiões específicas
      if all_results.size < 8
        regions_to_try = ['americas_norte', 'europa', 'americas_sul', 'asia'].shuffle
        
        regions_to_try.each do |region|
          break if all_results.size >= 10
          
          Rails.logger.info("🌍 Expandindo busca para região: #{PAISES[region][:nome]}")
          region_results = search_in_region(query, region)
          
          # Adiciona apenas resultados únicos
          region_results.each do |result|
            unless all_results.any? { |r| r[:nome] == result[:nome] && r[:autor] == result[:autor] }
              all_results << result
            end
          end
          
          sleep(0.3) # Pausa entre regiões
        end
      end
      
      # Retorna os melhores resultados (máximo 10)
      final_results = all_results.first(10)
      Rails.logger.info("🎯 Busca multi-região finalizada: #{final_results.size} resultados únicos")
      
      final_results
      
    rescue => e
      Rails.logger.error("💥 Erro na busca multi-região: #{e.class} - #{e.message}")
      create_sample_results(query)
    end
  end

  def self.search_in_region(query, filtro_pais)
    begin
      # Constrói a query com filtro geográfico
      search_query = build_search_query(query, filtro_pais)
      encoded_query = URI.encode_www_form_component(search_query)
      uri = URI("#{BASE_URL}recording?query=#{encoded_query}&limit=5&inc=releases&fmt=json")
      
      sleep(RATE_LIMIT_DELAY)

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 15
      http.read_timeout = 15
      
      request = Net::HTTP::Get.new(uri)
      request['User-Agent'] = USER_AGENT
      request['Accept'] = 'application/json'

      response = http.request(request)
      
      unless response.is_a?(Net::HTTPSuccess)
        Rails.logger.warn("⚠️ HTTP Error para região #{filtro_pais}: #{response.code}")
        return []
      end
      
      data = JSON.parse(response.body.force_encoding('UTF-8').scrub('?'))
      recordings = data["recordings"]

      return [] if recordings.nil? || recordings.empty?

      results = []
      recordings.each_with_index do |r, index|
        title = r["title"] || "Título desconhecido"
        artist = r.dig("artist-credit", 0, "name") || "Artista desconhecido"
        artist_id = r.dig("artist-credit", 0, "artist", "id")
        recording_id = r["id"]
        
        # Busca releases para obter capa
        releases = r["releases"] || []
        release_id = releases.first&.dig("id") if releases.any?
        
        # Gera capa automática (sem indicação de região específica)
        cover_url = get_regional_cover_url(title, artist, 'auto', 'auto')
        
        results << {
          nome: title,
          autor: artist,
          letra: "",
          capa: cover_url,
          recording_mbid: recording_id,
          artist_mbid: artist_id
        }
      end
      
      results
      
    rescue => e
      Rails.logger.error("💥 Erro na busca da região #{filtro_pais}: #{e.message}")
      []
    end
  end

  private

  def self.build_search_query(query, filtro_pais)
    base_query = query.strip
    
    return base_query if filtro_pais == 'todos' || !PAISES[filtro_pais]
    
    pais_config = PAISES[filtro_pais]
    return base_query unless pais_config[:codigos]
    
    # Adiciona filtro de país na query do MusicBrainz
    country_filters = pais_config[:codigos].map { |code| "country:#{code}" }.join(' OR ')
    "#{base_query} AND (#{country_filters})"
  end

  def self.detect_country_from_result(recording_data)
    # Tenta detectar país do artista ou release
    country = recording_data.dig("releases", 0, "country") ||
              recording_data.dig("artist-credit", 0, "artist", "country") ||
              "Unknown"
    
    # Mapeia códigos para nomes amigáveis
    country_names = {
      'US' => 'EUA 🇺🇸', 'MX' => 'México 🇲🇽', 'CA' => 'Canadá 🇨🇦',
      'JM' => 'Jamaica 🇯🇲', 'PR' => 'Porto Rico 🇵🇷',
      'GB' => 'Reino Unido 🇬🇧', 'FR' => 'França 🇫🇷', 'ES' => 'Espanha 🇪🇸', 'DE' => 'Alemanha 🇩🇪',
      'BR' => 'Brasil 🇧🇷', 'CO' => 'Colômbia 🇨🇴', 'AR' => 'Argentina 🇦🇷',
      'AU' => 'Austrália 🇦🇺', 'NZ' => 'Nova Zelândia 🇳🇿',
      'JP' => 'Japão 🇯🇵', 'KR' => 'Coreia do Sul 🇰🇷'
    }
    
    country_names[country] || country
  end

  def self.get_regional_cover_url(title, artist, filtro_pais, pais_resultado)
    # Cores baseadas na região
    regional_colors = {
      'americas_norte' => ['FF6B6B', '4ECDC4', '45B7D1'],
      'americas_central' => ['FFD93D', '6BCF7F', 'FF8B94'],
      'europa' => ['A8E6CF', 'DCEDC1', 'FFD3A5'],
      'americas_sul' => ['FDCB6E', 'E84393', '00B894'],
      'oceania' => ['74B9FF', '0984E3', 'A29BFE'],
      'asia' => ['FD79A8', 'FDCB6E', 'E17055'],
      'todos' => ['96CEB4', 'FFEAA7', 'DDA0DD']
    }
    
    cores = regional_colors[filtro_pais] || regional_colors['todos']
    cor_index = (title + artist).hash.abs % cores.length
    cor = cores[cor_index]
    
    text = URI.encode_www_form_component("#{title[0..8]}")
    "https://via.placeholder.com/300x300/#{cor}/FFFFFF?text=#{text}"
  end

  def self.create_sample_results(query)
    Rails.logger.info("🎭 Criando resultados de exemplo para: #{query}")
    
    [
      {
        nome: "Sample Song 1 (#{query})",
        autor: "Sample Artist 1",
        letra: "",
        capa: get_regional_cover_url("Sample Song 1", "Sample Artist 1", 'auto', 'auto'),
        recording_mbid: "sample-1-#{SecureRandom.hex(8)}",
        artist_mbid: "artist-1-#{SecureRandom.hex(8)}"
      },
      {
        nome: "Sample Song 2 (#{query})",
        autor: "Sample Artist 2", 
        letra: "",
        capa: get_regional_cover_url("Sample Song 2", "Sample Artist 2", 'auto', 'auto'),
        recording_mbid: "sample-2-#{SecureRandom.hex(8)}",
        artist_mbid: "artist-2-#{SecureRandom.hex(8)}"
      }
    ]
  end

  def self.get_cover_url_safe(release_id)
    return nil unless release_id.present?
    
    begin
      Rails.logger.info("Buscando capa para release: #{release_id}")
      
      uri = URI("#{COVER_ART_BASE}#{release_id}")
      sleep(RATE_LIMIT_DELAY)

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 15
      http.read_timeout = 15
      
      request = Net::HTTP::Get.new(uri)
      request['User-Agent'] = USER_AGENT
      request['Accept'] = 'application/json'
      
      response = http.request(request)
      
      Rails.logger.info("Cover Art response: #{response.code}")
      
      return nil unless response.is_a?(Net::HTTPSuccess)

      data = JSON.parse(response.body)
      images = data["images"]
      
      return nil unless images&.any?
      
      image = images.first
      cover_url = image.dig("thumbnails", "large") || 
                  image.dig("thumbnails", "small") || 
                  image["image"]
      
      if cover_url
        Rails.logger.info("✓ Capa encontrada: #{cover_url[0..50]}...")
      else
        Rails.logger.warn("✗ Estrutura de imagem não reconhecida")
      end
      
      cover_url
      
    rescue JSON::ParserError => e
      Rails.logger.error("Erro JSON ao buscar capa #{release_id}: #{e.message}")
      nil
    rescue => e
      Rails.logger.error("Erro ao buscar capa #{release_id}: #{e.class} - #{e.message}")
      nil
    end
  end

  # Método de compatibilidade
  def self.get_cover_url(release_id)
    get_cover_url_safe(release_id)
  end
end
