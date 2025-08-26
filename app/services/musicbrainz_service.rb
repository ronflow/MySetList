require 'net/http'
require 'uri'
require 'json'

class MusicbrainzService
  # Configurações da API MusicBrainz
  BASE_URL = "https://musicbrainz.org/ws/2/"
  COVER_ART_BASE = "https://coverartarchive.org/release/"
  USER_AGENT = "TestembApp/1.0 (contato@exemplo.com)"
  RATE_LIMIT_DELAY = 1.5  # Delay para respeitar rate limit da API

  # 🌍 MAPEAMENTO DE REGIÕES GEOGRÁFICAS
  # Define diferentes regiões para busca direcionada de música
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

  # 🔍 MÉTODO PRINCIPAL DE BUSCA
  # Realiza busca inteligente multi-região para maximizar resultados
  def self.search(query)
    return [] if query.blank?
    
    Rails.logger.info("🎵 Iniciando busca MusicBrainz para: '#{query}' (busca automática multi-região)")
    
    begin
      # Array para armazenar todos os resultados encontrados
      all_results = []
      
      # 1️⃣ PRIMEIRA FASE: Busca global (sem filtro de região)
      global_results = search_in_region(query, 'todos')
      all_results.concat(global_results)
      
      # 2️⃣ SEGUNDA FASE: Se poucos resultados, expandir busca por regiões
      if all_results.size < 8
        # Aleatoriza ordem das regiões para variedade nos resultados
        regions_to_try = ['americas_norte', 'europa', 'americas_sul', 'asia'].shuffle
        
        # Busca em cada região até ter resultados suficientes
        regions_to_try.each do |region|
          break if all_results.size >= 10 # Limite máximo de resultados
          
          Rails.logger.info("🌍 Expandindo busca para região: #{PAISES[region][:nome]}")
          region_results = search_in_region(query, region)
          
          # 🔄 FILTRO DE DUPLICATAS: Adiciona apenas resultados únicos
          region_results.each do |result|
            unless all_results.any? { |r| r[:nome] == result[:nome] && r[:autor] == result[:autor] }
              all_results << result
            end
          end
          
          sleep(0.3) # Pausa entre requisições por região
        end
      end
      
      # 3️⃣ FINALIZAÇÃO: Retorna os 10 melhores resultados
      final_results = all_results.first(10)
      Rails.logger.info("🎯 Busca multi-região finalizada: #{final_results.size} resultados únicos")
      
      final_results
      
    rescue => e
      Rails.logger.error("💥 Erro na busca multi-região: #{e.class} - #{e.message}")
      create_sample_results(query) # Fallback para resultados de exemplo
    end
  end

  # 🌎 BUSCA EM REGIÃO ESPECÍFICA
  # Realiza busca na API MusicBrainz com filtro geográfico opcional
  def self.search_in_region(query, filtro_pais)
    begin
      # 1️⃣ CONSTRUÇÃO DA QUERY: Adiciona filtros geográficos se necessário
      search_query = build_search_query(query, filtro_pais)
      encoded_query = URI.encode_www_form_component(search_query)
      
      # 2️⃣ MONTAGEM DA URL: Inclui parâmetros para ISRC e releases
      uri = URI("#{BASE_URL}recording?query=#{encoded_query}&limit=5&inc=releases+isrcs&fmt=json")
      
      # 3️⃣ RATE LIMITING: Respeita limite de requisições da API
      sleep(RATE_LIMIT_DELAY)

      # 4️⃣ CONFIGURAÇÃO HTTP: Timeout e SSL para conexão segura
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 15
      http.read_timeout = 15
      
      # 5️⃣ CABEÇALHOS DA REQUISIÇÃO: User-Agent obrigatório para MusicBrainz
      request = Net::HTTP::Get.new(uri)
      request['User-Agent'] = USER_AGENT
      request['Accept'] = 'application/json'

      # 6️⃣ EXECUÇÃO DA REQUISIÇÃO
      response = http.request(request)
      
      # 7️⃣ VALIDAÇÃO DA RESPOSTA HTTP
      unless response.is_a?(Net::HTTPSuccess)
        Rails.logger.warn("⚠️ HTTP Error para região #{filtro_pais}: #{response.code}")
        return []
      end
      
      # 8️⃣ PARSING DO JSON: Com encoding UTF-8 e limpeza de caracteres
      data = JSON.parse(response.body.force_encoding('UTF-8').scrub('?'))
      recordings = data["recordings"]

      return [] if recordings.nil? || recordings.empty?

      # 9️⃣ PROCESSAMENTO DOS RESULTADOS
      results = []
      recordings.each_with_index do |r, index|
        # Extração de dados básicos da música
        title = r["title"] || "Título desconhecido"
        artist = r.dig("artist-credit", 0, "name") || "Artista desconhecido"
        artist_id = r.dig("artist-credit", 0, "artist", "id")
        recording_id = r["id"]

        # 🏷️ EXTRAÇÃO DO ISRC: Código internacional de identificação
        isrc_code = extract_isrc_from_recording(r)
        Rails.logger.info("🎵 Recording #{recording_id}: ISRC = #{isrc_code || 'não encontrado'}")
        
        # 🖼️ BUSCA DE CAPA: Através dos releases associados
        releases = r["releases"] || []
        release_id = releases.first&.dig("id") if releases.any?
        
        # 🎨 GERAÇÃO DE CAPA AUTOMÁTICA: Baseada na região
        cover_url = get_regional_cover_url(title, artist, 'auto', 'auto')
        
        # 📦 MONTAGEM DO RESULTADO FINAL
        results << {
          nome: title,
          autor: artist,
          letra: "", # Vazio por padrão, pode ser preenchido depois
          capa: cover_url,
          recording_mbid: recording_id,
          artist_mbid: artist_id,
          isrc: isrc_code # ⭐ CÓDIGO ISRC INCLUÍDO
        }
      end
      
      results
      
    rescue => e
      Rails.logger.error("💥 Erro na busca da região #{filtro_pais}: #{e.message}")
      []
    end
  end

  private

  # 🏷️ EXTRAÇÃO INTELIGENTE DE ISRC
  # Tenta múltiplos métodos para encontrar o código ISRC
  def self.extract_isrc_from_recording(recording_data)
    # 🔍 MÉTODO 1: ISRC direto no recording (mais comum)
    if recording_data["isrcs"]&.any?
      isrc = recording_data["isrcs"].first
      Rails.logger.info("✓ ISRC encontrado no recording: #{isrc}")
      return isrc
    end
  
    # 🔍 MÉTODO 2: ISRC através dos releases/tracks (estrutura aninhada)
    releases = recording_data["releases"] || []
    releases.each do |release|
      media = release["media"] || []
      media.each do |medium|
        tracks = medium["tracks"] || []
        tracks.each do |track|
          if track["recording"] && track["recording"]["isrcs"]&.any?
            isrc = track["recording"]["isrcs"].first
            Rails.logger.info("✓ ISRC encontrado via release/track: #{isrc}")
            return isrc
          end
        end
      end
    end
  
    # 🔍 MÉTODO 3: Busca adicional específica por recording ID
    recording_id = recording_data["id"]
    if recording_id
      detailed_isrc = fetch_isrc_by_recording_id(recording_id)
      if detailed_isrc
        Rails.logger.info("✓ ISRC encontrado via busca detalhada: #{detailed_isrc}")
        return detailed_isrc
      end
    end
    
    # ❌ ISRC NÃO ENCONTRADO
    Rails.logger.warn("✗ Nenhum ISRC encontrado para: #{recording_data['title']}")
    nil
  end

  # 🔎 BUSCA DETALHADA DE ISRC POR RECORDING ID
  # Faz uma requisição específica para obter ISRCs de um recording
  def self.fetch_isrc_by_recording_id(recording_id)
    begin
      # Monta URL específica para o recording com ISRCs
      uri = URI("#{BASE_URL}recording/#{recording_id}?inc=isrcs&fmt=json")
      
      # Rate limiting mais leve para busca específica
      sleep(RATE_LIMIT_DELAY / 2)
      
      # Configuração HTTP otimizada
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 10
      http.read_timeout = 10
      
      request = Net::HTTP::Get.new(uri)
      request['User-Agent'] = USER_AGENT
      request['Accept'] = 'application/json'
      
      response = http.request(request)
      
      return nil unless response.is_a?(Net::HTTPSuccess)
      
      # Parse da resposta específica do recording
      data = JSON.parse(response.body.force_encoding('UTF-8').scrub('?'))
      
      # Extrai array de ISRCs e retorna o primeiro
      isrcs = data["isrcs"] || []
      return isrcs.first if isrcs.any?
      
      nil
      
    rescue => e
      Rails.logger.error("💥 Erro ao buscar ISRC detalhado para #{recording_id}: #{e.message}")
      nil
    end
  end

  # 🔧 CONSTRUÇÃO DE QUERY COM FILTROS GEOGRÁFICOS
  # Adiciona filtros de país/região à busca do MusicBrainz
  def self.build_search_query(query, filtro_pais)
    base_query = query.strip
    
    # Se busca global ou região inválida, retorna query original
    return base_query if filtro_pais == 'todos' || !PAISES[filtro_pais]
    
    pais_config = PAISES[filtro_pais]
    return base_query unless pais_config[:codigos]
    
    # Constrói filtro OR com códigos de países da região
    country_filters = pais_config[:codigos].map { |code| "country:#{code}" }.join(' OR ')
    "#{base_query} AND (#{country_filters})"
  end

  # 🌍 DETECÇÃO DE PAÍS DO RESULTADO
  # Identifica origem geográfica do resultado para display
  def self.detect_country_from_result(recording_data)
    # Busca país no release ou no artista
    country = recording_data.dig("releases", 0, "country") ||
              recording_data.dig("artist-credit", 0, "artist", "country") ||
              "Unknown"
    
    # Mapeia códigos ISO para nomes com bandeiras
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

  # 🎨 GERAÇÃO DE CAPA REGIONAL AUTOMÁTICA
  # Cria placeholder colorido baseado na região e título
  def self.get_regional_cover_url(title, artist, filtro_pais, pais_resultado)
    # Paleta de cores por região para identidade visual
    regional_colors = {
      'americas_norte' => ['FF6B6B', '4ECDC4', '45B7D1'],      # Vermelho, azul-verde, azul
      'americas_central' => ['FFD93D', '6BCF7F', 'FF8B94'],    # Amarelo, verde, rosa
      'europa' => ['A8E6CF', 'DCEDC1', 'FFD3A5'],             # Verde claro, bege, pêssego
      'americas_sul' => ['FDCB6E', 'E84393', '00B894'],        # Amarelo, magenta, verde
      'oceania' => ['74B9FF', '0984E3', 'A29BFE'],            # Azul claro, azul escuro, roxo
      'asia' => ['FD79A8', 'FDCB6E', 'E17055'],               # Rosa, amarelo, laranja
      'todos' => ['96CEB4', 'FFEAA7', 'DDA0DD']               # Verde, amarelo claro, roxo claro
    }
    
    # Seleciona cor baseada no hash do título+artista para consistência
    cores = regional_colors[filtro_pais] || regional_colors['todos']
    cor_index = (title + artist).hash.abs % cores.length
    cor = cores[cor_index]
    
    # Gera placeholder com primeiros caracteres do título
    text = URI.encode_www_form_component("#{title[0..8]}")
    "https://via.placeholder.com/300x300/#{cor}/FFFFFF?text=#{text}"
  end

  # 🖼️ BUSCA SEGURA DE CAPA REAL DO COVER ART ARCHIVE
  # Tenta buscar capa real do álbum através do Cover Art Archive
  def self.get_cover_url_safe(release_id)
    return nil unless release_id.present?
    
    begin
      Rails.logger.info("Buscando capa para release: #{release_id}")
      
      # URL do Cover Art Archive para o release
      uri = URI("#{COVER_ART_BASE}#{release_id}")
      sleep(RATE_LIMIT_DELAY)

      # Configuração HTTP similar ao MusicBrainz
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

      # Parse da resposta do Cover Art Archive
      data = JSON.parse(response.body)
      images = data["images"]
      
      return nil unless images&.any?
      
      # Prioriza thumbnails grandes, depois pequenos, depois imagem original
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

  # 🔄 MÉTODO DE COMPATIBILIDADE
  # Alias para manter compatibilidade com código antigo
  def self.get_cover_url(release_id)
    get_cover_url_safe(release_id)
  end

  # ⚠️ MÉTODO FALTANDO: Fallback para resultados de exemplo
  # Este método está sendo chamado mas não está implementado
  def self.create_sample_results(query)
    Rails.logger.warn("🔄 Usando resultados de exemplo para: #{query}")
    [
      {
        nome: "Resultado de exemplo para '#{query}'",
        autor: "Artista Exemplo",
        letra: "",
        capa: get_regional_cover_url("Exemplo", "Artista", 'todos', 'todos'),
        recording_mbid: nil,
        artist_mbid: nil,
        isrc: nil
      }
    ]
  end
end