# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

  
  # Event.create!(event_date: "2025-01-01", locale: "Evento Bandaoke TESTE", description: "Evento TESTE Rock Flowerz - brinque aqui!")
  # Event.create!(event_date: "2025-05-29", locale: "Gaz Burning", description: "Rock Flowerz no Gaz - Quinta dia 29/Mai")
  EventSongQueue.destroy_all
  Song.destroy_all
Song.create!( name: "A Feira", artist: "", tags: "rock; Nacional", lyrics: "Tom:G
[Intro]GDC
GDC
[Refrão]
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
[Primeira Parte]
G
Vem maluco, vem madame
D
Vem Maurício, vem atriz
C
Pra comprar comigo
G
Vem maluco, vem madame
D
Vem Maurício, vem atriz
C
Pra levar comigo
[Segunda Parte]
GD
Tô vendendo ervas
C
Que curam e acalmam
GD
Tô vendendo ervas
C
Que Aliviam e temperam
[Terceira Parte]
CG/BAm
Mas eu não sou autorizado
DEm
Quando o rapa chega
Eu quase sempre escapo
A
Quem me fornece
É que ganha mais
A clientela é vasta, eu sei
CG/BAm
Porque os remédios normais
DEm
Nem sempre amenizam a pressão
A
Amenizam a pressão
Em
Amenizam a pressão
(GDC)
(GDC)
[Refrão]
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
[Primeira Parte]
G
Vem maluco, vem madame
D
Vem Maurício, vem atriz
C
Pra comprar comigo
G
Vem maluco, vem madame
D
Vem Maurício, vem atriz
C
Pra levar comigo
[Segunda Parte]
GD
Tô vendendo ervas
C
Que curam e acalmam
GD
Tô vendendo ervas
C
Que Aliviam e temperam
GD
Tô vendendo ervas
C
Que curam e acalmam
GD
Tô vendendo ervas
C
Que Aliviam e temperam
[Terceira Parte]
CG/BAm
Mas eu não sou autorizado
DEm
Quando o rapa chega
Eu quase sempre escapo
A
Quem me fornece
É que ganha mais
A clientela é vasta, eu sei
CG/BAm
Porque os remédios normais
DEm
Nem sempre amenizam a pressão
A
Amenizam a pressão
Em
Amenizam a pressão
A
Amenizam a pressão
[Ponte]
B
Porque os remédios normais
Não amenizam, pressão
B
Porque os remédios normais
Não amenizam, pressão
B
Porque os remédios normais
Não amenizam, pressão
B
Porque os remédios normais
Não amenizam, pressão
B
Porque os remédios normais
Não amenizam, pressão
B
Porque os remédios normais
Não amenizam, pressão
[Refrão]
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar
GDC
É dia de feira, quarta-feira, sexta-feira
Não importa a feira
GDC
É dia de feira, quem quiser pode chegar")

Song.create!( name: "A Mais Pedida", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
Introdução:CAmCAmCAmD5
C5G5A5(3x)
D5
Parte 1 de 2:
CAm
E|------------------------------------------|
B|--------8--x--8-10-8--x-5--5--x-5---------|
G|-7--9---9--x--9-------x-5--5--x-5---------|
D|-------10--x-10-------x-7--7--x-7---------|
D5
C5G5A5
D5
Primeira Parte:
C5
Nesse show não entra menor
Um homem censurou
Tava de mau humor
F5D5
Não tinha dormido bem
A5G5
Porque não levantou
C5
Pense como ia ser bom
Se nós fizesse um som
Que ultrapassasse
F5
A barreira das A.M, F.M
A5
E dos elevador
G5
Aí sim
Dá um selin`
Pré-Refrão:
C5D5
E mostra o seio that you saw
F5A5
Quando eu te vi o meu calção se abriu
D5
Caiu uma lágrima
G5
De um olho
Que se for dos dois, então é namoro
C5
Meu cabelo é ruim
F5
Mas meu terno é de linho
C5
Vou ser seu Salgadinho
F5D5
Cê vai gostar de mim
G5
Se eu tocar no seu radinho
C5
Chora até o fim
F5
Só pra rimar com im
C5
Pois se eu ganhar `din din`
F5D5
Cê vai gostar de mim
G5
Se eu tocar no seu radinho
Interlúdio:C5G5A5(3x)
D5
C5G5A5D5
Segunda Parte:
C5
Por favor, seu locutor
Ao menos uma vez
Melhor se fossem três
F5
Toca o nosso som aí
A5(C5A5C5)
Que tu me faz feliz
D5A5
Se não tocar eu quebro o seu nariz
(C5A5C5)
D5
Se não tocar eu quebro o seu nariz
Solo:C5D5F5A5D5G5
Refrão:
C5
Meu cabelo é ruim
F5
Mas meu terno é de linho
C5
Vou ser seu Salgadinho
F5D5
Cê vai gostar de mim
G5
Se eu tocar no seu radinho
C5
Chora até o fim
F5
Só pra rimar com im
C5
Pois se eu ganhar `din din`
F5D5
Cê vai gostar de mim
G5
Se eu tocar no seu radinho
Só assim pr`eu tocar no seu radim
Final:C5G5A5(3x)
D5
C5G5A5D5")

Song.create!( name: "All Star", artist: "", tags: "rock; Nacional", lyrics: "Estranho seria se eu não me apaixonasse por você
O sal viria doce para os novos lábios

Colombo procurou as Índias
Mas a Terra avisto em você
O som que eu ouço
São as gírias do seu vocabulário

Estranho é gostar tanto do seu All Star azul
Estranho é pensar que o bairro das Laranjeiras
Satisfeito, sorri, quando chego ali
E entro no elevador

Aperto o 12, que é o seu andar
Não vejo a hora de te encontrar
Continuar aquela conversa
Que não terminamos ontem
Ficou pra hoje

Estranho, mas já me sinto
Como um velho amigo seu
Seu All Star azul combina
Com o meu, preto, de cano alto

Se o homem já pisou na Lua
Como eu ainda não tenho seu endereço?
O tom que eu canto as minhas músicas
Na sua voz, parece exato

Estranho é gostar tanto do seu All Star azul
Estranho é pensar que o bairro das Laranjeiras
Satisfeito, sorri, quando chego ali
E entro no elevador

Aperto o 12, que é o seu andar
Não vejo a hora de te encontrar
Continuar aquela conversa
Que não terminamos ontem

Ficou nas Laranjeiras
Satisfeito, sorri, quando chego ali
E entro no elevador

Aperto o 12, que é o seu andar
Não vejo a hora de te encontrar
E continuar aquela conversa
Que não terminamos ontem
Ficou pra hoje
Hoje, hoje, hoje")

Song.create!( name: "Anjos Rappa", artist: "", tags: "rock; Nacional", lyrics: "[Intro]GF#mEmBm
GF#mEmBm
GF#mEmBm
Oh Lord, oh Lord, oh Lord, oh
Lord, Lord, Lord, Lord, Lord, Lord
GF#mEmBm
Oh Lord, oh Lord, oh Lord, oh
Lord, Lord, Lord, Lord, Lord, Lord
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem fim
Não tem fim, é
GF#mEm
Se você não aceita o con__selho, te respeito
Bm
Resolveu seguir, ir atrás, cara e coragem
GF#mEm
Só que você sai em desvan__tagem
Bm
Se você não tem fé, se você não tem fé
G
Te mostro um trecho
F#mEm
Uma passagem de um livro antigo
Bm
Pra te provar e mostrar que a vida é linda
GF#mEm
Dura, sofrida, carente   em qualquer continente
Bm
Mas boa de se viver em qualquer lugar, é
GF#mEmBm
Volte a bri______lhar, volte a brilhar
GF#mEm
Um vinho, um pão e uma  reza
Bm
Uma lua e um sol, sua vida, portas abertas
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem fim
Não tem fim
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem fim
GF#mEmBm
Oh Lord, oh Lord, oh Lord, oh
Lord, Lord, Lord, Lord, Lord, Lord
GF#mEmBm
Oh Lord, oh Lord, oh Lord, oh
Lord, Lord, Lord, Lord, Lord, Lord
G
Mostro um trecho
F#mEm
Uma passagem de um livro antigo
Bm
Pra te provar e mostrar que a vida é linda
GF#mEm
Dura, sofrida, carente   em qualquer continente
Bm
Mas boa de se viver em qualquer lugar
GF#mEm
Podem até gri__tar, gritar
Bm
Podem até barulho então fazer
GF#mEm
Ninguém vai te escu__tar se não tem fé
Bm
Ninguém mais vai te ver
GF#mEmBm
Inclinar seu o__lhar sobre nós e cuidar
GF#mEmBm
Inclinar seu o__lhar sobre nós e cuidar
GF#mEmBm
Inclinar seu o__lhar sobre nós e cuidar
GF#mEmBm
Inclinar seu o__lhar sobre nós e cuidar
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem
[Solo]GF#mEmBm[6x]
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem fim
Não tem fim
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem fim
(GF#mEmBm)
A fé na vitória tem que ser inabalável
(GF#mEmBm)
(GF#mEmBm)
GF#mEmBm
Pra você      pode ser
GF#mEmBm
Pra você      pode ser
GF#mEmBm
Pra você      pode ser
GF#mEm
Em algum lugar, pra re__laxar
Bm
Eu vou pedir pros anjos cantarem por mim
G
Pra quem tem fé
F#mEmBm
A vi______da nunca tem fim
Não tem fim")

Song.create!( name: "Anna Júlia", artist: "", tags: "rock; Nacional", lyrics: "Tom:D
[Intro]DBmF#mGA
[Primeira Parte]
DBmF#m
Quem te ver passar assim por mim não
GAD
sabe o que é sofrer
BmF#mGA
Ter que ver você assim   sempre tão linda
DBmF#mGA
Contemplar o sol do teu olhar perder você no ar
DBmF#mGABm
Na certeza de um amor   me achar um nada
[Pré-Refrão]
F#mG
Pois sem ter teu carinho eu me sinto sozinho
A
Eu me afogo em solidão
[Refrão]
DGA
Ô Anna Julia
DGA
Ô Anna Julia
DBmF#mGAD
Nunca acreditei na ilusão de ter você pra mim
BmF#mGA
Me atormenta a previsão do nosso destino
DBmF#m
Eu passando o dia a te esperar,
GAD
você sem me notar
BmF#mGABm
Quando tudo tiver fim, você vai estar com um cara
[Pré-Refrão]
F#mG
Um alguém sem carinho será sempre um espinho
A
Dentro do meu co...ra...ção
[Refrão]
DGA
Ô Anna Julia
DGA
Ô Anna Julia
BmF#mGD
Sei que você já não quer o meu amor
BmF#mGD
Sei que você já não gosta de mim
BmF#mGD
Eu sei que eu não sou quem você sempre sonhou
BmF#mGA
Mas vou reconquistar o seu amor todo pra mim
[Refrão]
DGA
Ô Anna Julia
DGA
Ô Anna Julia
DGA
Ô Anna Julia
DGAD
Ô Anna Julia, Julia, Julia...ou ou ou")

Song.create!( name: "Astronauta de Mármore", artist: "", tags: "rock; Nacional", lyrics: "Tom:Dm
[Intro]BbF
Gm
A lua inteira agora é um manto negro
F
O fim das vozes no meu rádio
CC7FG#A#
São quatro ciclos no escuro deserto do céu
Gm
Quero um machado pra quebrar o gelo
F
Quero acordar do sonho agora mesmo
CC7AG
Quero uma chance de tentar viver sem dor
[Refrão]
FDm
Sempre estar lá, e ver ele voltar
AmC
Não era mais o mesmo, mas estava em seu lugar
FDm
Sempre estar lá, e ver ele voltar
AmC
O tolo teme a noite, como a noite vai temer o fogo
BbBbm
Vou chorar sem medo
FDm
Vou lembrar do tempo
GmCBb
De onde eu via o mundo azul
[Solo]BbFCF
BbFC
[Tab - Solo]
[Segunda Parte]
Gm
A trajetória escapa o risco nú
F
As nuvens queimam o céu, nariz azul
CC7FG#A#
Desculpe estranho, eu voltei mais puro do céu
Gm
Na lua o lado escuro é sempre igual
F
No espaço a solidão é tão normal
CC7AG
Desculpe estranho, eu voltei mais puro do céu
[Refrão]
FDm
Sempre estar lá, e ver ele voltar
AmC
Não era mais o mesmo, mas estava em seu lugar
FDm
Sempre estar lá, e ver ele voltar
AmC
O tolo teme a noite, como a noite vai temer o fogo
BbBbm
Vou chorar sem medo
FDm
Vou lembrar do tempo
GmCBb
De onde eu via o mundo azul
FDm
Sempre estar lá, e ver ele voltar
AmC
Não era mais o mesmo, mas estava em seu lugar
FDm
Sempre estar lá, e ver ele voltar
AmC
O tolo teme a noite, como a noite vai temer o fogo
BbBbm
Vou chorar sem medo
FDm
Vou lembrar do tempo
GmCBb
De onde eu via o mundo azul
[Final]BbFCF
BbFCF")

Song.create!( name: "Asa Branca", artist: "", tags: "rock; Nacional", lyrics: "Tom:G
Intro 3x:GFG
GC
Quando olhei a terra ardendo
GC
Qual fogueira de São João
GC
(Eu perguntei a Deus do céu, ai
DG
Por quê tamanha judiação) (2x)
GD
Que braseiro, que fornaia
GC
Nem um pé de plan-ta-ção
GC
(Por farta d`água perdi meu gado
DG
Morreu de sede, meu alazão) (2x)
GC
Inté mesmo a asa branca
GC
Bateu asas do  sertão
GC
(entonce eu disse, adeus Rosinha
DG
Guarda contigo meu coração) (2x)
GC
Hoje longe muitas léguas
GC
Nessa triste so-li-dão
GC
(Espero a chuva cair de novo
DG
Pra mim voltá pro meu sertão) (2x)
GC
Quando o verde dos teus olhos
GC
Se espalhar na plan-ta-ção
GC
(Eu te asseguro, nao chores não, viu?
DG
Que eu vortarei, viu, meu coração)2X")

Song.create!( name: "Ate quando esperar", artist: "", tags: "rock; Nacional", lyrics: "Não é nossa culpa
Nascemos já com uma bênção
Mas isso não é desculpa
Pela má distribuição

Com tanta riqueza por aí, onde é que está?
Cadê sua fração?
Com tanta riqueza por aí, onde é que está?
Cadê sua fração?
Até quando esperar?

E cadê a esmola
Que nós damos sem perceber
Que aquele abençoado
poderia ter sido você?

Com tanta riqueza por aí, onde é que está?
Cadê sua fração?
Com tanta riqueza por aí, onde é que está?
Cadê sua fração?

Até quando esperar a plebe ajoelhar
Esperando a ajuda de Deus?
Até quando esperar a plebe ajoelhar
Esperando a ajuda de Deus?

Posso vigiar seu carro?
Te pedir trocados?
Engraxar seus sapatos?
Posso vigiar seu carro?
Te pedir trocados?
Engraxar seus sapatos?

Sei
Não é nossa culpa
Nascemos já com uma bênção
Mas isso não é desculpa
Pela má distribuição

Com tanta riqueza por aí, onde é que está?
Cadê sua fração?

Até quando esperar a plebe ajoelhar
Esperando a ajuda de Deus?
Até quando esperar a plebe ajoelhar
Esperando a ajuda do divino Deus?")

Song.create!( name: "Azul da Cor do Mar", artist: "", tags: "rock; Nacional", lyrics: "Ah, se o mundo inteiro me pudesse ouvir
Tenho muito pra contar, dizer que aprendi
E, na vida, a gente tem que entender
Que um nasce pra sofrer enquanto o outro ri

Mas quem sofre sempre tem que procurar
Pelo menos vir a achar razão para viver
Ver na vida algum motivo pra sonhar
Ter um sonho todo azul, azul da cor do mar

Mas quem sofre sempre tem que procurar
Pelo menos vir a achar razão para viver
Ver na vida algum motivo pra sonhar
Ter um sonho todo azul, azul da cor do mar")

Song.create!( name: "Ainda É Cedo", artist: "", tags: "rock; Nacional", lyrics: ".Tom:Dm
[Intro]DmCAm7
DmCAm7
[Primeira Parte]
Dm
Uma menina me ensinou
CAm7
Quase tudo que eu sei
Dm
Era quase escravidão
CAm7
Mas ela me tratava como um rei
Dm
Ela fazia muitos planos
CAm7
Eu só queria estar ali
Dm
Sempre ao lado dela
CAm7
Eu não tinha onde ir
Dm
Mas, egoísta que eu sou
CAm7
Me esqueci de ajudar
Dm
A ela como ela me ajudou
CAm7
E não quis me separar
Dm
Ela também estava perdida
CAm7
E por isso se agarrava a mim também
Dm
E eu me agarrava a ela
CAm7
Porque eu não tinha mais ninguém
[Refrão]
DmCAm7
E eu dizia: Ainda é cedo, cedo, cedo, cedo, cedo
DmCAm7
E eu dizia: Ainda é cedo, cedo, cedo, cedo, cedo
DmCAm7
Ah eu dizia: Ainda é cedo, cedo, cedo, cedo, cedo
DmCAm7
Ah eu dizia: Ainda é cedo
(DmCAm7)
(DmCAm7)
[Segunda Parte]
Dm
Sei que ela terminou
CAm7
O que eu não comecei
Dm
E o que ela descobriu
CAm7
Eu aprendi também, eu sei
Dm
Ela falou: - Você tem medo
CAm7
Aí eu disse: - Quem tem medo é você
Dm
Falamos o que não devia
CAm7
Nunca ser dito por ninguém
Dm
Ela me disse: - Eu não sei
CAm7
Mais o que eu  sinto por você
DmCAm7
Vamos dar um tempo, um dia a gente se vê
[Refrão]
DmCAm7
E eu dizia: Ainda é cedo, cedo, cedo, cedo, cedo
DmCAm7
E eu dizia: Ainda é cedo, cedo, cedo, cedo, cedo
DmCAm7
Ah eu dizia: Ainda é cedo, cedo, cedo, cedo, cedo
DmCAm7
Ah eu dizia: Ainda é cedo")

Song.create!( name: "Bete balanço / Mania", artist: "", tags: "rock; Nacional", lyrics: "Pode seguir a tua estrela
O teu brinquedo de star
Fantasiando um segredo
No ponto onde quer chegar

O teu futuro é duvidoso
Eu vejo grana, eu vejo dor
No paraíso perigoso
Que a palma da tua mão mostrou

Quem vem com tudo não cansa
Bete balanço, meu amor
Me avise quando for a hora

Não ligue pra essas caras tristes
Fingindo que a gente não existe
Sentadas, são tão engraçadas
Donas das suas salas

Pode seguir a tua estrela
O teu brinquedo de star
Fantasiando um segredo
No ponto onde quer chegar

O teu futuro é duvidoso
Eu vejo grana, eu vejo dor
No paraíso perigoso
Que a palma da tua mão mostrou

Quem vem com tudo não cansa
Bete balanço, meu amor
Me avise quando for a hora, é

Quem tem um sonho não dança
Bete balanço, por favor
Me avise quando for embora")

Song.create!( name: "Camila, Camila", artist: "", tags: "rock; Nacional", lyrics: "Depois da última noite de festa
Chorando e esperando amanhecer, amanhecer
As coisas aconteciam com alguma explicação
Com alguma explicação

Depois da última noite de chuva
Chorando e esperando amanhecer, amanhecer
Às vezes peço a ele que vá embora
Que vá embora

Camila
Camila, Camila

Eu que tenho medo até de suas mãos
Mas o ódio cega e você não percebe
Mas o ódio cega

E eu que tenho medo até do seu olhar
Mas o ódio cega e você não percebe
Mas o ódio cega

A lembrança do silêncio
Daquelas tardes, daquelas tardes
Da vergonha do espelho
Naquelas marcas, naquelas marcas

Havia algo de insano
Naqueles olhos, olhos insanos
Os olhos que passavam o dia
A me vigiar, a me vigiar

Camila
Camila, Camila

Camila
Camila, Camila

E eu que tinha apenas dezessete anos
Baixava a minha cabeça pra tudo
Era assim que as coisas aconteciam
Era assim que eu via tudo acontecer

E eu que tinha apenas dezessete anos
Baixava a minha cabeça pra tudo
Era assim que as coisas aconteciam
E era assim que eu via tudo acontecer

Camila
Camila

Camila
Camila, Camila")

Song.create!( name: "Ceu Azul", artist: "", tags: "rock; Nacional", lyrics: "F#m7(9)E
Tão natural quanto a luz do dia
C#mB11
Mas que preguiça boa me deixa aqui a toa
F#m7(9)E
Hoje ninguém vai estragar meu dia
C#mB11
Só vou gastar energia pra beijar sua boca
F#m7(9)E
Fica comigo então   não me abandona não
C#mB11F#m7(9)E
Alguém te perguntou como é que foi seu dia
C#mB11
Uma palavra amiga, uma notícia boa
F#m7(9)E
Isso faz falta no dia a dia
C#mB11
A gente nunca sabe quem são essas pessoas
[Pré-Refrão]
F#mC#m11
Eu só queria te lembrar
B9
Que aquele tempo eu não podia fazer mais por nós
AB9
Eu estava errado e você não tem que me perdoar
F#mC#m11
Mas também quero te mostrar
B9
Que existe um lado bom nessa história
AB9
Tudo que ainda temos a compartilhar
[Refrão]
B9F#m7(9)E
E viver,  e cantar
C#mB11
Não importa qual seja o dia
F#m7(9)E
Vamos viver,    vadiar
C#mB11
O que importa é nossa alegria
F#m7(9)E
Vamos viver,  e cantar
C#mB11
Não importa qual seja o dia
F#m7(9)E
Vamos viver,    vadiar
C#mB11
O que importa é nossa alegria
[Primeira Parte]
F#m7(9)E
Tão natural quanto a luz do dia
C#mB11
Mas que preguiça boa me deixa aqui a toa
F#m7(9)E
Hoje ninguém vai estragar meu dia
C#mB11
Só vou gastar energia pra beijar sua boca
[Pré-Refrão]
F#mC#m11
Eu só queria te lembrar
B9
Que aquele tempo eu não podia fazer mais por nós
AB9
Eu estava errado e você não tem que me perdoar
F#mC#m11
Mas também quero te mostrar
B9
Que existe um lado bom nessa história
AB9
Tudo que ainda temos a compartilhar
[Refrão]
F#m7(9)E
E viver,  e cantar
C#mB11
Não importa qual seja o dia
F#m7(9)E
Vamos viver,    vadiar
C#mB11
O que importa é nossa alegria
F#m7(9)E
Vamos viver,  e cantar
C#mB11
Não importa qual seja o dia
F#m7(9)E
Vamos viver,    vadiar
C#mB11
O que importa é nossa alegria
[Final]
F#m7(9)
Tão natural quanto a luz do dia")

Song.create!( name: "Dias de Luta, Dias de Glória", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
[Intro]
C7MAmEm
Canto a minha vida com orgulho
[Primeira Parte]
C7MAm
Na minha vida tudo acontece
Em
Mas quanto mais a gente rala, mais a gente cresce
C7MAm
Hoje estou feliz porque eu sonhei com você
EmG
E amanhã posso chorar por não poder te ver
C7MAm
Mas    o seu sorriso vale mais que um diamante
Em
Se você vier comigo aí nós vamos adiante
C7MAm
Com a cabeça erguida e mantendo a fé em Deus
EmG
O seu dia mais feliz vai ser o mesmo que o meu
C7MAm
A vida me ensinou a nunca desistir
Em
Nem ganhar, nem perder mas procurar evoluir
C7MAm
Podem me tirar tudo o que tenho
EmG
Só não podem me tirar as coisas boas
C7M
Que eu já fiz pra quem eu amo
AmEm
Eu sou feliz e canto e o universo é uma canção
G
E eu vou que vou
[Refrão]
C7MAm
Histórias, nossas histórias
Em
Dias de luta, dias de glória
C7MAm
Histórias, nossas histórias
EmG
Dias de luta, dias de glória
C7MAm
Histórias, nossas histórias
EmG
Dias de luta, dias de glória
C7MAm
Histórias, nossas histórias
EmG
Dias de luta, dias de glória
[Segunda Parte]
C7MAm
Oh minha gata, morada dos meus sonhos
Em
Todo dia, se pudesse eu ia estar com você
C7MAm
Já te via muito antes nos meus sonhos
EmG
Eu procurei a vida inteira por alguém como você
C7MAm
Por isso eu canto a minha vida com orgulho
Em
Com melodia, alegria e barulho
C7MAm
Eu sou feliz e rodo pelo mundo
EmG
Sou correria mas também sou vagabundo
C7MAm
Mas hoje dou valor de verdade
EmG
pra minha saúde, pra minha liberdade
C7MAm
Que bom te encontrar nessa cidade
Em
Esse brilho intenso me lembra você
[Refrão]
C7MAm
Histórias, nossas histórias
EmG
Dias de luta, dias de glória
C7MAm
Histórias, nossas histórias
Em
Dias de luta, dias de glória (2x)
[Final]
C7MAm
Hoje estou feliz, acordei com o pé direito
EmGC7M
Eu vou fazer de novo, vou fazer muito bem feito
Am
Sintonia, telepatia
Em
Comunicação pelo cortéx
(C7MAmEmGC7MAmEm)
Bum baibai")

Song.create!( name: "Do seu lado", artist: "", tags: "rock; Nacional", lyrics: "Tom:G
Intro 4x:D5(9)
D5(9)Am7C9D5(9)
La La La La La La La La La La La La
Am7C9G/BD5(9)
La La La La La La La La La La La La
Primeira parte:
D5(9)
Faz muito tempo, mas eu me lembro
Am7
você implicava comigo
C9
Mas hoje vejo que tanto tempo
D5(9)
me deixou muito mais calmo
O meu comportamento egoísta
Am7
Seu temperamento difícil
C9G
Você me achava meio esquisito
D5(9)
Eu te achava tão chata
Segunda parte:
C9G
Mas tudo que acontece na vida
D5(9)
tem um momento e um destino
C9G
Viver é uma arte, é um ofício,
D5(9)
só que precisa cuidado
C9G
Pra perceber que olhar só pra dentro
D5(9)
é o maior desperdício
Em7GD5(9)
O teu amor pode estar do seu lado
Refrão:
D5(9)Am7C9D5(9)
O amor é o calor que aquece a alma
Am7C9GD5(9)
O amor tem sabor pra quem bebe a sua água
Repetição:
D5(9)
E hoje mesmo eu quase não lembro
Am7
que já estive sozinho
C9
que um dia seria seu marido,
D5(9)
seu príncipe encantado
Ter filhos, nosso apartamento
Am7
fim de semana no sítio
C9G/B
ir ao cinema todo domingo
D5(9)
só com você ao meu lado
(repete segunda parte)
C9G
Mas tudo que acontece na vida
D5(9)
tem um momento e um destino
C9G
Viver é uma arte, é um ofício,
D5(9)
só que precisa cuidado
C9G
Pra perceber que olhar só pra dentro
D5(9)
é o maior desperdício
Em7GD5(9)
O teu amor pode estar do seu lado
Refrão:
D5(9)Am7C9D5(9)
O amor é o calor que aquece a alma
Am7C9GD5(9)
O amor tem sabor pra quem bebe a sua água
D5(9)Am7C9D5(9)
La La La La La La La La La La La La
Am7C9G/BD5(9)
La La La La La La La La La La La La
Refrão:
D5(9)Am7C9D5(9)
O amor é o calor que aquece a alma
Am7C9GD5(9)
O amor tem sabor pra quem bebe a sua água
D5(9)Am7C9D5(9)
O amor é o calor que aquece a alma
Am7C9
O amor tem sabor pra quem bebe
GG/F#C9D5(9)
a sua água")

Song.create!( name: "Enquanto Ela Não Chegar", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
[Intro]GG9GG9C7MC6/EC7MC6/E
GG9GG9C7MC6/EC7MC6/E
GG9GG9
Quantas coisas eu ainda vou provar
C7MC6/EC7MC6/E
E quantas vezes para a porta eu vou olhar
G7M
Quantos carros nessa rua vão passar
C7MC6/EC7MC6/E
Enquanto ela não chegar
GG9GG9
Quantos dias eu ainda vou esperar
C7MC6/EC7MC6/E
E quantas estrelas eu vou tentar contar
G7M
E quantas luzes na cidade vão se apagar
C7MC6/EC7MC6/E
Enquanto ela não chegar
Am7
Eu tenho andado tão sozinho
GEm
Que eu nem sei no que acreditar
Am7
E a paz que busco agora
CC7M
Nem a dor vai me negar
G
Não deixe o sol morrer
B7Em
Errar é aprender
Eb
Viver é deixar viver
GB7
Não deixe o sol morrer
Em
Errar é aprender
Eb
Viver é deixar viver
GG9GG9
Quantas besteiras eu ainda vou pensar
C7MC6/EC7MC6/E
E quantos sonhos no tempo vão se esfarelar
G7M
Quantas vezes vou me criticar
C7MC6/EC7MC6/E
Enquanto ela não chegar
Am7
Eu tenho andado tão sozinho
GEm
Que eu nem sei no que acreditar
Am7
E a paz que busco agora
CC7M
Nem a dor vai me negar
G
Não deixe o sol morrer
B7Em
Errar é aprender
Eb
Viver é deixar viver
G
Não deixe o sol morrer
B7
Errar é aprender
EmEb
Viver é deixar, é deixar
GB7
É deixar viver
EmEb
É deixar viver
[Solo]GB7Em
Eb
Viver é deixar viver
GB7EmEb
Uuu..uuu
G
Não deixe o sol morrer
B7EmEb
Errar é aprender
G
Não deixe o sol morrer
B7
Errar é aprender
EmEbG
Viver é deixar viver
(GC)G
Uuuu")

Song.create!( name: "Envelheço na cidade", artist: "", tags: "rock; Nacional", lyrics: "Mais um ano que se passa
Mais um ano sem você
Já não tenho a mesma idade
Envelheço na cidade

Essa vida é jogo rápido
Para mim ou pra você
Mais um ano que se passa
Eu não sei o que fazer

Juventude se abraça
Se une para esquecer
Um feliz aniversário
Para mim ou pra você

Feliz aniversário
Envelheço na cidade
Feliz aniversário
Envelheço na cidade

Feliz aniversário
Envelheço na cidade
Feliz aniversário

Meus amigos, minha rua
As garotas da minha rua
Não os sinto, não os tenho
Mais um ano sem você

As garotas desfilando
Os rapazes a beber
Já não tenho a mesma idade
Não pertenço a ninguém

Juventude se abraça
Se une para esquecer
Um feliz aniversário
Para mim ou pra você

Feliz aniversário
Envelheço na cidade
Feliz aniversário
Envelheço na cidade
Feliz aniversário
Envelheço na cidade
Feliz aniversário")

Song.create!( name: "Equalize", artist: "", tags: "rock; Nacional", lyrics: "Em7 dedilhado
DD/C#Bm
As vezes se eu me distraio
E
Se eu não me vigio um instante
F#mD
Me transporto pra perto de você
D/C#Bm
Já vi que não posso ficar tão solta
E
Me vem logo aquele cheiro
F#m
Que passa de você pra mim
GA
Num fluxo perfeito
Em
Enquanto você conversa e me beija
Ao mesmo tempo eu vejo
D
As suas cores no seu olho tão de perto
Em
Me balanço devagar
Como quando você me embala
G
O ritmo rola fácil
ABm
Parece que foi ensaiado
[Segunda Parte]
BmA
E eu acho que eu gosto mesmo de você
GG7
Bem do jeito que você é
[Refrão]
DBmDBm
Eu vou equalizar você
DBmAG
Numa freqüência que só a gente sabe
DBmDBm
Eu te transformei nessa canção
DBmAGD
Pra poder te gravar em mim
[Repete a Primeira Parte]
DD/C#Bm
Adoro essa sua    cara de sono
E
E o timbre da sua voz
F#mD
Que fica me dizendo coisas tão malucas
D/C#Bm
E que quase me mata de rir
E
Quando tenta me convencer
F#m
Que eu só fiquei aqui
GA
Porque nós dois somos iguais
Em
Até parece que você já tinha
O meu manual de instruções
D
Porque você decifra os meus sonhos
Em
Porque você sabe o que eu gosto
E porque quando você me abraça
GA
O mundo gira devagar
[Terceira Parte]
EmD
E o tempo é só meu
Em
E ninguém registra a cena
D
De repente vira um filme
Bm
Todo em câmera lenta
[Repete a Segunda Parte]
BmA
E eu acho que eu gosto mesmo de você
GG7
Bem do jeito que você é
[Refrão Final]
DBmDBm
Eu vou equalizar você
DBmAG
Numa freqüência que só a gente sabe
DBmDBm
Eu te transformei nessa canção
DBmAG
Pra poder te gravar em mim
DBmDBm
Eu vou equalizar você
DBmAG
Numa freqüência que só a gente sabe
DBmDBm
Eu te transformei nessa canção
DBmAGD
Pra poder te gravar em mim
G|---------------------------7--
D|-------------------7-7-7h9----
A|-----------5-5-7/9------------
E|-3-3-3-5/7--------------------")

Song.create!( name: "Eu Só Quero Um Xodó", artist: "", tags: "rock; Nacional", lyrics: "Tom:F
[Intro]Bb7FC7F
FDmAm
Que falta eu sinto de um bem
GmC7FC
Que falta me faz um xodó
FDmAm
Mas como eu não tenho ninguém
GmC7F
Eu levo a vida assim tão só
CmF
Eu só quero um amor
CmG7
Que acabe o meu sofrer
DmG7
Um xodó pra mim
DmG7
Do meu jeito assim
BbC7F
Que alegre o meu viver
(Bb7FC7F)")

Song.create!( name: "Eu Quero Sempre Mais", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
E|--0   0   0 ---------------
B|-1-0-1-3-1-0--1-0-1-3-1-0–
Intro 2x:CAmG
Primeira Parte:
C
A minha vida
FG
Eu preciso mudar todo dia
C
Pra escapar
F
Da rotina dos meus desejos
G
Por seus beijos
C
E os meus sonhos
Eu procuro acordar
FG
E perseguir meus sonhos
C
Mas a realidade que vem depois
FG
Não é bem aquela que planejei
Refrão:
G
Eu quero sempre mais
G
Eu quero sempre mais
G
Eu quero sempre mais
De ti
Repete Intro 2x:CAmG
Segunda Parte:
C
Por isso hoje
Estou tão triste
F
Por que querer está
GC
Tão longe de poder
F
E quem eu quero
G
Está tão longe
Refrão:
C
Longe de mim
(f f) G
Longe de mim
(f f) G
Longe de mim
(f f) G
Longe de mim
Repete Intro 2x:CAmG
Primeira Parte:
C
A minha vida
FG
Eu preciso mudar todo dia
C
Pra escapar
F
Da rotina dos meus desejos
G
Por seus beijos
C
E os meus sonhos
Eu procuro acordar
FG
E perseguir meus sonhos
C
Mas a realidade que vem depois
FG
Não é bem aquela que planejei
Refrão:
(f f) G
Eu quero sempre mais
(f f) G
Eu quero sempre mais
(f f) G
Eu quero sempre mais
De ti
Repete Intro 2x:CAmG
Segunda Parte:
C
Por isso hoje
Estou tão triste
F
Por que querer está
GC
Tão longe de poder
F
E quem eu quero
G
Está tão longe
Refrão:
C
Longe de mim
G
Longe de mim
G
Longe de mim
GCAmG
Longe de mim
CAmG
Longe de mim
C
Longe de mim")

Song.create!( name: "Evidencias", artist: "", tags: "rock; Nacional", lyrics: "[Intro]C
2x | C   C  |
[Primeira Parte]
CG/B
Quando eu digo que deixei de te amar
Am7C7
É porque eu te amo
F
Quando eu digo que não quero
A/E
Mais você
Dm                Dm
É porque eu te quero
G7
Eu tenho medo de te dar meu
G#º
Coração
Am7
E confessar   que eu estou
Am7/G
Em tuas mãos
DC/E
Mas não posso imaginar
D/F#
O que vai ser de mim
GF/AG/B
Se eu te perder um dia
[Segunda Parte]
C
Eu me afasto e me defendo
G/B
De você
AmC7
Mas depois me entrego
F
Faço tipo, falo coisas que
A7
Eu não sou
Dm
Mas depois eu nego
G7
Mas a verdade é que eu sou
G#º
Louco por você
Am
E tenho medo de pensar
Fm
Em te perder
CG
Eu preciso aceitar que não dá mais
CG
Pra separar as nossas vidas
[Refrão]
C
E nessa loucura de dizer
Que não te quero
E
Vou negando as aparências
Disfarçando as evidências
F
Mas pra que viver fingindo
Dm
Se eu não posso enganar
G7
Meu coração
DmG7
Eu sei que te amo
C
Chega de mentiras
De negar o meu desejo
E
Eu te quero mais que tudo
Eu preciso do seu beijo
F
Eu entrego a minha vida
Dm
Pra você fazer o que quiser
G7
De mim
DmG7
Só quero ouvir você dizer
C
Que sim
C5+
Diz que é verdade que tem
FC/E
Saudade
DmG7
Que ainda você pensa muito
C
Em mim
C5+
Diz que é verdade que tem
FC/E
Saudade
DmG7
Que ainda você quer viver
Pra mim
[Solo]AmG#5+C/GD/F#FmF/G
C
Eu me afasto e me defendo
G/B
De você
AmC7
Mas depois me entrego
F
Faço tipo, falo coisas que
A
Eu não sou
Dm
Mas depois eu nego
G7
Mas a verdade é que eu sou
G#º
Louco por você
Am
E tenho medo de pensar
Fm
Em te perder
CG
Eu preciso aceitar que não dá mais
CG
Pra separar as nossas vidas
[Refrão]
C
E nessa loucura de dizer
Que não te quero
E
Vou negando as aparências
Disfarçando as evidências
F
Mas pra que viver fingindo
Dm
Se eu não posso enganar
G7
Meu coração
DmG7
Eu sei que te amo
C
Chega de mentiras
De negar o meu desejo
E
Eu te quero mais que tudo
Eu preciso do seu beijo
F
Eu entrego a minha vida
Dm
Pra você fazer o que quiser
G7
De mim
DmG7
Só quero ouvir você dizer
C
Que sim
C5+
Diz que é verdade que tem
FC/E
Saudade
DmG7
Que ainda você pensa muito
C
Em mim
C5+
Diz que é verdade que tem
FC/E
Saudade
DmG7
Que ainda você quer viver
C
Pra mim
C5+
Diz que é verdade que tem
FC/E
Saudade
DmG7
Que ainda você quer viver
C
Pra mim")

Song.create!( name: "Fátima", artist: "", tags: "rock; Nacional", lyrics: "[Intro]CmAbBb    2x
(Riff)
Parte 1 de 4
Cm
E|------------------------------------------|
B|------------------------------------------|
G|-3-3-3-X-3-5-5~-3-3-3-X-3-5-5~------------|
D|------------------------------------------|
[Primeira Parte]
Cm
Vocês esperam uma intervenção divina
AbBb
Mas não sabem que o tempo agora está contra vocês
Cm
Vocês se perdem no meio de tanto medo
AbBb
De não conseguir dinheiro pra comprar sem se vender
Cm
E vocês armam seus esquemas ilusórios
AbBb
Continuam só fingindo que o mundo ninguém fez
Cm
Mas acontece que tudo tem começo
AbBb
E se começa, um dia acaba, eu tenho pena de vocês
(CmBb5CmEb5)
(CmBb5CmEb5)
(Riff)
Guit   3 - 5
Cm
AbBb
(Riff 2)
Cm
E as ameaças de ataque nuclear
AbBb
Bombas de nêutrons não foi Deus quem fez
Cm
Alguém, alguém um dia vai se vingar
AbBb
Vocês são vermes, pensam que são reis
Cm
Não quero ser como vocês
AbBb
Eu não preciso mais
Cm
Eu já sei o que tenho que saber
AbBb
E agora, tanto faz
(CmAbBb)
(CmEbBb)
(CmAbBb)
[Solo]
Parte 1 de 4
CmEbBb
Riff guit
CmAbBb
CmAbBb
[Terceira Parte]
Cm
Três crianças sem dinheiro e sem moral
AbBb
Não ouviram a voz suave que era uma lágrima
Cm
E se esqueceram de avisar pra todo mundo
AbBb
Ela talvez tivesse nome, e era Fátima
Cm
E de repente o vinho virou água
AbBb
E a ferida não cicatrizou
Cm
E o limpo se sujou e no terceiro dia
AbBb
Ninguém ressuscitou
(CmAbBb)
(CmAbBb)
(CmAbBb)
(CmAbBb)")

Song.create!( name: "Ha tempos", artist: "", tags: "rock; Nacional", lyrics: "Parece cocaína, mas é só tristeza, talvez tua cidade
Muitos temores nascem do cansaço e da solidão
Descompasso, desperdício
Herdeiros são agora da virtude que perdemos
Há tempos tive um sonho
Não me lembro, não me lembro

Tua tristeza é tão exata
E hoje o dia é tão bonito
Já estamos acostumados
A não termos mais nem isso

Os sonhos vêm e os sonhos vão
E o resto é imperfeito
Disseste que se tua voz
Tivesse força igual
À imensa dor que sentes
Teu grito acordaria
Não só a tua casa
Mas a vizinhança inteira

E há tempos nem os santos
Têm ao certo a medida da maldade
E há tempos são os jovens que adoecem
E há tempos o encanto está ausente
E há ferrugem nos sorrisos
Só o acaso estende os braços
A quem procura abrigo e proteção

Meu amor, disciplina é liberdade
Compaixão é fortaleza
Ter bondade é ter coragem
Lá em casa tem um poço
Mas a água é muito limpa")

Song.create!( name: "Infinita highway", artist: "", tags: "rock; Nacional", lyrics: "[Intro]AC#mDE
AC#mDE
[Primeira Parte]
AC#m
Você me faz correr demais
E
Os riscos desta highway
AC#m
Você me faz correr atrás
E
Do horizonte desta highway
AC#m
Ninguém por perto, silêncio no deserto
E
Deserta highway
AC#m
Estamos sós e nenhum de nós
E
Sabe exatamente onde vai parar
[Segunda Parte]
DE
Mas não precisamos saber pra onde vamos
F#m
Nós só precisamos ir
DE
Não queremos ter o que não temos
F#m
Nós só queremos viver
DE
Sem motivos nem objetivos
AC#mF#m
Estamos vivos e isto é tudo
DE
É sobretudo a lei
AC#mDE
Da infinita highway
AC#m
Quando eu vivia e morria na cidade
E
Eu não tinha nada, nada a temer
AC#m
Mas eu tinha medo, medo desta estrada
E
Olhe só, veja você
AC#m
Quando eu vivia e morria na cidade
E
Eu tinha de tudo, tudo ao meu redor
AC#m
Mas tudo que eu sentia era que algo me faltava
EE
E à noite eu acordava banhado em suor
DE
Não queremos lembrar o que esquecemos
F#m
Nós só queremos viver
DE
Não queremos aprender o que sabemos
F#m
Não queremos nem saber
DE
Sem motivos nem objetivos
AC#mF#m
Estamos vivos e é só
DE
Só obedecemos à lei
AC#mDE
Da infinita highway
AC#m
Escute garota, o vento canta uma canção
EE
Dessas que a gente nunca canta sem razão
A
Me diga, garota:
C#m
Será a estrada uma prisão?
EE
Eu acho que sim, você finge que não
AC#m
Mas nem por isso ficaremos parados
E
Com a cabeça nas nuvens
E os pés no chão
AC#m
Tudo bem, garota, não adianta mesmo ser livre
EE
Se tanta gente vive sem ter como viver
DE
Estamos sós e nenhum de nós
F#m
Sabe onde quer chegar
DE
Estamos vivos sem motivos
F#m
Que motivos temos pra estar?
DE
Atrás de palavras escondidas
AC#mF#mDE
Nas entrelinhas do horizonte desta highway
AC#mDE
Silenciosa highway
(AC#mDE)
(AC#mDE)
[Terceira Parte]
AC#m
Eu vejo o horizonte trêmulo
DE
Eu tenho os olhos úmidos
AC#m
Eu posso estar completamente enganado
DE
Eu posso estar correndo pro lado errado
AC#m
Mas a dúvida é o preço da pureza
DE
E é inútil ter certeza
AC#m
Eu vejo as placas dizendo `Não corra`,
DE
`Não morra`,  `Não fume`
AC#m
Eu vejo as placas cortando o horizonte
DE
Elas parecem facas de dois gumes
[Solo]DEF#mDEF#m
DEAC#mF#mDE
AC#mDE
[Quarta Parte]
AC#m
Minha vida é tão confusa quanto a América Central
E
Por isso não me acuse de ser irracional
AC#m
Escute garota, façamos um trato
E
Você desliga o telefone se eu ficar muito abstrato
AC#m
Eu posso ser um Beatle, um beatnik,
E
Ou um bitolado
AC#mE
Mas eu não sou ator, eu não `tô à toa do teu lado
AC#m
Por isso, garota, façamos um pacto
E
De não usar a highway pra causar impacto
D
Cento e dez
E
Cento e vinte
F#m
Cento e sessenta
DEF#m
Só pra ver até quando   o motor agüenta
DE
Na boca, em vez de um beijo, um chiclete de menta
ABmC#mDE
E a sombra de um sorriso que eu deixei
ADA
Numas das curvas da highway,  highway
EADA
Infinita highway, highway
EADA
Silenciosa highway,  highway")

Song.create!( name: "Jesus numa Moto", artist: "", tags: "rock; Nacional", lyrics: "LOGO VIDEO
Mi Mi  Sol Mi Sol Mi….…. Mi Do Si La Si Mi
Em
Preso nessa cela
G
De ossos, carne e sangue
CG
Dando ordens a quem não sabe
B7
Obedecendo a quem tem
Em
Só espero a hora
G
Em que o mundo estanque
CG
Para me aproveitar do conforto de não ser mais
B7
Ninguém
C
Eu vou virar a própria mesa
G
Quero uivar numa nova alcatéia
CAm7
Vou meter um marlon brando nas idéias
B7
E sair por aí
C
Pra ser Jesus numa moto           (batera)
G
Che Guevara dos acostamentos
A
Bob Dylan numa antiga foto
B7
Cassius Clay antes dos tratamentos
C
John Lennon de outras estradas
G
Easy rider, dúvida e eclipse
A
São Thomé das letras apagadas
B7
E Arcanjo Gabriel sem apocalipse
Em
Nada no passado
G
Tudo no futuro
CG
Espalhando o que já está morto
B7
Pro que é vivo crescer
Em
Sob a luz da Lua
G
Mesmo com o sol claro
CG
Não me importa o preço que eu pague
B7
O meu negócio é viver
(Refrão)
SOLO
C
Eu vou virar a própria mesa
G
Quero uivar numa nova alcatéia(nova alcateia)
CAm7
Vou meter um marlon brando nas idéias
B7
E sair por aí
C
Pra ser Jesus numa moto           (batera Para)
G
Che Guevara dos acostamentos
A
Bob Dylan numa antiga foto
B7
Cassius Clay antes dos tratamentos
C
John Lennon de outras estradas
G
Easy rider, dúvida e eclipse
A
São Thomé das letras apagadas
B7
E Arcanjo Gabriel sem apocalipse
Solinho
Em                   Em
Sob a luz da Lua
G                      G
Mesmo com o sol claro
CG
Preso nesta sela")

Song.create!( name: "Lanterna dos afogados", artist: "", tags: "rock; Nacional", lyrics: "Quando tá escuro
E ninguém te ouve
Quando chega a noite
E você pode chorar
Há uma luz no túnel
Dos desesperados
Há um cais de porto
Pra quem precisa chegar

Eu tô na lanterna
Dos afogados
Eu tô te esperando
Vê se não vai demorar, ô, ô

Uma noite longa
Pra uma vida curta
Mas já não me importa
Basta poder te ajudar
E são tantas marcas
Que já fazem parte
Do que eu sou agora
Mas ainda sei me virar

Eu tô na lanterna
Dos afogados
Eu tô te esperando
Vê se não vai demorar, ô, ô

Uma noite longa
Pra uma vida curta
Mas já não me importa
Basta poder te ajudar

Eu tô na lanterna
Dos afogados
Eu tô te esperando, ô")

Song.create!( name: "Lugar Ao Sol", artist: "", tags: "rock; Nacional", lyrics: "E|-------------------------3-----6
-B|---3-----------------3-----3-6-
G|-------3-5---5---3-5------------
D|-5---5-----3---3----------------
A|-----------------------6--------
E|---------------------------------
D#7M
E|-----------------------3----
B|---3-----------------3-3----
G|-------3-5---5---3-5---3----
D|-5---5-----3---3-------5----
A|-----------------------6----
E|----------------------------
GmF9
Que bom viver, como é bom sonhar
D#7M
E o que ficou pra trás passou
GmF9
E eu não me importei, foi até melhor
D#7M
Tive que pensar em algo novo que eu fizesse sentido
GmF9
Ainda vejo o mundo com os olhos de criança
D#7M
Que só quer brincar e não tanta `responsa`
GmF9D#7M
Mas a vida cobra sério e realmente não dá pra fugir
[Refrão]
A#7M(9)
Livre pra poder sorrir (sim)
G5D#5
Livre pra poder buscar
A#7M(9)D#9D#m7Gb7MGb5
O meu lugar ao Sol
A#7M(9)
Livre pra poder sorrir (sim)
G5D#5
Livre pra poder buscar
A#7M(9)D#9D#m7Gb7MGb5
O meu lugar ao Sol
[Primeira Parte]
GmF9
Um dia eu espero te reencontrar
D#7M
Numa bem melhor, cada um tem seu caminho
GmF9
Eu sei que foi até melhor
D#7M
Irmãos do mesmo Cristo, quero e não desisto
Gm
Caro pai como é bom
F9D#7M
Ter com o que se orgulhar a vida pode passar, não estou sozinho
Gm
Eu sei se eu tiver fé
F9D#7M
Eu volto até sonhar
[Refrão]
A#7M(9)
Livre pra poder sorrir (sim)
G5D#5
Livre pra poder buscar
A#7M(9)D#9D#m7Gb7MGb5
O meu lugar ao Sol
A#7M(9)
Livre pra poder sorrir (sim)
G5D#5
Livre pra poder buscar
A#7M(9)D#9D#m7Gb7MGb5
O meu lugar ao Sol
[Segunda Parte]
GmF9
O amor é assim
D#7M
É a paz de Deus em sua casa
GmF9
O amor é assim
D#7M
A paz de Deus e nunca acaba
GmF9
O amor é assim
D#7M
É a paz de Deus em sua casa
GmF9
O amor é assim
D#7M
É a paz de Deus que nunca acaba
(C9D#9)
(C9D#9)
(C9D#9)
(GmF9)
(GmF9)
(D#7MGmF9D#7M)
Gm
Nossas vidas, nossos sonhos
F9D#7M
Têm o mesmo valor
Gm
Nossas vidas, nossos sonhos
F9
Têm o mesmo valor
D#7M
Eu vou com você para onde você for
GmF9
Eu descobri que é azul
D#7M
A cor da parede da casa de Deus
GmF9D#7M
E não há mais ninguém como você e eu!")

Song.create!( name: "Liberdade Pra Dentro da Cabeça", artist: "", tags: "rock; Nacional", lyrics: "[Intro] (BmCmC#m7CmBm) (2x)
(Dm7)
[Refrão]
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
[Primeira Parte]
C#m7                        Bm7
Quando você for embora
C#m7                        Bm7
Não precisa me dizer
C#m7                        Bm7
O que eu não quero jogo fora
C#m7                        Bm7
Você pode entender
C#m7                        Bm7
Desigualdades que a luta
C#m7                        Bm7
Afim de encontrar
C#m7                        Bm7
A liberdade que a paz
C#m7                        Bm7
Que a alma
C#m7     C#m7
Precisa ter
Bm7Bm7C#m7Bm7
Oh, Baby
[Segunda Parte]
C#m7
Estar com você
Bm7C#m7
Na virada do sol
Bm7
É compreender
Que o que há de melhor
C#m7Bm7
Tá na vida, na transformação
C#m7Bm7
Da natureza que me traz a noção
C#m7Bm7
Na verdade eu não vou chorar
C#m7Bm7
Hoje sei, o que o terra veio me ensinar
C#m7Bm7
Sobre as coisas que vêm do coração
C#m7
Pra que eu possa trazer
Bm7Dm7
Para mim e pra você
[Repete O Refrão]
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
Repete a Segunda Parte:
C#m7
Estar com você
Bm7C#m7
Na virada do sol
Bm7
É compreender
Que o que há de melhor
C#m7Bm7
Tá na vida, na transformação
C#m7Bm7
Da natureza que me traz a noção
C#m7Bm7
Na verdade eu não vou chorar
C#m7Bm7
Hoje sei, o que o terra veio me ensinar
C#m7Bm7
Sobre as coisas que vêm do coração
C#m7
Pra que eu possa trazer
Bm7Dm7
Para mim e pra você
[Repete O Refrão]
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7Dm7
Liberdade pra dentro da cabeça
AC#m7Bm7
Liberdade pra dentro da cabeça")

Song.create!( name: "Malandragem", artist: "", tags: "rock; Nacional", lyrics: "Intro]DmBbC
[Primeira Parte]
Dm
Quem sabe eu ainda sou
C
Uma garotinha
GmDm
Esperando o ônibus da escola sozinha
C
Cansada com minhas meias três quartos
GmDm
Rezando baixo pelos cantos
CBb
Por ser uma menina má
DmC
Quem sabe o príncipe virou um chato
GmDm
Que vive dando no meu saco
CBb
Quem sabe a vida é não sonhar
[Refrão]
DmC
Eu só peço a Deus
FG
Um pouco de malandragem
DmC
Pois sou criança
FG
E não conheço a verdade
BbCDm
Eu sou poeta e não aprendi a amar
BbCDm
Eu sou poeta e não aprendi a amar
[Segunda Parte]
C
Bobeira não viver a realidade
GmDm
E eu ainda tenho uma tarde inteira
GFCDm
Eu ando nas ruas   eu troco o cheque
BbDm
Mudo uma planta de lugar
GFCDm
Dirijo o meu carro,  tomo o meu pileque
BbDm
E ainda tenho tempo pra cantar
[Refrão]
DmC
Eu só peço a Deus
FG
Um pouco de malandragem
DmC
Pois sou criança
FG
E não conheço a verdade
BbCDm
Eu sou poeta e não aprendi a  amar
BbCDm
Eu sou poeta e não aprendi a  amar
[Solo]CGmDm
[Segunda Parte]
GFCDm
Eu ando nas ruas   eu troco o cheque
BbDm
Mudo uma planta de lugar
GFCDm
Dirijo o meu carro,  tomo o meu pileque
BbDm
E ainda tenho tempo pra cantar
[Refrão]
DmC
Eu só peço a Deus
FG
Um pouco de malandragem
DmC
Pois sou criança
FG
E não conheço a verdade
BbCDm
Eu sou poeta e não aprendi a amar
BbCDm
Eu sou poeta e não aprendi a amar
Dm
Quem sabe ainda sou uma garotinha")

Song.create!( name: "Mania de Você", artist: "", tags: "rock; Nacional", lyrics: "(Am7(11)D7(9)) 2x
Am7(11)D7(9)Am7(11)D7(9)
Meu bem você me dá água na boca
Am7(11)D7(9)Dm7(9)G
Vestindo fantasias, tirando a rou_____pa
Dm7(9)GC7MC7M(6)
Molhada de suor de tanto a gente se beijar
B4(7)B7(11)E7(4)E7
De tanto imaginar  loucu_____ras
Am7(11)D7(9)Am7(11)D7(9)
A gente faz amor por telepatia
Am7(11)D7(9)Dm7(9)G
No chão, no mar, na lua, na melodi_______a
Dm7(9)GC7MC7M(6)
Mania de você de tanto a gente se beijar
B4(7)B7(11)E7(4)E7
De tanto imaginar  loucu_____ras
Refrão:
(Am7(11)D7(9)) 2x
Am7(11)D7(9)
Nada melhor do que não fazer nada
Am7(11)D7(9)
Só pra deitar e rolar com você
Am7(11)D7(9)
Nada melhor do que não fazer nada
Am7(11)D7(9)Dm7(9)G
Só pra deitar e rolar com você
Dm7(9)GC7MC7M(6)B4(7)B7(11)E7(4)E7
Vocalize 4x: Am7(11)  D7(9)")

Song.create!( name: "Mascara  [DROP}", artist: "", tags: "rock; Nacional", lyrics: "[Intro]D5F5D5Ab5
D5F5D5Eb5
D5F5D5Ab5
D5F5D5Eb5
Dm [baixo e Riff]
Diga quem você é, me diga
Me fale sobre a sua estrada
Me conte sobre a sua vida
[Re Fa Agudo]
Dm
Tira a máscara que cobre o seu rosto
Se mostre e eu descubro se eu gosto
Do seu verdadeiro jeito de ser
[Pré-Refrão]
D5Eb5
Ninguém merece ser
D5
Só mais um bonitinho
D5Eb5D5
Nem transparecer,     consciente
D5Eb5
Inconsequente sem
D5
Se preocupar em ser
D5Eb5D5
Adulto ou criança
D5
O importante é ser você
[Refrão]
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja bizarro
D5
Bizarro, bizarro
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja
[Intro]D5F5D5Ab5
D5F5D5Eb5
[Segunda Parte]
Dm
Tira a máscara que cobre o seu rosto
Se mostre e eu descubro se eu gosto
Dm
Do seu verdadeiro jeito de ser
[Pré-Refrão]
D5Eb5
Ninguém merece ser
D5
Só mais um bonitinho
D5Eb5D5
Nem transparecer,     consciente
D5Eb5
Inconsequente sem
D5
Se preocupar em ser
D5Eb5D5
Adulto ou criança
D5
O importante é ser você
[Refrão]
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja bizarro
D5
Bizarro, bizarro
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja
[Ponte descida]Ab5G5        F5D5
Ab5G5        F5D5
O meu cabelo não é igual
A sua roupa não é igual
Ao meu tamanho, não é igual
Ao seu caráter, não é igual
Não é igual, não é igual, não é igual
[Guit LIMPA] Dedilhado Dm
I had enough of it, but I don`t care
I had enough of it, but I don`t care
I had enough of it, but I don`t care
D5
I had enough of it, but I don`t care
[Quarta Parte]
D5F5D5
Diga
Ab5D5F5D5
Quem     você é, me diga
Eb5D5F5D5
Me fale sobre a sua estrada
Ab5D5F5D5
Me conte sobre a sua vida
D5
E o importante é ser você
[Refrão Final]
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja bizarro
D5
Bizarro, bizarro
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja bizarro
D5
Bizarro, bizarro
F5G5
Mesmo que seja    estranho, seja você
Bb5(9)
Mesmo que seja bizarro
D5
Bizarro, bizarro
F5G5
Mesmo que seja estranho, seja você
FIM  descida ]Ab5G5        F5D5
Ab5G5        F5D5")

Song.create!( name: "Metamorfose ambulante", artist: "", tags: "rock; Nacional", lyrics: "Tom:A
[Intro]AGDEA
AGDEA
E|-12--10-9-7-----10-9-7---------9---7------------|
B|------------7----------5--------------------2---|
G|---------------------------7/9---7----------2---|
D|--------------------------------------------2---|
A|------------------------------------------------|
E|------------------------------------------------|
(GDA)
(GDA)
(GDA)
AG
Eu prefiro ser
DA
Essa metamorfose ambulante
G
Eu prefiro ser
DA
Essa metamorfose ambulante
GD
Do que ter aquela velha opinião
A
Formada sobre tudo
GD
Do que ter aquela velha opinião
A
Formada sobre tudo
(GACAGEGEGE)
AG
Eu quero dizer
DA
Agora o oposto do que eu disse antes
G
Eu prefiro ser
DAG
Essa metamorfose ambulante
D
Do que ter aquela velha opinião
AG
Formada sobre tudo
Bb5(9)
Do que ter aquela velha opinião
A
Formada sobre tudo
FC
Sobre o que é o amor
D
Sobre o que eu nem sei quem sou
D
Se hoje eu sou estrela
C
Amanhã já se apagou
D
Se hoje eu te odeio
C
Amanhã lhe tenho amor
D
Lhe tenho amor
C
Lhe tenho horror
D
Lhe faço amor
C
Eu sou um ator
AG
É chato chegar
DA
A um objetivo num instante
G
Eu quero viver
DAG
Nessa metamorfose ambulante
D
Do que ter aquela velha opinião
AG
Formada sobre tudo
Bb
Do que ter aquela velha opinião
A
Formada sobre tudo
FC
Sobre o que é o amor
D
Sobre o que eu nem sei quem sou
D
Se hoje eu sou estrela
C
Amanhã já se apagou
D
Se hoje eu te odeio
C
Amanhã lhe tenho amor
D
Lhe tenho amor
C
Lhe tenho horror
D
Lhe faço amor
C
Eu sou um ator
AG
Eu vou desdizer
DA
Aquilo tudo que eu lhe disse antes
AG
Eu prefiro ser
DA
Essa metamorfose ambulante
G
Eu prefiro ser
DAG
Essa metamorfose ambulante
D
Do que ter aquela velha opinião
AG
Formada sobre tudo
D
Do que ter aquela velha opinião
A
Formada sobre tudo
D
Do que ter aquela velha opinião
AG
Formada sobre tudo
D
Do que ter aquela velha opinião
A
Formada sobre tudo")

Song.create!( name: "Meu Erro", artist: "", tags: "rock; Nacional", lyrics: "CEm7
Eu quis dizer você não quis escutar
F9Fm9
Agora não peça não me faça promessas
CEm7
Eu não quero te ver nem quero acreditar
F9Fm9
Que vai ser diferente que tudo mudou
Em7Am7Am7/G
Você diz não saber o que houve de errado
F#m7(5-)Fm7M
E o meu erro foi crer que estar ao seu lado
C/GC7/G
Bastaria
F7M/AFm/AbC/GC7/G
Ah! Meu Deus, era tudo que eu queria
F7M/AFmC
Eu dizia seu nome, não    me abandone jamais
(Primeira Parte com variação na letra)
CEm7
Mesmo querendo eu não vou me enganar
F9Fm9
Eu conheço os seus passos, eu vejo os seus erros
CEm7
Não há nada de novo,     ainda somos iguais
F9Fm9
Então não me chame não olhe pra trás
[Segunda Parte]
Em7Am7(9)Am7(9)/G
Você diz não saber o que houve de errado
F#m7(5-)Fm7M
E o meu erro foi crer que estar ao seu lado
C/GC7/G
Bastaria
F7M/AFm/AbC/GC7/G
Ah! Meu Deus, era tudo que eu queria
F7M/AFmC
Eu dizia seu nome, não    me abandone jamais
[Parte Final]C/BbF7M/AFm/Ab
C/GC/BbF7M/AFm/Ab
Jamais
C/GC7/GF7M/AFm/Ab
Jamais
C/GC7/GF7M/AFm/Ab
Jamais                     me abandone
C9(11+)
Jamais")

Song.create!( name: "Minha Alma", artist: "", tags: "rock; Nacional", lyrics: "A minha alma tá armada e apontada
Para cara do sossego!
(Sêgo! Sêgo! Sêgo! Sêgo!)
Pois paz sem voz, paz sem voz
Não é paz, é medo!
(Medo! Medo! Medo! Medo!)

Às vezes eu falo com a vida
Às vezes é ela quem diz
Qual a paz que eu não quero conservar
Pra tentar ser feliz?

Às vezes eu falo com a vida
Às vezes é ela quem diz
Qual a paz que eu não quero conservar
Pra tentar ser feliz?

A minha alma tá armada e apontada
Para a cara do sossego!
(Sêgo! Sêgo! Sêgo! Sêgo!)
Pois paz sem voz, paz sem voz
Não é paz é medo
(Medo! Medo! Medo! Medo!)

Às vezes eu falo com a vida
Às vezes é ela quem diz
Qual a paz que eu não quero conservar
Pra tentar ser feliz?

Às vezes eu falo com a vida
Às vezes é ela quem diz
Qual a paz que eu não quero conservar
Pra tentar ser feliz?

As grades do condomínio
São pra trazer proteção
Mas também trazem a dúvida
Se é você que tá nessa prisão

Me abrace e me dê um beijo
Faça um filho comigo
Mas não me deixe sentar na poltrona
No dia de domingo (domingo!)

Procurando novas drogas de aluguel
Neste vídeo coagido
É pela paz que eu não quero seguir admitindo

Às vezes eu falo com a vida
Às vezes é ela quem diz
Qual a paz que eu não quero conservar
Pra tentar ser feliz?

Às vezes eu falo com a vida
Às vezes é ela quem diz
Qual a paz que eu não quero conservar
Pra tentar ser feliz?

As grades do condomínio
São pra trazer proteção
Mas também trazem a dúvida
Se é você que tá nessa prisão

Me abrace e me dê um beijo
Faça um filho comigo
Mas não me deixe sentar na poltrona
No dia de domingo (domingo!)

Procurando novas drogas de aluguel
Neste vídeo coagido
É pela paz que eu não quero seguir admitindo
Procurando novas drogas de aluguel
Neste vídeo coagido
É pela paz que eu não quero seguir admitindo

Me abrace e me dê um beijo
Faça um filho comigo
Mas não me deixa sentar na poltrona
No dia de domingo! (Domingo!)

Procurando novas drogas de aluguel
Neste vídeo coagido
É pela paz que eu não quero seguir admitido
Procurando novas drogas de aluguel
Neste vídeo coagido
É pela paz que eu não quero seguir admitindo

É pela paz que eu não quero seguir
É pela paz que eu não quero seguir
É pela paz que eu não quero seguir admitido
É pela paz que eu não quero seguir
É pela paz que eu não quero seguir
É pela paz que eu não quero seguir admitido")

Song.create!( name: "Mulher de fases", artist: "", tags: "rock; Nacional", lyrics: "A|-7--5-----5-7--5-----5------
E|-------7----------7---------
G5D5
Que mulher ruim
C5E5
Jogou minhas coisas fora
A5
Disse que em sua cama
C5G5
Eu não deito mais não
D5
A casa é minha
C5E5
Você que vá embora
A5
Já pra saia da sua mãe
C5
E deixa meu colchão
A5
Ela é pró na arte
E5
De pentelhar e aziar
G5
É campeã do mundo
C5
A raiva era tanta
G5
Que eu nem reparei
D5
Que a Lua diminuía
G5D5C5E5
A doida    tá me beijando há horas
A5
Disse que se for sem eu
C5G5
Não quer viver mais não
D5C5E5
Me diz, Deus,    o que é que eu faço agora?
A5
Se me olhando desse jeito
C5
Ela me tem na mão
G5
Meu filho aguenta
D5
Quem mandou você gostar
Dessa mulher de fases
[Refrão]
G5C5G5
Complicada e perfeitinha
D5E5
Você me apareceu
A5C5
Era tudo que eu queria
Estrela da sorte
G5C5G5
Quando a noite ela surgia
D5E5
Meu bem você cresceu
A5C5
Meu namoro é na folhinha
Mulher de fases
4x (G5C5D5)
[Segunda Parte]
E5
Põe fermento, põe as bombas
Qualquer coisa que aumente
G5
E a deixe bem maior que o Sol
E5
Pouca gente sabe que na noite
A5
O frio é quente e arde e eu   acendi
C5A5
Até sem luz dá pra te enxergar
E5G5
O lençol fazendo congo-blue
C5G5
É pena, eu sei, a manhã já vai miar
D5
Se aguente, que lá vem chumbo quente
[Refrão]
G5C5G5
Complicada e perfeitinha
D5E5
Você me apareceu
A5C5
Era tudo que eu queria
Estrela da sorte
G5C5G5
Quando a noite ela surgia
D5E5
Meu bem você cresceu
A5C5
Meu namoro é na folhinha
Mulher de fases
(G5C5D5)
(G5C5D5)
(G5C5D5)
(G5C5D5)
A|-7--5-----5-7--5-----5------
E|-------7----------7---------
Complicada e perfeitinha
Você me apareceu
Era tudo que eu queria
Estrela da sorte
Quando a noite ela surgia
Meu bem você cresceu
Meu namoro é na folhinha")

Song.create!( name: "Morena Tropicana", artist: "", tags: "rock; Nacional", lyrics: "Da manga rosa quero gosto e o sumo
Melão maduro, sapoti, juá
Jaboticaba, teu olhar noturno
Beijo travoso de umbu-cajá

Pele macia, ai, carne de caju
Saliva doce, doce mel, mel de uruçu

Linda morena, fruta de vez temporana
Caldo de cana caiana, vem me desfrutar!
Linda morena, fruta de vez temporana
Caldo de cana caiana, vou te desfrutar!

Morena tropicana, eu quero teu sabor
Ai, ai, iô, iô
Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai

Da manga rosa quero gosto e o sumo
Melão maduro, sapoti, juá
Jaboticaba, teu olhar noturno
Beijo travoso de umbu-cajá

Pele macia, ai, carne de caju
Saliva doce, doce mel, mel de uruçu

Linda morena, fruta de vez temporana
Caldo de cana caiana, vou te desfrutar!
Linda morena, fruta de vez temporana
Caldo de cana caiana, vem me desfrutar!

Morena tropicana, eu quero teu sabor
Ai, ai, iô, iô
Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai

Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai
Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai

Da manga rosa quero gosto e o sumo
Melão maduro, sapoti, juá
Jaboticaba, teu olhar noturno
Beijo travoso de umbu-cajá

Pele macia, ai, carne de caju
Saliva doce, doce mel, mel de uruçu

Linda morena, fruta de vez temporana
Caldo de cana caiana, vou te desfrutar!
Linda morena, fruta de vez temporana, oi
Caldo de cana caiana, vem me desfrutar!

Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai
Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai

Morena tropicana, eu quero teu sabor
Ai, ai, ai, ai
Morena tropicana")

Song.create!( name: "Na Sua Estante", artist: "", tags: "rock; Nacional", lyrics: "Tom:D
Afinação Drop D: D  A  D  G  B  E
Introdução:D5B5/DD5B5/D
(Riff da Introdução)
D5
Te vejo errando e isso não é pecado
B5/D
Exceto quando faz outra pessoa sangrar
D5
Te vejo sonhando e isso dá medo
B5/D
Perdido num mundo que não dá pra entrar
D5
Você está saindo da minha vida
B5/D
E parece que vai demorar
D5
Se não souber voltar ao menos mande notícias
B5/D
Cê acha que eu sou louca
Mas tudo vai se encaixar
A5
Tô aproveitando cada segundo
Antes que isso aqui vire uma tragédia
Refrão:
G5A5
E não adianta nem me procurar
D5A/C#B5
Em outros timbres, outros risos
G5A5
Eu estava aqui o tempo todo
B5(Riff 1)
Só você não viu
G5A5
E não adianta nem me procurar
D5A/C#B5
Em outros timbres, outros risos
G5A5
Eu estava aqui o tempo todo
B5
Só você não viu
(G5A5Bb5A5)
Segunda Parte:
D5
Você tá sempre indo e vindo, tudo bem
B5/D
Dessa vez eu já vesti minha armadura
D5
E mesmo que nada funcione
B5/D
Eu estarei de pé, de queixo erguido
D5
Depois você me vê vermelha e acha graça
B5/D
Mas eu      não ficaria bem na sua estante
A5
Tô aproveitando cada segundo
Antes que isso aqui vire uma tragédia
Refrão:
G5A5
E não adianta nem me procurar
D5A/C#B5
Em outros timbres, outros risos
G5A5
Eu estava aqui o tempo todo
B5(Riff 1)
Só você não viu
G5A5
E não adianta nem me procurar
D5A/C#B5
Em outros timbres, outros risos
G5A5
Eu estava aqui o tempo todo
B5
Só você não viu
Final:
G5A5B5
Só por hoje não quero mais te ver
G5A5B5
Só por hoje não vou tomar minha dose de você
G5A5B5
Cansei de chorar feridas que não se fecham
Não se curam
G5A5B5
E essa abstinência uma hora vai passar")

Song.create!( name: "Não Sei Viver Sem Ter Você", artist: "", tags: "rock; Nacional", lyrics: "EmG
Não há mais desculpas
D
Você vai ter que me entender
C
Quando olhar pra trás
Am
Procurando e não me ver
CEm
Chegou a hora de recomeçar
GD
Ter cada coisa em seu lugar
CEm
Tentar viver sem recordar jamais
GD
E se a saudade me deixar falhar
CAm
Deixar o tempo tentar te apagar
CG
Te ligar de madrugada sem saber o que dizer
DAm
Esperando ouvir sua voz e você nem me atender
CD[break]
Nem ao menos pra dizer
G
Que não vai voltar
D
Não vai tentar me entender
C
Que eu não fui nada pra você
D
Que eu deveria te deixar em paz!
G
Eu já não sei mais
D
Não sei viver sem ter você
C
Hoje eu queria te esquecer
DG
Mas quanto mais eu tento mais eu lembro
DC9D4/AC9D4/AG
Não sei viver sem ter você
DC9D4/AC9D4/AG
Não sei viver sem ter você
EmG
É difícil de aceitar!
DC
Recomeçar do zero
Em
Levantar e caminhar
G
Perceber que quem se ama
D
Já não se importa com você
CAm
E acordar sozinho ouvindo o som da sua TV
CEm
Chegou a hora de recomeçar
C9G
Acreditar
D
Que pode ser
C9
Melhor assim
EmG
Tentar crescer, fingir feliz
DC
Te deixar para depois a cada dia que eu morrer
Am
Espero que você morra, após
CG
Te ligar de madrugada sem saber o que dizer
DEm
Esperando ouvir sua voz e você nem me atender
CD
Nem ao menos pra dizer
G
Que não vai voltar
D
Não vai tentar me entender
C
Que eu não fui nada pra você
D
Que eu deveria te deixar em paz
G
Eu já não sei mais!
D
Não sei viver sem ter você
C
Hoje eu queria te esquecer
DG
Mas quanto mais eu tento, mais eu lembro
DC9D4/AC9D4/AG
Não sei viver sem ter você
DC9D4/AC9D4/AG
Não sei viver sem ter você
DC9D4/A
Preciso reaprender a viver pra esquecer
DC9
Pra te esquecer
(DGDC9)
DG
Pra te esquecer")

Song.create!( name: "Nucleo base", artist: "", tags: "rock; Nacional", lyrics: "Meu amor eu sinto muito, muito, muito, mas vou indo
Pois é tarde, muito tarde e eu preciso ir embora
Sinto muito meu amor, mas acho que já vou andando
Amanhã acordo cedo e preciso ir embora
Eu queria ter você, mas acho que já vou andando
Outro dia pode ser, mas não vai dar pra ser agora
La lala lalalala

Eu tentei fugir não queria me alistar
Eu quero lutar mas não com essa farda
Eu tentei fugir não queria me alistar
Eu quero lutar mas não com essa farda

E já está ficando tarde e eu estou muito cansado
Minha mente está tão cheia e estou me transbordando
Você pensa que sou louco mas estou só delirando
Você pensa que sou tolo mas estou só te olhando
La lala lalalala

Eu tentei fugir não queria me alistar
Eu quero lutar mas não com essa farda
Eu tentei fugir não queria me alistar
Eu quero lutar mas não com essa farda
Mas não com essa farda. Mas não com essa farda
Mas não")

Song.create!( name: "Oh chuva", artist: "", tags: "rock; Nacional", lyrics: "Tom:C#m
[Primeira Parte]
C#mG#m
Você que tem medo de chuva
C#mG#m
Você não é nem de papel
AE
Muito menos feito de açúcar
AG#
Ou algo parecido com mel
[Segunda Parte]
C#mG#m
Experimente tomar banho de chuva
C#mG#m
E conhecer a energia do céu
AE
A energia dessa água sagrada
AG#
Nos abençoa da cabeça aos pés
[Refrão]
C#m
Oh! chuva
AG#C#m
Eu peço que caia devagar iô
AG#C#m
Só molhe esse povo de alegria
AG#C#m
Para nunca mais chorar iô iô iô
AG#
Para nunca mais cho
C#m
Oh! chuva
AG#C#m
Eu peço que caia devagar
AG#C#m
Só molhe esse povo de alegria
AG#C#m
Para nunca mais chorar iô iô iô
AG#
Para nunca mais cho
C#mAG#
Iô iô iô   iô  iô  iô
C#mA
Iô  iô iô iô iô iô   iô
G#C#mA
Iô iô iô     Iô  iô
G#C#mAG#
Iô iô iô iô  iô  iô  iô
C#mA
Iô iô iô     Iô  iô
G#C#mAG#
Iô iô iô iô  iô  iô  iô
[Primeira Parte]
C#mG#m
Você que tem medo de chuva
C#mG#m
Você não é nem de papel
AE
Muito menos feito de açúcar
AG#
Ou algo parecido com mel
[Segunda Parte]
C#mG#m
Experimente tomar banho de chuva
C#mG#m
E conhecer a energia do céu
AE
A energia dessa água sagrada
AG#
Nos abençoa da cabeça aos pés
[Refrão]
C#m
Oh! chuva
AG#C#m
Eu peço que caia devagar iô
AG#C#m
Só molhe esse povo de alegria
AG#C#m
Para nunca mais chorar iô iô iô
AG#
Para nunca mais cho
C#m
Oh! chuva
AG#C#m
Eu peço que caia devagar
AG#C#m
Só molhe esse povo de alegria
AG#C#m
Para nunca mais chorar iô iô iô
AG#
Para nunca mais cho
C#mAG#
Iô iô iô   iô  iô  iô
C#mA
Iô  iô iô iô iô iô   iô
G#C#mA
Iô iô iô     Iô  iô
G#C#mAG#
Iô iô iô iô  iô  iô  iô
C#mA
Iô iô iô     Iô  iô
G#C#mAG#
Iô iô iô iô  iô  iô  iô
Iô iô iô iô  iô  iô  iô")

Song.create!( name: "Ovelha Negra", artist: "", tags: "rock; Nacional", lyrics: "Levava uma vida sossegada
Gostava de sombra e água fresca
Meu Deus, quanto tempo eu passei
Sem saber

Foi quando meu pai me disse: Filha
Você é a ovelha negra da família
Agora é hora de você assumir
E sumir

Baby, baby
Não adianta chamar
Quando alguém está perdido
Procurando se encontrar
Baby, baby
Não vale a pena esperar, oh, não
Tire isso da cabeça
E ponha o resto no lugar

Levava uma vida sossegada
Gostava de sombra e água fresca
Meu Deus, quanto tempo eu passei
Sem saber

Foi quando meu pai me disse: Filha
Você é a ovelha negra da família
Agora é hora de você assumir
E sumir

Baby, baby
Não adianta chamar
Quando alguém está perdido
Procurando se encontrar
Baby, baby
Não vale a pena esperar, oh, não
Tire isso da cabeça
E põe o resto no lugar

(Ovelha negra da família)
(Não vai mais voltar)
(Não, vai sumir)")

Song.create!( name: "Pais e Filhos", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
[Intro]CDG
CDG
CDG
CDG
[Primeira Parte]
CDG
Estátuas e cofres e paredes pintadas
CDG
Ninguém sabe o que aconteceu
CDG
Ela se jogou da janela do quinto andar
CDGCD
Nada é fácil de entender
[Segunda Parte]
FEmCBmAm
Dorme agora  Uhhhum
D
É só o vento lá fora
CD
Quero colo!
G
Vou fugir de casa
CD
Posso dormir aqui
G
Com vocês
CD
Estou com medo
G
Tive um pesadelo
CD
Só vou voltar
GGCD
Depois das três
FEmC
Meu filho vai ter
Bm
Nome de santo
Am
Uummhum!
Quero o nome
D
Mais bonito
GC
É preciso amar  as pessoas
EmC
Como se não houvesse amanhã
GC
Por que se você parar
EmC
Pra pensar,  na verdade não há
[Terceira Parte]
CDGCDG
Me diz  por que que o céu é azul
CDG
Explica a grande  fúria  do mundo
C
São meus filhos
DG(CDG)
Que tomam conta de mim
C
Eu moro com a minha mãe
DG
Mas meu pai vem me visitar
CD
Eu moro na rua
G
Não tenho ninguém
CDG
Eu moro em qualquer lugar
CD
Já morei em tanta casa
G
Que nem me lembro mais
CDFEm
Eu moro com os meus pais
CBmAmD
Huhuhuhu!...ouh! ouh!
[Refrão]
GC
É preciso amar as pessoas
EmC
Como se não houvesse amanhã
GC
Por que se você parar
Em
Pra pensar
C
Na verdade não há
GC
Sou uma gota d`água
EmC
Sou um grão de areia
G
Você me diz que seus pais
C
Não entendem
EmC
Mas você não entende seus pais
DG
Você culpa seus pais por tudo
CDG
Isso é absurdo
CDG
São crianças como você
CD
O que você vai ser
GCDG
Quando você crescer?")

Song.create!( name: "Palpite", artist: "", tags: "rock; Nacional", lyrics: "Tom:E
E|-7---------------------5-4------------|
B|---8b-5-------5/7----------5/7-7------|
G|-------4/1-3------5-7------------4----|
D|--------------------------------------|
A|--------------------------------------|
E|--------------------------------------|
EF#/E
Tô com saudade de você Debaixo do meu cobertor
A9AmE
E te arrancar suspiros, fazer amor
EF#/E
Tô com saudade de você Na varanda em noite quente
A9AmC#mA
E o arrepio frio que dá na gente Truque do desejo
C#mA
Guardo na boca o gosto do beijo
CDCD
Eu sinto a falta de você  me sinto só
EF#/EA9AmE
E aí, será que você volta? Tudo à minha volta     é triste
EF#/EA9AmE
E aí, o Amor pode acontecer de novo pra você, Palpite
EF#/E
Tô com saudade de você do nosso banho de chuva
A9AmE
Do calor na minha pele, da língua tua
EF#/E
Tô com saudade de você Censurando o meu vestido
A9AmC#mA
As juras de Amor  ao pé do ouvido, truque do desejo
C#mA
Guardo na boca o gosto do beijo
C
Eu sinto a falta de você
D
Me sinto só
C
Eu sinto a falta de você
D
Me sinto só")

Song.create!( name: "Papai Noel Velho Batuta", artist: "", tags: "rock; Nacional", lyrics: "4x B5G5A5
B5G5A5
Papai Noel velho batuta
B5G5A5
Rejeita os miseráveis
B5G5A5
Eu quero matá-lo
B5G5A5
Aquele porco capitalista
B5G5A5
Presenteia os ricos
B5G5A5G5
Cospe nos pobres
4x B5G5A5
B5G5A5
Papai Noel velho batuta
B5G5A5
Rejeita os miseráveis
B5G5A5
Eu quero matá-lo
B5G5A5
Aquele porco capitalista
B5G5A5
Presenteia os ricos
B5G5A5G5
Cospe nos pobres
2x B5G5A5
B5G5A5
Mas nos vamos sequestrá-lo
E vamos matá-lo
Por quê?  [break]
4x Aqui não existe natal
Por quê?  [break]
B5G5A5
Papai Noel velho batuta
B5G5A5
Rejeita os miseráveis
B5G5A5
Eu quero matá-lo
B5G5A5
Aquele porco capitalista
B5G5A5
Presenteia os ricos
B5G5A5G5
Cospe nos pobres")

Song.create!( name: "Primeiros Erros", artist: "", tags: "rock; Nacional", lyrics: "[Intro]DE/D
DE/D
DD5(7M/9)G/B
DD5(7M/9)G/B
[Primeira Parte]
DD5(7M/9)
Meu caminho é cada manhã
DD5(7M/9)
Não procure saber onde estou
Bm7(11)Bm7(9/11)
Meu destino não é de ninguém
Bm7(11)A4(7)D
E eu não deixo os meus passos no chão
D5(7M/9)D
Se você não entende não vê
D5(7M/9)
Se não me vê não entende
Bm7(11)Bm7(9/11)Bm7(11)
Não procure saber onde estou
Bm7(9/11)G7M
Se o meu jeito te surpreende
[Segunda Parte]
G4+(6)G7M
Se o meu corpo virasse sol
G4+(6)Em7
Se a minha mente virasse sol
Em7(13)Em7
Mas só chove, chove
Em7(13)
Chove, chove
(DD5(7M/9)G/B)
(DD5(7M/9)G/B)
[Primeira Parte]
DD5(7M/9)
Se um dia eu pudesse ver
DD5(7M/9)
Meu passado inteiro
Bm7(11)Bm7(9/11)Bm7(11)
E fizesse parar de chover
Bm7(9/11)
Nos primeiros erros
[Segunda Parte]
G7MG4+(6)G7M
Meu corpo virasse sol
G4+(6)Em7
Minha mente virasse sol
Em7(13)Em7
Mas só chove, chove
Em7(13)
Chove, chove
G7MG4+(6)G7M
Meu corpo virasse sol
G4+(6)Em7
Minha mente viraria
Em7(13)Em7
Mas só chove, chove
Em7(13)
Chove, chove
(DE/D)
(DE/D)
[Primeira Parte]
DD5(7M/9)
Se um dia eu pudesse ver
DD5(7M/9)
Meu passado inteiro
Bm7(11)Bm7(9/11)Bm7(11)
E fizesse parar de chover
Bm7(9/11)
Nos primeiros erros
[Segunda Parte]
G7MG4+ (6)G7M
Meu corpo virasse sol
G4+(6)Em7
Minha mente virasse sol
Em7(13)Em7
Mas só chove, chove
Em7(13)
Chove, chove
G7MG4+(6)G7M
Meu corpo virasse sol
G4+(6)Em7
Minha mente viraria
Em7(13)Em7
Mas só chove, chove
Em7(13)
Chove, chove
G7MG4+(6)G7M
Meu corpo virasse sol
G4+(6)Em7
Minha mente virasse sol
Em7(13)Em7
Mas só chove, chove
Em7(13)
Chove, chove
(DD5(7M/9)G/B)
(DD5(7M/9)G/B)
(DE/DD)")

Song.create!( name: "Proibida Pra Mim", artist: "", tags: "rock; Nacional", lyrics: "G|------------------2/4  2 0
D|-2-2-2-2-2-0-2-2--3-3-3-3-
[Intro]E5B5A5G5
E5B5A5
E5B5A5
E5B5A5
E5B5A5
DA
Ela achou meu cabelo engraçado
BmG
Proibida pra mim NO WAY!
DA
Disse que não podia ficar
BmG
Mas levou a sério o que eu falei
[Pré-Refrão]
D
Eu vou fazer de tudo
A
Que eu puder
Bm
Eu vou roubar
G
Essa mulher pra mim
D
Eu posso te ligar
A
A qualquer hora
BmG
Mas eu nem sei seu nome
[Refrão]
D
Se não eu
A
Quem vai fazer você feliz?
Bm
Se nao eu
G
Quem vai fazer você feliz?
D
Guerra
(ABmG)
D
Se não eu
A
Quem vai fazer voce feliz?
Bm
Se nao eu
G
Quem vai fazer você feliz?
DABmG
Guerra
(E5B5A5)
(E5B5A5)
(E5B5A5)
(E5B5A5)
[Segunda Parte]
DA
Eu me flagrei pensando em você
BmG
Em tudo o que eu queria te dizer
DA
Numa noite especialmente boa
BmG
Não há nada mais que a gente possa fazer
[Pré-Refrão]
D
Eu vou fazer de tudo
A
Que eu puder
Bm
Eu vou roubar
G
Essa mulher pra mim
D
Eu posso te ligar
A
A qualquer hora
BmG
Mas eu nem sei seu nome
[Refrão]
D
Se não eu
A
Quem vai fazer você feliz?
Bm
Se nao eu
G
Quem vai fazer você feliz?
D
Guerra
(ABmG)
D
Se não eu
A
Quem vai fazer você feliz?
Bm
Se não eu
G
Quem vai fazer você feliz?
DABmG
Guerra
(E5B5A5G5)
(E5B5A5G5)
[Refrão]
D
Se não eu
A
Quem vai fazer você feliz?
Bm
Se não eu
G
Quem vai fazer você feliz?
D
Guerra
(ABmG)
D
Se não eu
A
Quem vai fazer você feliz?
Bm
Se não eu
G
Quem vai fazer você feliz?
D
Guerra
[Final]ABmG
G5F#5E5D5")

Song.create!( name: "Que País É Este?", artist: "", tags: "rock; Nacional", lyrics: "[Intro]EmCD(12x)
[Solo]
E|---7---7---7----7---5----3---3---3----3---5-|
B|-5---5---5----5---3----5---5---5----5---3---|
EmCD
Nas favelas, no senado
EmCD
Sujeira pra todo lado
EmCD
Ninguém respeita a constituição
EmCDEmCD
Mas todos acreditam no futuro da nação
EmCD
Que país é esse
EmCD
Que país é esse
EmCD
Que país é esse
(EmCD)
(EmCD)
(EmCD)
(EmCD)
EmCD
No Amazonas, no Araguaia iá iá iá
EmCD
Na baixada fluminense
EmCD
Mato grosso e nas gerais
EmCD
E no nordeste tudo em paz
EmCD
Na morte eu descanso
EmCD
Mas o sangue anda solto
EmCD
Manchando os papéis
EmCD
Documentos fiéis
EmCD
Ao descanso do patrão
EmCD
Que país é esse
EmCD
Que país é esse
EmCD
Que país é esse
(EmCD)
(EmCD)
(EmCD)
(EmCD)
EmCD
Terceiro mundo se for
EmCD
Piada no exterior
EmCD
Mas o Brasil vai ficar rico
EmCD
Vamos faturar um milhão
EmCD
Quando vendermos todas as almas
EmCD
Dos nossos índios num leilão
EmCD
Que país é esse
EmCD
Que país é esse
EmCD
Que país é esse
EmCD
Que país é esse")

Song.create!( name: "Quero e ver o oco [DRP D]", artist: "", tags: "rock; Nacional", lyrics: "Afinação: D A D G B E
[Intro]
-Baixo -
[Passagem]
4xE E  D  E    G5A5D5  E
4xG5A5A#5B7C5C#5
E5
Fi__ze__ra
Pouco em tê-lo deixado
Todo quebrado, desfigurado
Irreconhecível até pra mãe
Mãe, olha só que legal
Carro que eu ganhei no Natal
Tu que me deu, disse
Cuidado pra que não arranhe
Menino doido, tu quebrou até os friso
Tem noção do prejuízo?
Acho que o teu véio vai te matar
Os olhos dele esperando o carro do ano
Um modelo italiano que acabaram de inventar
[Primeira Parte com Variação na Letra]
(Riff 3)
Carrão da porra, tu pisava ele voava
Tu freava, ele ancorava
E eu lá dentro a me debater
No bate-bate com a cabeça no volante
Voei pelo, vidro da frente
A raiva preta eu não pude conter
[Segunda Parte com Variação na Letra]
(Riff 4)
Com o sangue quente, cortei a testa
Quebrei os dente e toda aquela gente
Peste! Num vem ninguém me ajudar
Nem se mexiam, pior que isso eles riam
Teto preto, o tempo fecha
Os `zóvo inflama, ora do pau cantar
[Refrão]
D5F5G5G#5A5
Eu quero é ver o oco
Só na mãozada eu deitei seis, mas
detestei matar
Eu quero é ver o oco
Sem controle, tocando fole, é o hora
E dançar
B5C5B5C5B5C5B5C5B5
(Riff 3)
Meu ódio por automotores começou cedo
Depois que eu tranquei os dedo na porta dum opalão
Meu pai de dentro se ria, que se mijava
Achou que o filho festejava
Era dia de Cosme e Damião
[Primeira Parte com Variação na Letra]
(Riff 4)
Depois do dedo, foi o braço, a perna as costa
Tu duvida, bate aposta
Pois muitos vão lhe testemunhar
Tanta fratura que deixá doutora louca
É pino até no céu da boca
Tu cansa só de tentar contar
[Refrão]
(Riff 5)
Eu quero é ver o oco
É pedir muito uma enfermeira vir me ajudar?
Eu quero é ver o oco
Ó enfermeira, gente boa, vem me medicar
D5   Break  conta 4
[Passagem SOLOB5C5B5C5B5  G A E D]
Eu quero é ver o oco
Eu quero é ver o oco
[Final]")

Song.create!( name: "Segundo Sol", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
[Intro]C9
[Primeira Parte]
GDm7
Quando o segundo sol chegar
FC
Para realinhar as órbitas dos planetas
GDm7
Derrubando com assombro exemplar
FC
O que os astrônomos diriam se tratar de um outro cometa
GDm7
Quando o segundo sol chegar
FC
Para realinhar as órbitas dos planetas
GDm7
Derrubando com assombro exemplar
FC
O que os astrônomos diriam se tratar de um outro cometa
[Segunda Parte]
(GG7GD)
GD
Não digo que não me surpreendi
G
Antes que eu visse, você disse e eu não pude
acreditar
[Refrão]
FC/EDm
Mas você pode ter certeza
CBb
De que o seu telefone irá tocar
FC/E
Em sua nova casa que abriga
Dm7C
Agora a trilha incluída nessa minha conversão
Bb
Eu só queria te contar
F
Que eu fui lá fora e vi dois sois num dia
C/EDmC
E a vida que ardia sem explicação
[Primeira Parte]
GDm7
Quando o segundo sol chegar
FC
Para realinhar as órbitas dos planetas
GDm7
Derrubando com assombro exemplar
FC
O que os astrônomos diriam se tratar de um outro cometa
GDm7
Quando o segundo sol chegar
FC
Para realinhar as órbitas dos planetas
GDm7
Derrubando com assombro exemplar
FC
O que os astrônomos diriam se tratar de um outro cometa
[Segunda Parte]
(GG7GG7)
GDm
Não digo que não me surpreendi
G
Antes que eu visse, você disse e eu não pude
Dm
acreditar
[Refrão]
FC/EDm7
Mas você pode ter certeza
CBb
De que o seu telefone irá tocar
FC/E
Em sua nova casa que abriga
Dm7C
Agora a trilha incluída nessa minha conversão
Bb
Eu só queria te contar
F
Que eu fui lá fora e vi dois sois num dia
C/EDmC
E a vida que ardia sem explicação
FC
Explicação, não tem explicação
FC
Explicação não, não tem explicação
FC
Explicação não tem, não tem explicação
F
Explicação não tem
F        E    D
expli___ca____ção
CAC
Não tem, não tem")

Song.create!( name: "Resposta Skank", artist: "", tags: "rock; Nacional", lyrics: "GG5+
Bem mais que o tempo,   que nós perdemos
C9Eb
Ficou pra trás também o que nos juntou
GG5+
Ainda lembro,   que eu estava lendo
C9Eb
Só pra saber o que você achou
EmEm7M
Dos versos que eu fiz
C6G
E ainda espero resposta
(GG4GG9C9)
(GG4GG9C9)
[Segunda Parte]
GG5+
Desfaz o vento,    o que há por dentro
C9Eb
Desse lugar que ninguém    mais pisou
GG5+
Você está vendo,   o que está acontecendo?
C9Eb
Nesse caderno sei que ainda estão
[Pré-Refrão]
EmEm7MC6
Os versos seus, tão meus que peço
EmEm7MC6
Nos versos meus, tão seus, que esperem
[Refrão]
G
Que os aceite
Am
Em paz, eu digo o que eu sou
C9G
O antigo do que vai adiante
Am
Sem mais, eu fico onde estou
C9G
Prefiro continuar distante
(GG4GG9C9)
(GG4GG9C9)
[Primeira Parte]
GG5+
Bem mais que o tempo,   que nós perdemos
C9Eb
Ficou pra trás também o que nos juntou
GG5+
Ainda lembro,   que eu estava lendo
C9Eb
Só pra saber o que você achou
[Pré-Refrão]
EmEm7MC6
Dos versos seus, tão meus que peço
EmEm7MC6
Nos versos meus, tão seus, que esperem
[Refrão]
G
Que os aceite
Am
Em paz, eu digo o que eu sou
C9G
O antigo do que vai adiante
Am
Sem mais, eu fico onde estou
C9G
Prefiro continuar distante
Am
Em paz, eu digo o que eu sou
C9G
O antigo do que vai adiante
Am
Sem mais, eu fico onde estou
C9G
Prefiro continuar distante
(GG4GG9C9)
(GG4GG9C9)
[Segunda Parte]
GG5+
Desfaz o vento,    o que há por dentro
C9Eb
Desse lugar que ninguém    mais pisou
GG5+
Você está vendo,   o que está acontecendo?
C9Eb
Nesse caderno sei que ainda estão
[Pré-Refrão]
EmEm7MC6
Os versos seus, tão meus que peço
EmEm7MC6
Nos versos meus, tão seus, que esperem
[Refrão]
G
Que os aceite
Am
Em paz, eu digo o que eu sou
C9G
O antigo do que vai adiante
Am
Sem mais, eu fico onde estou
C9G
Prefiro continuar distante
Am
Em paz, eu digo o que eu sou
C9G
O antigo do que vai adiante
Am
Sem mais, eu fico onde estou
C9G
Prefiro continuar distante
Am
Em paz, eu digo o que eu sou
C9G
O antigo do que vai adiante
Am
Sem mais, eu fico onde estou
C9G
Prefiro continuar distante
[Final]GAmC9
GAmC9
GAmC9
GAmC9G")

Song.create!( name: "Será", artist: "", tags: "rock; Nacional", lyrics: "Cifra: Principal (violão e guitarra)Favoritar Cifra
Tom:C
[Intro]CGAmF
CGAmF
[Solo Intro]
B|-5-3-1-0-------------5-3-1-0--1----|
G|---------2-0-2------------------0--|
[Primeira Parte]
CGAm
Tire suas mãos de mim
FC
Eu não pertenço a você
GAm
Não é me dominando assim
FC
Que você vai me entender
G
Eu posso estar sozinho
AmF
Mas, eu sei muito bem aonde estou
AmEm
Você pode até duvidar
FG
Acho que isso não é amor
(CFG)
(CFG)
(CFG)
(CFG)
[Refrão]
GDm
Será só imaginação
GDm
Será que nada vai acontecer
GDm
Será que é tudo isso em vão
GDmAm
Será que vamos conseguir vencer
FG
Ô ô ô ô ô ô
(CFG)
(CFG)
(CFG)
(CFG)
[Segunda Parte]
CG
Nos perderemos entre monstros
AmF
Da nossa própria criação
CG
Serão noites inteiras
AmF
Talvez por medo da escuridão
CG
Ficaremos acordados
AmF
Imaginando alguma solução
AmEm
Pra que esse nosso egoísmo
FG
Não destrua nosso coração
(CFG)
(CFG)
(CFG)
(CFG)
[Refrão]
GDm
Será só imaginação
GDm
Será que nada vai acontecer
GDm
Será que é tudo isso em vão
GDmAm
Será que vamos conseguir vencer
FG
Ô ô ô ô ô ô
[Terceira Parte]
CG/B
Brigar pra quê, se é sem querer
Gm/BbDm
Quem é que vai nos proteger
CG/B
Será que vamos ter que responder
Gm/Bb
Pelos erros a mais
Dm
Eu e você
[Final]GFG
FGF")

Song.create!( name: "Só os loucos sabem", artist: "", tags: "rock; Nacional", lyrics: "Intro] G  Em  C
G  Em  C
[Primeira Parte]
Em         C
Agora eu sei
G
Exatamente o que fazer
Em        G             D
Bom recomeçar, poder contar com você
Em      C
Pois eu me lembro de tudo, irmão
G
Eu estava lá também
Am
O homem quando está em paz
C
Não quer guerra com ninguém
Em                 C
Eu    segurei minhas lágrimas
G
Pois não queria demonstrar a emoção
Em                      G
Já que estava ali só pra observar
D
E aprender um pouco mais
Sobre a percepção
Em
Eles dizem que é impossível
C                     G
Encontrar o amor sem perder a razão
Am
Mas pra quem tem pensamento forte
C
O impossível é só questão de opinião
[Refrão]
Em     C    G
E disso os loucos sabem
Em     G    D
Só os loucos sabem
Em     C    G
Disso os loucos sabem
Am          C
Só os loucos sabem
( G  Em  C )
( G  Em  C )
[Segunda Parte]
Em      C         G
Toda a positividade eu desejo a você
Em    G         D
Pois precisamos disso nos dias de luta
Em           C
O medo cega os nossos sonhos
G
O medo cega os nossos sonhos
Am                       C
Menina linda, eu quero morar na sua rua
Em     C      G
Você    deixou saudade
Em     G      D
Você    deixou saudade
Em           C
Quero te ver outra vez
G
Quero te ver outra vez
Am           C
Você deixou saudade
( G  Em  C )
( G  Em  C )
[Primeira Parte]
Em         C
Agora eu sei
G
Exatamente o que fazer
Em        G             D
Bom recomeçar, poder contar com você
Em      C
Pois eu me lembro de tudo, irmão
G
Eu estava lá também
Am
O homem quando está em paz
C
Não quer guerra com ninguém
[Final] G  Em  C
G  Em  C  G")

Song.create!( name: "Tarde Vazia", artist: "", tags: "rock; Nacional", lyrics: "Tom:D
Intro 2x:DG6(9)
DG6(9)
Pela janela vejo fumaça, vejo pessoas.
DG6(9)
Na rua os carros, no céu o sol e a chuva.
DD5(7M/9)G6(9)
O telefone    tocou
DD5(7M/9)G6(9)
Na mente  fanta____sia
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)
E me     valeu o dia
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)Em7(9)
E me     valeu o dia
E|-----------------------------------------|
B|-----------------------------------------|
G|-4--2--0---------------------------------|
D|----------4--2--0------------------------|
A|-----------------------------------------|
E|-----------------------------------------|
Primeira Parte:
DG6(9)
Pela janela vejo fumaça, vejo pessoas.
DG6(9)
Na rua os carros, no céu o sol e a chuva.
DG6(9)
O telefone tocou
DG6(9)
Na mente fantasia
(Refrão com variação na letras)
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)
Na mente  fantasia
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)Em7
Na mente  fantasia
E|-----------------------------------------|
B|-----------------------------------------|
G|-4--2--0---------------------------------|
D|----------4--2--0------------------------|
A|-----------------------------------------|
E|-----------------------------------------|
DD/AC9
Você me ligou naquela tarde vazia
Bm6DD/A
E me valeu o dia
C9Bm6
Valeu o dia       Valeu o dia
DD/AC9
Você me ligou naquela tarde vazia
Bm6DD/A
Na mente fantasia
C9
Na mente fantasia
Bm6
Na mente fantasia
DBm6C9(11+)
Podia ter outras garotas
Em7(9)
Mas você é diferente
DBm6C9(11+)
Você me ligou naquela tarde vazia
Em7(9)
E me valeu o dia
DBm6C9(11+)
Valeu o dia
Em7(9)
Valeu o dia
(DBm6)
C9(11+)
Na mente fantasia
Em7(9)
Na mente fantasia
(DBm6)
C9(11)
Cantando a melodia
Em7(9)
Cantando a melodia
(DBm6C9G6/BD)")

Song.create!( name: "Tente outra vez", artist: "", tags: "rock; Nacional RAUL", lyrics: "Veja
Não diga que a canção está perdida
Tenha fé em Deus, tenha fé na vida
Tente outra vez

Beba (beba)
Pois a água viva ainda tá na fonte (tente outra vez)
Você tem dois pés para cruzar a ponte
Nada acabou, não, não, não

Oh, tente
Levante sua mão sedenta e recomece a andar
Não pense que a cabeça aguenta se você parar
Não, não, não, não, não, não, não

Há uma voz que canta, uma voz que dança
Uma voz que gira (gira)
Bailando no ar (uh)
(Uh-uh)

Queira (queira)
Basta ser sincero e desejar profundo
Você será capaz de sacudir o mundo
Vai, tente outra vez

Tente (tente)
E não diga que a vitória está perdida
Se é de batalhas que se vive a vida
Tente outra vez")

Song.create!( name: "Tarde Vazia", artist: "", tags: "rock; Nacional", lyrics: "Tom:D
Intro 2x:DG6(9)
DG6(9)
Pela janela vejo fumaça, vejo pessoas.
DG6(9)
Na rua os carros, no céu o sol e a chuva.
DD5(7M/9)G6(9)
O telefone    tocou
DD5(7M/9)G6(9)
Na mente  fanta____sia
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)
E me     valeu o dia
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)Em7(9)
E me     valeu o dia
E|-----------------------------------------|
B|-----------------------------------------|
G|-4--2--0---------------------------------|
D|----------4--2--0------------------------|
A|-----------------------------------------|
E|-----------------------------------------|
Primeira Parte:
DG6(9)
Pela janela vejo fumaça, vejo pessoas.
DG6(9)
Na rua os carros, no céu o sol e a chuva.
DG6(9)
O telefone tocou
DG6(9)
Na mente fantasia
(Refrão com variação na letras)
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)
Na mente  fantasia
G5G5/F#Em7
Você me     ligou
A4
Naquela tarde vazia
G5G5/F#Em7F#m7(11)Em7
Na mente  fantasia
E|-----------------------------------------|
B|-----------------------------------------|
G|-4--2--0---------------------------------|
D|----------4--2--0------------------------|
A|-----------------------------------------|
E|-----------------------------------------|
DD/AC9
Você me ligou naquela tarde vazia
Bm6DD/A
E me valeu o dia
C9Bm6
Valeu o dia       Valeu o dia
DD/AC9
Você me ligou naquela tarde vazia
Bm6DD/A
Na mente fantasia
C9
Na mente fantasia
Bm6
Na mente fantasia
DBm6C9(11+)
Podia ter outras garotas
Em7(9)
Mas você é diferente
DBm6C9(11+)
Você me ligou naquela tarde vazia
Em7(9)
E me valeu o dia
DBm6C9(11+)
Valeu o dia
Em7(9)
Valeu o dia
(DBm6)
C9(11+)
Na mente fantasia
Em7(9)
Na mente fantasia
(DBm6)
C9(11)
Cantando a melodia
Em7(9)
Cantando a melodia
(DBm6C9G6/BD)")

Song.create!( name: "Teorema", artist: "", tags: "rock; Nacional", lyrics: "Não vá embora, fique um pouco mais
Ninguém sabe fazer o que você me faz
É exagero e pode até não ser
O que você consegue ninguém sabe fazer

Parece energia mas é só distorção
E não sabemos se isso é problema
Ou se é a solução

Não tenha medo, não preste atenção
Não dê conselhos, não peça permissão
É só você quem deve decidir
O que fazer pra tentar ser feliz

Parece energia mas é só distorção
E parece que sempre termina
Mas não tem fim

Não vá embora, fique um pouco mais
Ninguém sabe fazer o que você me faz
É exagero e pode até não ser
O que você consegue ninguém sabe fazer

Parece um teorema sem ter demonstração
E parece que sempre termina
Mas não tem fim")

Song.create!( name: "Teto de vidro", artist: "", tags: "rock; Nacional", lyrics: "4xC#5   A  B(solinho C#m agudo)
[break]
4x  C# C C# C# C#(riff guit 4x)
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Andei por tantas ruas e lugares
A5
Passei observando quase tudo
C#5
Mudei o mundo gira num segundo
A5
Busquei dentro de mim os meus lares
E aí tantas pessoas querendo sentir
Sangue correndo na veia
É bom assim
Se movimenta, tá vivo
Ouvi milhões de vozes gritando
Pré-Refrão:
C#mBABC#m
Eu quero ver quem é capaz
BF#m
De fechar os olhos
G#m
E descansar em paz
(2XC#5A5)
Segundo Refrão:
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
Segunda Parte:
C#5
Andei por tantas ruas e lugares
A5
Passei observando quase tudo
C#5
Mudei o mundo gira num segundo
A5
Busquei dentro de mim os meus lares
E aí tantas pessoas querendo sentir
Sangue correndo na veia
É bom assim
Se movimenta, tá vivo
Ouvi milhões de vozes gritando
Pré-Refrão:
C#mBABC#m
Eu quero ver quem é capaz
BF#m
De fechar os olhos
G#m
E descansar em paz
(4xC#5A5)
Terceiro Refrão:
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5B5
Que atire a primeira pedra
C#5
Quem não tem teto de vidro
A5(E5B/D#)
Que atire a primeira pedra
Final:
C#5
Na frente está o alvo
Que se arrisca pela linha
E5
Não é tão diferente
Do que eu já fui um dia
B5
Se vai ficar, se vai passar
Não sei
A5
E num piscar de olhos
Lembro tanto que falei
C#5
Deixei,     calei
E até me importei
E5
Mas não tem nada
Eu tava mesmo errada
B5
Cada um em seu casulo
Em sua direção
A5
Vendo de camarote
A novela da vida alheia
C#5
Sugerindo soluções
Discutindo relações
E5
Bem certos que a verdade
Cabe na palma da mão
B5
Mas isso não é
A5
Uma questão de opinião
C#5
Mas isso não é
E5
Uma questão de opinião
B5
E isso é só
A5
Uma questão de opinião")

Song.create!( name: "Tempo Perdido", artist: "", tags: "rock; Nacional", lyrics: "Todos os dias quando acordo
Não tenho mais o tempo que passou
Mas tenho muito tempo
Temos todo tempo do mundo

Todos os dias, antes de dormir
Lembro e esqueço como foi o dia
Sempre em frente
Não temos tempo a perder

Nosso suor sagrado
É bem mais belo que esse sangue amargo
E tão sério

E selvagem
Selvagem
Selvagem

Veja o Sol dessa manhã tão cinza
A tempestade que chega é da cor dos teus olhos
Castanhos

Então me abraça forte
Me diz mais uma vez que já estamos
Distantes de tudo

Temos nosso próprio tempo
Temos nosso próprio tempo
Temos nosso próprio tempo

Não tenho medo do escuro
Mas deixe as luzes acesas
Agora

O que foi escondido é o que se escondeu
E o que foi prometido ninguém prometeu
Nem foi tempo perdido

Somos tão jovens
Tão jovens
Tão jovens")

Song.create!( name: "Tempos Modernos", artist: "", tags: "rock; Nacional", lyrics: "Eu vejo a vida melhor no futuro
Eu vejo isso por cima de um muro de hipocrisia
Que insiste em nos rodear
Eu vejo a vida mais clara e farta
Repleta de toda satisfação que se tem direito
Do firmamento ao chão

Eu quero crer no amor numa boa
Que isso valha pra qualquer pessoa
Que realizar a força que tem uma paixão
Eu vejo um novo começo de era
De gente fina, elegante e sincera
Com habilidade pra dizer mais sim do que não

Hoje o tempo voa, amor
Escorre pelas mãos
Mesmo sem se sentir
Não há tempo que volte, amor
Vamos viver tudo que há pra viver
Vamos nos permitir

Eu quero crer no amor numa boa
Que isso valha pra qualquer pessoa
Que realizar a força que tem uma paixão
Eu vejo um novo começo de era
De gente fina, elegante e sincera
Com habilidade pra dizer mais sim do que não

Hoje o tempo voa, amor
Escorre pelas mãos
Mesmo sem se sentir
Não há tempo que volte, amor
Vamos viver tudo que há pra viver
Vamos nos permitir

Não há tempo que volte, amor
Vamos viver tudo que há pra viver
Vamos nos permitir")

Song.create!( name: "Um Minuto Para o Fim do Mundo", artist: "", tags: "rock; Nacional", lyrics: "Tom:C
(intro 2x)A5C5G5F5
A5C5
Me sinto só,
G5F5
Mas quem é que nunca se sentiu assim
A5C5
Procurando um caminho pra seguir,
G5F5
Uma direção, respostas
A5C5G5
Um minuto para o fim do mundo.
F5A5
Toda sua vida em 60 segundos
C5G5F5
Uma volta no ponteiro do relógio pra viver
AmFCG
O tempo corre contra mim, sempre foi assim e
Am
sempre vai ser
FCGAm
Vivendo apenas pra vencer a falta que me faz vcê
FCGAm
De olhos fechados eu tento esconder a dor agora
FCGC
Por favor entenda, eu preciso ir embora porque
(refrão)
G
Quando estou com você
FC
Sinto meu mundo acabar,
G
Perco o chão sob os meus pés
C
Me falta o ar pra respirar
GF
E só de pensar em te perder por um segundo,
GC
Eu sei que isso é o fim do mundo
(solo base)CGAmF(2x)
AmFCGAm
Volto o relógio para trás tentando adiar o fim,
FCG
tentando esconder o medo de te perder quando me
Am
sinto assim
FCGAm
De olhos fechados eu tento enganar meu coração
FCGC
Fugir pra outro lugar em uma outra direção porque
(refrão 2x)
G
Quando estou com você
FC
Sinto meu mundo acabar,
G
Perco o chão sob os meus pés
C
Me falta o ar pra respirar
GF
E só de pensar em te perder por um segundo,
GC
Eu sei que isso é o fim do mundo
(solo base final 2x)CGAmF
Eu sei que isso é o fim do mundo.
(final) (F)C
Eu sei que isso é o fim (2x) do mundo")

Song.create!( name: "Vapor Barato", artist: "", tags: "rock; Nacional", lyrics: "Intro 2x:
AmG/A
Uauau.. Uauauauau..
FDmE7
Uauau.. Uauauauau..
Primeira parte:
AmG/A
Sim, eu estou tão cansado
F
Mas não pra dizer
DmE7
Que eu não acredito mais em você
Am
Com minhas calças vermelhas
G/A
Meu casaco de general
F
Cheio de anéis
DmE7
Eu vou descendo por todas as ruas
Am
Eu vou tomar aquele velho navio
G/AF
Eu vou tomar aquele velho navio
DmE7
Aquele velho navio
Am
Eu não preciso de muito dinheiro
G/A
Graças a Deus
F
E não me importa
DmE7
E não me importa não
Refrão:
Am
A minha Honey Baby
G/AFDmE7
Baby, Baby , Honey Baby
Am
Oh Minha Honey Baby,
G/AFDmE7
Baby, Baby, Honey Baby
Segunda parte:
AmG/A
Sim, eu estou tão cansado
F
Mas não pra dizer
DmE7
Que eu estou indo embora
Am
Talvez eu volte
G/A
Um dia eu volto quem sabe
F
Mas eu preciso
DmE7
Eu preciso esquecê-la
Am
A minha grande
G/A
A minha pequena
F
A minha imensa obsessão
DmE7
A minha grande obsessão
Refrão:
Am
A minha Honey Baby
G/AFDmE7
Baby, Baby , Honey Baby
Am
Oh Minha Honey Baby,
G/AFDmE7
Baby, Baby, Honey Baby
(repente intro 2x)
(repete primeira parte e refrão)")

Song.create!( name: "Vira Vira", artist: "", tags: "rock; Nacional", lyrics: "E5D#5C#5B5
B5C#5D#5E5
Primeira Parte:
E5B5
Fui convidado pra uma tal de suruba
Não pude ir
E5
Maria foi no meu lugar
B5
Depois de uma semana ela voltou pra casa
Toda arregaçada
E5
Não podia nem sentar
B5
Quando vi aquilo fiquei assustado
E5
Maria chorando começou a me explicar
A5
Daí então eu fiquei aliviado
B5
E dei graças a Deus
E5
Porque ela foi no meu lugar
Refrão:
B5
Roda, roda e vira
E5
Solta a roda e vem
B5
Me passaram a mão na bunda
E5
E ainda não comi ninguém
B5
Roda, roda e vira
E5
Solta a roda e vem
A5
Neste raio de suruba
B5
Já me passaram a mão na bunda
E ainda não comi ninguém!
Introdução:E5D#5C#5B5
B5C#5D#5E5
E5D#5C#5B5
B5C#5D#5E5
Segunda Parte:
E5B5
Oh, Manoel olha acá como eu estou
E5
Tu não imaginas como eu estou sofrendo
B5
Uma teta minha um negão arrancou
E5
E a outra que sobrou está doendo
B5
Oh, Maria vê se larga de frescura
E5
Que eu te levo no hospital pela manhã
A5
Tu ficaste tão bonita monoteta
B5
Mais vale um na mão
E5
Do que dois no sutiã
Refrão:
B5
Roda, roda e vira
E5
Solta a roda e vem
B5
Me passaram a mão na bunda
E5
E ainda não comi ninguém
B5
Roda, roda e vira
E5
Solta a roda e vem
A5
Neste raio de suruba
B5
Já me passaram a mão na bunda
E5D#5C#5B5
E ainda não comi ninguém
B5C#5D#5E5
Bate o pé
E5D#5B5
B5C#5D#5E5
Bate o pé
E5B5
Oh Maria essa suruba me excita
E5
(Arrebita, arrebita, arrebita)
B5
Então vai fazer amor com uma cabrita
E5
(Arrebita, arrebita, arrebita)
B5
Mas Maria isto é bom que te exercita
E5
(Bate o pé, arrebita, arrebita)
A5
Manoel tu na cabeça tem titica
B5E5
Larga de putaria e vá cuidar da padaria
Refrão:
B5
Roda, roda e vira
E5
Solta a roda e vem
B5
Me passaram a mão na bunda
E5
E ainda não comi ninguém
B5
Roda, roda e vira
E5
Solta a roda e vem
A5
Neste raio de suruba
B5
Já me passaram a mão na bunda
E5D#5C#5B5
E ainda não comi ninguém
Vamos lá, todo mundo dançando raios
Todo mundo comigo...
Uou, uou, uou
Oh Maria si deu mal, vamo lá!
Ai, como dói")

Song.create!( name: "Xote da alegria", artist: "", tags: "rock; Nacional", lyrics: "Tom:F#
[Intro]F#C#D#mC#
F#C#D#mC#
[Primeira Parte]
F#C#D#m
Se um dia alguém mandou
A#mB
Ser o que sou e o que gostar
F#C#
Não sei quem sou e vou mudar
F#
Pra ser aquilo que eu sempre quis
C#D#m
E se acaso você diz
A#mB
Que sonha um dia em ser feliz
F#C#
Vê se fala sério
[Pré-Refrão]
BF#C#
Pra que chorar sua mágoa?
BF#C#
Se afogando em agonia
BF#C#
Contra a tempestade em copo d`água
BF#G#m
Dance o xote da alegria
A#mBC#
Aaah haa hei hei
[Refrão]
F#C#
Se cum dêrum dêrum dêio
D#m
Dêrum derundê um dêrum dêrum
A#mB
Dê iô iô iê iê um dêrum dêrum
F#C#
Dêrum derôdô
F#C#
Se cum dêrum dêrum dêio
D#m
Dêrum derundê um dêrum dêrum
A#mB
Dê iô iô iê iê um dêrum dêrum
F#C#
Dêrum derôdô
(F#C#D#mC#)
(F#C#D#mC#)
[Primeira Parte]
F#C#D#m
Se um dia alguém mandou
A#mB
Ser o que sou e o que gostar
F#C#
Não sei quem sou e vou mudar
F#
Pra ser aquilo que eu sempre quis
C#D#m
E se acaso você diz
A#mB
Que sonha um dia em ser feliz
F#C#
Vê se fala sério
[Pré-Refrão]
BF#C#
Pra que chorar sua mágoa?
BF#C#
Se afogando em agonia
BF#C#
Contra a tempestade em copo d`água
BF#G#m
Dance o xote da alegria
A#mBC#
Aaah haa hei hei
[Refrão]
F#C#
Se cum dêrum dêrum dêio
D#m
Dêrum derundê um dêrum dêrum
A#mB
Dê iô iô iê iê um dêrum dêrum
F#C#
Dêrum derôdô
F#C#
Se cum dêrum dêrum dêio
D#m
Dêrum derundê um dêrum dêrum
A#mB
Dê iô iô iê iê um dêrum dêrum
F#C#
Dêrum derôdô
(F#C#D#mC#)
(F#C#D#mC#)
[Pré-Refrão]
BF#C#
Pra que chorar sua mágoa?
BF#C#
Se afogando em agonia
BF#C#
Contra a tempestade em copo d`água
BF#G#m
Dance o xote da alegria
A#mBC#
Aaah haa hei hei
[Refrão]
F#C#
Se cum dêrum dêrum dêio
D#m
Dêrum derundê um dêrum dêrum
A#mB
Dê iô iô iê iê um dêrum dêrum
F#C#
Dêrum derôdô
F#C#
Se cum dêrum dêrum dêio
D#m
Dêrum derundê um dêrum dêrum
A#mB
Dê iô iô iê iê um dêrum dêrum
F#C#F#
Dêrum derôdô")

Song.create!( name: "Zoio de Lula", artist: "", tags: "rock; Nacional", lyrics: "C#m
Tirou a roupa entrou no mar
G#m
Pensei meu Deus que bom que fosse
C#m
Tu me apresenta essa mulher
G#mC#m
Meu irmão te dava até um doce
G#m
Sem roupa ela é demais
C#m
Também por isso eu creio em Deus
Meu Bom, Meu Deus
G#m
Meu Bom, me trás
C#m
Ainda bem que eu trouxe
G#m
Até meu guarda-sol
C#m
Tenho toda tarde
G#m
Tenho a vida inteira
C#m
Já se foi aquele tempo
G#m
Da ladeira irmão
C#m
Já que se foi aquele tempo
G#m
Da ladeira irmão
[Pré-Refrão]
2xC#m  B5(9)
C#m
Meu escritório é na praia
B5(9)
Eu tô sempre na área
C#mB5(9)
Mas eu não sou da tua láia não
C#m
Meu escritório é na praia
B5(9)
Eu tô sempre na área
C#mB5(9)
Mas eu não sou daquela tua láia não
[Refrão]
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
[Segunda Parte]
C#m
Meu Deus me dê um motivo
G#m
Pois eu pago tanto mico
C#m
Ela me ignora
G#m
Na esperança eu ainda fico
C#m
Eu tô fritando aqui eu vou entregar
G#m
Não aguento mais
C#m
Mas se eu não falar hoje
G#m
Talvez nunca a veja mais
C#mG#m
O dia passa horas se estendem
C#mG#m
As pessoas ao redor nunca me entendem
C#mG#m
O dia passa horas se estendem
C#mG#m
As pessoas ao redor nunca me entendem, então
[Refrão]
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
[Solo]
[Segunda Parte]
C#mG#m
O dia passa horas se estendem
C#mG#m
As pessoas ao redor nunca me entendem
C#mG#m
O dia passa horas se estendem
C#mG#m
As pessoas ao redor nunca me entendem, então
[Primeira Parte]
C#m
Tirou a roupa entrou no mar
G#m
Pensei meu Deus que bom que fosse
C#m
Tu me apresenta essa mulher
G#mC#m
Meu irmão te dava até um doce
G#m
Sem roupa ela é demais
C#m
Também por isso eu creio em Deus
Meu Bom, Meu Deus
G#m
Meu Bom, me trás
C#m
Ainda bem que eu trouxe
G#m
Até meu guarda-sol
C#m
Tenho toda tarde
G#m
Tenho a vida inteira
C#m
Já se foi aquele tempo
G#m
Da ladeira irmão
C#m
Já que se foi aquele tempo
G#m
Da ladeira irmão
[Pré-Refrão]
C#m
Meu escritório é na praia
B5(9)
Eu tô sempre na área
C#mB5(9)
Mas eu não sou da tua láia não
C#m
Meu escritório é na praia
B5(9)
Eu tô sempre na área
C#mB5(9)
Mas eu não sou daquela tua láia não
[Refrão]
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
C#mB5(9)
Deixe viver, deixe ficar
C#mB5(9)
Deixe estar como está
[Final]C#mB5(9)
C#mB5(9)
C#mB5(9)
C#mB5(9)")

Song.create!( name: "Aerials", artist: "", tags: "rock; Internacional", lyrics: "[Intro]
Bb5
Life is a waterfall
We`re one in the river
And one again after the fall
Bb5
Swimming through the void
We hear the word
We lose ourselves, but we find it all
Bb5
Cause we are the ones that wanna play
Always wanna go
But you never wanna stay
Bb5
We are the ones that wanna choose
Always wanna play
But you never wanna lose
INTRO
Aerials, in the sky
When you lose small mind
You free your life
[Segunda Parte]
Bb5
Life is a waterfall
We drink from the river
Then we turn around, put up our walls
Bb5
Swimming through the void
We hear the word
We loose ourselves
But we find it all
Bb5
Cause we are the ones that wanna play
Always wanna go
But you never wanna stay
Bb5
We are the ones that wanna choose
Always wanna play
A         E F E F E
But you never wanna lose
[power INTRO]
Aerials, in the sky
When you lose small mind
You free your life
Aerials, so up high
When you free your eyes
Eternal prize
[ LIGHT]
Aerials, in the sky
When you loose small mind
You free your life
Aerials, so up high
When you free your eyes
Eternal prize
Oh oh oh...oh oh oh
Oh oh oh oh oh oh oh oh oh
Oh oh oh...oh oh oh
Oh oh oh oh oh oh oh oh ohD")

Song.create!( name: "Ain`t No Sunshine", artist: "", tags: "rock; Internacional", lyrics: "[Intro]Am
AmEmG
Ain`t no sunshine when she`s gone
AmEmG
It`s not warm when she`s away
AmEm
Ain`t no sunshine when she`s gone
Dm
And she`s always gone too long
AmEmGAm
Anytime she goes away
AmEmG
Wonder this time where she`s gone
AmEmG
Wonder if she`s gone to stay
AmEm
Ain`t no sunshine when she`s gone
Dm
And this house just ain`t no home
AmEmGAm
Anytime she goes away
[Ponte]
And I know, I know, I know, I know, I know
I know, I know, I know, I know, I know, I know
I know, I know, I know, I know, I know, I know
I know, I know, I know, I know, I know, I know
I know, I know, I know
Hey, I ought to leave the young thing alone
AmEmG
But ain`t no sunshine when she`s gone
AmEmG
Ain`t no sunshine when she`s gone
AmEmG
Only darkness everyday
AmEm
Ain`t no sunshine when she`s gone
Dm
And this house just ain`t no home
AmEmG
Anytime she goes away
AmEmG
Anytime she goes away
AmEmGAm
Anytime she goes away")

Song.create!( name: "Alive", artist: "", tags: "rock; Internacional", lyrics: "Son, she said, have I got a little story for you
What you thought was your daddy was nothing but a–
While you were sittin` home alone at age thirteen
Your real daddy was dyin`
Sorry you didn`t see him, but I`m glad we talked

Oh, I, oh I`m still alive
Hey, I, oh I`m still alive
Hey, I, oh I`m still alive
Hey, oh

While she walks slowly across a young man`s room
She said, I`m ready for you
Why I can`t remember anything to this very day
`Cept the look, the look
Oh, you know where, now I can`t see I just stare

I, I`m still alive
Hey, I, oh, I`m still alive
Hey, I, oh, I`m still alive
Hey, I, oh, I`m still alive, yeah
Ooh yeah, yeah, yeah, yeah, oh, ooh

Is something wrong, she said, of course there is
You`re still alive, she said, oh, and do I deserve to be?
Is that the question?
And if so, if so who answers?
Who answers?

I, oh I`m still alive
Hey, I, oh I`m still alive
Yeah, I, oh I`m still alive
Yeah, I
Ooh, I`m still alive!
Yeah yeah yeah yeah yeah yeah yeah!

Ooh yeah, ooh ooh
Ooh yeah, yeah yeah yeah")

Song.create!( name: "Always", artist: "", tags: "rock; Internacional", lyrics: "E|---------------------|
B|-7--9--10--9--7--5-5-|
G|---------------------|
|---------2x----------|-
Verso:
BmA
This romeo is bleeding but you can`t see his blood
GF#GABm
It`s nothing but some feelings that this old dog kicked up
BmA
It`s been raining since you left me now I`m drowning in the flood
GF#GABm
You see I`ve always been a fighter but without you I give up
BmA
Now I can`t sing a love song like the way it`s meant to be
GAGA
Well, I guess I`m not that good anymore but baby, that`s just me
Passagem:
DA
Yeah, I will love you
GBmA
Baby always
Refrão:
DAGBmA
And I`ll be there forever and a day always
DA
I`ll be there till the stars don`t shine till the heavens burst and the words don`t rhyme
GAGABm
And I know when I die, you`ll be on my mind and I`ll love you always
Passagem:
Verso:
BmA
Now you`re pictures that you left behind are just memories of a different life
GF#A
Some that made us laugh, some that made us cry one that made you have to say goodbye
BmA
What I`d give to run my fingers through your hair to touch your lips, to hold you near
GF#GABm
When you say your prayers try to understand I`ve made mistakes, I`m just a man
BmA
When he holds you close when he pulls you near when he says the words you`ve been needing to hear
GAGA
I`ll wish I was him `cause those words are mine to say to you till the end of time
Passagem:
DA
Yeah, I will love you
GBmA
Baby always
Refrão:
DAGBmA
And I`ll be there forever and a day always
Ligação:
CFG
If you told me to cry for you I could
CFG
If you told me to die for you
AmGF
I would take a look at my face
EmG
There`s no price I won`t pay to say these words to you
Solo:DAEmBmADAGAGAG)
Verso:
GA
Well, there ain`t no luck in these loaded dice but baby if you give me just one more try
BmGA
We can pack up our old dreams and our old lives we`ll find a place where the sun still shines
Passagem:
DA
Yeah, I will love you
GBmA
Baby always
Refrão:
DAGBmA
And I`ll be there forever and a day always
DA
I`ll be there till the stars don`t shine till the heavens burst and the words don`t rhyme
GAGABm
And I know when I die, you`ll be on my mind and I`ll love you alway")

Song.create!( name: "Another Brick in The Wall", artist: "", tags: "rock; Internacional", lyrics: "We don`t need no education
We don`t need no thought control
No dark sarcasm in the classroom
Teacher, leave them kids alone
Hey! Teacher! Leave them kids alone!

All in all, it`s just another brick in the wall
All in all, you`re just another brick in the wall

We don`t need no education
We don`t need no thought control
No dark sarcasm in the classroom
Teachers, leave them kids alone
Hey! Teacher! Leave us kids alone!

All in all, you`re just another brick in the wall
All in all, you`re just another brick in the wall

Wrong, do it again!
Wrong, do it again!
If you don`t eat your meat
You can`t have any pudding!
How can you have any pudding
If you don`t eat your meat?
You! Yes!
You, behind the bike sheds!
Stand still, laddie!")

Song.create!( name: "Basket case", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
Eb5Bb5C5G5Ab5
Do you have the time to listen to me whine about
Eb5Bb5
Nothing and everything all at once
Eb5Bb5C5G5Ab5
I am one of those melodramatic fools neurotic to the
Eb5Bb5
Bone no doubt about it
Ab5Bb5Eb5
Sometimes I give myself the creeps
Ab5Bb5Eb5
Sometimes my mind plays tricks on me
Ab5Bb5Eb5Db5C5
It all keeps adding up I think I`m cracking up am
Ab5Bb5(Eb5Bb5C5Bb5) (2x)
I Just paranoid? am I just stoned
Eb5Bb5C5G5Ab5
I went to a shrink to analyze my dreams she says it`s
Eb5Bb5
Lack of sex that`s bringing me down
Eb5Bb5C5G5Ab5
I went to a whore he said my life`s a bore so quit my
Eb5Bb5
Whining cause it`s bringing her down
Ab5Bb5Eb5
Sometimes I give myself the creeps
Ab5Bb5Eb5
Sometimes my mind plays tricks on me
Ab5Bb5Eb5Db5C5
It all keeps adding up I think I`m cracking up am
Ab5Bb5(Eb5Bb5C5Bb5) (4x)
I  Just paranoid?
Ab5Bb5
Grasping to control so I better hold
(Eb5Bb5C5G5Ab5Eb5Bb5) (2x)
Ab5Bb5Eb5
Sometimes I give myself the creeps
Ab5Bb5Eb5
Sometimes my mind plays tricks on me
Ab5Bb5Eb5Db5C5Ab5
It all keeps adding up I think I`m cracking up am I
Bb5(Eb5C5Ab5Eb5Bb5)  (4x)
Just paranoid? am I just stoned
(Ab5Eb5Bb5)")

Song.create!( name: "Better Man", artist: "", tags: "rock; Internacional", lyrics: "Waitin`, watchin` the clock, it`s four o`clock, it`s got to stop
Tell him take no more, she practices her speech
As he opens the door, she rolls over
Pretends to sleep as he looks her over

She lies and says she`s in love with him
Can`t find a better man
She dreams in color, she dreams in red
Can`t find a better man
Can`t find a better man
Can`t find a better man
Oh

Talkin` to herself, there`s no one else who needs to know, she tells herself
Oh
Memories back when she was bold and strong
And waiting for the world to come along
Swears she knew it, now she swears he`s gone

She lies and says she`s in love with him
Can`t find a better man
She dreams in color, she dreams in red
Can`t find a better man
She lies and says she still loves him
Can`t find a better man
She dreams in color, she dreams in red
Can`t find a better man
Can`t find a better man
Can`t find a better man
Yeah

She loved him, yeah
She don`t want to leave this way
She feeds him, yeah
That`s why she`ll be back again
Can`t find a better man
Can`t find a better man
Can`t find a better man
Can`t find a better man")

Song.create!( name: "", artist: "", tags: "rock; Internacional", lyrics: "Sheets of empty canvas
Untouched sheets of clay
Were laid spread out before me
As her body once did

All five horizons
Revolved around her soul
As the earth to the sun
Now the air I tasted and breathed
Has taken a turn

Oh, and all I taught her was everything
Oh, I know she gave me all that she wore

And now my bitter hands
Chafe beneath the clouds
Of what was everything
Oh, the pictures have
All been washed in 
Tattooed everything

I take a walk outside
I`m surrounded by some kids at play
I can feel their laughter
So, why do I sear?

Oh, and twisted thoughts that spin round my head
I`m spinning, oh, I`m spinning
How quick the sun can drop away?

And now my bitter hands
Cradle broken glass
Of what was everything
All the pictures have
All been washed in 
Tattooed everything
All the love gone bad
Turned my world to 
Tattooed all I see
All that I am
All that I`ll be, yeah

I know someday you`ll have a beautiful life
I know you`ll be a star
In somebody else`s sky, but why? Why? Why
Can`t it be, oh, can`t it be mine?


Adicionar aos favoritos

Adicionar à playlist

Tamanho do texto
Cifra
Imprimir
Corrigir

Anotações


Rolagem automática


")

Song.create!( name: " hole sun  [DROP]", artist: "", tags: "rock; Internacional", lyrics: "Drop D
A4Csus9   G5     F#m  F4   E
A4/GC/Bb
In my eyes, indisposed
G/FGbm/E
In disguise as no one knows
EbE/D
Hides the face, lies the snake
GFBb
The sun in my disgrace
A4/GC/Bb
Boiling heat, summer stench
G/FGbm/E
`Neath the  the sky looks dead
EbE/D
Call my name through the cream
AGBb
And I`ll hear you scream again
[Refrão]
Eb4
 hole sun
E/D
Won`t you come
GG/FBb
And wash away the rain
Eb4
 hole sun
E/D
Won`t you come
C    D
Won`t you come
A4/GC/Bb
Stuttering, cold and damp
G/FGbm/E
Steal the warm wind tired friend
EbE/D
Times are gone for honest men
GG/FBb
And sometimes far too long for snakes
A4/GC/Bb
In my shoes, a walking sleep
G/FGbm/E
And my youth I pray to keep
EbE/D
Heaven send Hell away
GG/FBb
No one sings like you anymore
[Refrão]
2X
Eb4
 hole sun
E/D
Won`t you come
GG/FBb
And wash away the rain
Eb4
 hole sun
E/D
Won`t you come
C    D
Won`t you come
 hole sun  hole sun
[riff SOLO]
Hang My head drown my fear
Till you all just disappear")

Song.create!( name: "Blitzkrieg Bop", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
[Intro-2x]A5D5E5
A5D5E5
A5D5E5
A5D5A5
Hey ho, let`s go
Hey ho, let`s go
[baixo]
Hey ho, let`s go
A5
Hey ho, let`s go
[Primeira Parte]
A5D5E5
They`re forming in straight line
A5D5E5
They`re going through a tight one
A5D5E5
The kids are losing their minds
A5D5A5
The Blitzkrieg Bop
A5D5E5
They`re piling in the back seat
A5D5E5
They`re generating steam heat
A5D5E5
Pulsating to the back beat
A5D5A5
The Blitzkrieg Bop
[Refrão]
D5
Hey ho, let`s go
A5D5A5
Shoot`em in the back now
D5
What they want, I don`t know
B5D5E5
They`re all raved up and ready to go
[Segunda Parte]
A5D5E5
They`re forming in straight line
A5D5E5
They`re going through a tight one
A5D5E5
The kids are losing their minds
A5D5A5
The Blitzkrieg Bop
A5D5E5
They`re piling in the back seat
A5D5E5
They`re generating steam heat
A5D5E5
Pulsating to the back beat
A5D5A5
The Blitzkrieg Bop
[Refrão]
D5
Hey ho, let`s go
A5D5A5
Shoot`em in the back now
D5
What they want, I don`t know
B5D5E5
They`re all raved up and ready to go
[Terceira Parte]
A5D5E5
They`re forming in straight line
A5D5E5
They`re going through a tight one
A5D5E5
The kids are losing their minds
A5D5A5
The Blitzkrieg Bop
A5D5E5
They`re piling in the back seat
A5D5E5
They`re generating steam heat
A5D5E5
Pulsating to the back beat
A5D5A5
The Blitzkrieg Bop
[Final]
Hey ho, let`s go
Hey ho, let`s go
[baixo]
Hey ho, let`s go
A5 [guit]
Hey ho, let`s go")

Song.create!( name: "Blue suede shoes.", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
A
Well, its one for the money,
A
Two for the show,
A
Three to get ready,
AAA
Now go, cat, go.
D7A
But dont you step on my blue suede shoes.
E7A
You can do anything but lay off of my blue suede shoes.
[Verse 2]
A
Well, you can knock me down,
A
Step in my face,
A
Slander my name
A
All over the place.
AAAA
Do anything that you want to do, but uh-uh,
Honey, lay off of my shoes
D7A
Dont you step on my blue suede shoes.
E7A
You can do anything but lay off of my blue suede shoes.
[Verse 3]
A
You can burn my house,
A
Steal my car,
A
Drink my liquor
A
From an old fruitjar.
AAAA
Do anything that you want to do, but uh-uh,
Honey, lay off of my shoes
D7A
Dont you step on my blue suede shoes.
E7A
You can do anything but lay off of my blue suede shoes.")

Song.create!( name: "Born to Be wild", artist: "", tags: "rock; Internacional", lyrics: "E
Get your motor runningHead out on the highwayLooking for adventureIn whatever comes my way
G    A    E
Yeah Darling
I like smoke and lightningHeavy metal thunder
Racing with the windAnd the feeling that I`m under
Yeah Darling
E
Like a true nature`s child
G
We were born, born to be wild
A            G             Em
We could climb so high, I never wanna die
E          D   E  D
Born to be wild
E          D   E  D
Born to be wild")

Song.create!( name: "Boulevard of broken dreams", artist: "", tags: "rock; Internacional", lyrics: "Tom:G
[Primeira Parte]
EmG
I walk a lonely road
DAEm
The only one that I have ever known
G
Don`t know were it goes
DA
But its home to me and I walk alone
(EmGDA)
EmG
I walk this empty street
DAEm
On the boulevard of broken dreams
G
Where the city sleeps
DAEmG
And I`m the only one and I walk alone
DAEmG
I walk alone I walk alone
DA5B5
I walk alone I walk a
[Refrão]
C5G5D5E5
My shadows the only one that walks
beside me
C5G5D5E5
My shallow hearts the only thing that`s
beating
C5G5D5E5
Sometimes I wish someone up there will
find me
C5G5B5
Till then I`ll walk alone
(EmGDA)
(EmGDA)
[Segunda Parte]
Em7G6
I`m walking down the line
D5(9)A4Em7
That divides me somewhere in my mind
G6D5(9)
On the border line of the edge
A4(7)Em7G6D5(9)A4(7)
And where I walk alone
Em7G6D5(9)
Read between the lines of what`s
A4Em7
Fucked up and every things all right
G6D5(9)
Check my vital signs to know I`m still
A4(7)
alive
Em7G6
And I walk alone
D5(9)A4(7)Em7G6
I walk alone I walk alone
D5(9)A5B5
I walk alone I walk a
[Refrão]
C5G5D5E5
My shadows the only one that walks
beside me
C5G5D5E5
My shallow hearts the only thing that`s
beating
C5G5D5E5
Sometimes I wish someone up there will
find me
C5G5B5
Till then I`ll walk alone
(EmGDA)
(EmGD)
A5B5
I walk alone I walk a
(C9G6D5(9)Em7)
(C9G6D5(9)Em7)
(C9G6D5(9)Em7)
(C9G6B5)
[Terceira Parte]
Em7G6
I walk this empty street
D5(9)A4Em7
On the boulevard of broken dreams
G6
Where the city sleeps
D5(9)A4(7)B5
And I`m the only one and I walk alone
[Refrão]
C5G5D5E5
My shadows the only one that walks
beside me
C5G5D5E5
My shallow hearts the only thing that`s
beating
C5G5D5E5
Sometimes I wish someone up there will
find me
C5G5B5
Till then I`ll walk alone
[Final]E5C5D5D5/C#G5E5/D#
E5C5D5D5/C#G5E5/D#
E5C5D5D5/C#G5E5/D#")

Song.create!( name: "Bullet With Butterfly Wings", artist: "", tags: "rock; Internacional", lyrics: "(BABG)EA
The world is a vampire,
sent to drai-ai-ain.
Secret destroyers
hold you up to the flames.
And what do I get
for my pai-ai-ain?
Betrayed desires
BEGA
and a piece of the game!
BEGABEGA
Even though I know, I suppose I`ll show
BEGA(BGA)com distorção
all my cool and cold like old job.
BGDAEmGDespite all my rage Im stil just a rat in a cage!
Despite all my rage I`m still just a rat in a cage!
Then someone will say what is lost can never be saved.
Despite all my rage I`m still just a rat in a cage!
(F#mA) [BREAK]
(BABG)EA
Now I`m naked!
Nothing but an animal,
but can you fake it
for just one more show?
And what do you wa...nt,
I want to cha-a-ange.
And what do you g...ot
BEGA
when you feel the same?
(corda Si solta)
BEGABEGA
Even though I know, I suppose I`ll show
BEGA(BGA)com distorção
all my cool and cold like old job.
BGDAEmGDespite all my rage I`m still just a rat in a cage!
Despite all my rage I`m still just a rat in a cage!
Then someone will say what is lost can never be saved.
Despite all my rage I`m still just a rat in a cage!
(F#mAEmG)   GUIT AGUDA
(F#mAEmG)   GUIT AGUDA
BGEA
Tell me I`m the only one,
tell me there`s no other one,
Jesus was an only son,
tell me I`m the chosen one,
Jesus was an only son for you!
F#......
[CLEAN GUIT]
BGDAEmGDespite all my rage I`m still just a rat in a cage!
Despite all my rage I`m still just a rat in a cage!
Then someone will say what is lost can never be saved.
)
Despite all my rage I`m still just a rat in a
[DIST]
Em G
cage!
BGDA
Despite all my rage I`m still just a rat in,
BGDA
Despite all my rage I`m still just a rat in,
BGDAEmG(F#mA)
Despite all my rage I`m still just a rat in a cage!
BGDA
Tell me I`m the only one,
tell me there`s no other one,
Jesus was an only son,
tell me I`m the chosen one,
Jesus was an only son for you!
( 4x )
BGDA
And I still believe that I cannot be saved!
EmG   F#")

Song.create!( name: "BYOB - soad  [DROP]", artist: "", tags: "rock; Internacional", lyrics: "Why do they always send the poor?
A Bb                                                                F
Barbarisms by Barbaras,
with pointed heels,G F E
A Bb
Victorious, victories kneel,F
For brand new spankin` deals.G F E
Esus                                                                                                                        F
Marching forward hypocritic and hypnotic computers,
You depend on our protection,
G     F    E … …    D
Yet you feed us lies from the tablecloth.
[Chorus]
La la la la la la ooooooo
DsusC
Everybody`s going to the party have a real good time,
Dancing in the desert blowing up the sunshine.
[Verse2]
A Bb                                                                                                                F
Kneeling roses disappearing into moses` dry mouth,
Breaking into Fort Knox stealin `r intentionsG F E
A BbF[scream]G F E
Hangers sitting dripped in oil, crying freedom!
Handed to obsoletion,
A      G    F  E
Still you feed us lies from the tablecloth.
[Chorus]
La la la la la la ooooooo
DsusC
Everybody`s going to the party have a real good time,
Dancing in the desert blowing up the sunshine.
DsusC
Everybody`s going to the party have a real good time,
Dancing in the desert blowing up the sunshine.
[Hook]
AC~B
Blast off, it`s party time,
AC~B
And we don`t live in a fascist nation!
AC~B
Blast off, it`s party time,
AC~B
And where the fuck are you?
DsusBb   A  e~f
Where the fuck are you?
DsusBb   A  e~f
Where the fuck are you?
DsusBb   A  e~f
Why don`t presidents fight the war
Why do they always send the poor?
DsusBb
Why don`t presidents fight the war
A [solta]  e~f
[3x]Why do they always send the poor?
[BRAKE]Why do they always send the poor?
[Verse2]
A Bb                                                                                                                F
Kneeling roses disappearing into moses` dry mouth,
Breaking into Fort Knox stealin `r intentionsG F E
A BbF[scream]G F E
Hangers sitting dripped in oil, crying freedom!
Handed to obsoletion,
A      G    F  E
Still you feed us lies from the tablecloth.
[Chorus]
La la la la la la ooooooo
DsusC
Everybody`s going to the party have a real good time,
Dancing in the desert blowing up the sunshine.
DsusC
Everybody`s going to the party have a real good time,
Dancing in the desert blowing up the sun….
DsusBb   E  e~f
Where the fuck are you?
Where the fuck are you?
DsusBb   A  e~f
Why don`t presidents fight the war
Why do they always send the poor?
DsusBb   A  e~f
Why don`t presidents fight the war
[3X] Why do they always send the poor?
A [descida]
A [solta]  e~f
[3X]Why    Do   They always send the poor?
[2X]They …..always send the poor")

Song.create!( name: "Californication", artist: "", tags: "rock; Internacional", lyrics: "Introdução 2x:AmF
[Primeira Parte]
Am
Psychic spies from China
F
Try to steal your mind`s elation
Am
Little girls from Sweden
F
Dream of silver screen quotations
CG
And if you want these kind of dreams
FDmAmFAmF
It`s Californication
Am
It`s the    edge of the world
F
And all of western civilization
Am
The sun may rise in the East
F
At least it settles in the final location
CG
It`s understood that Hollywood
FDm
Sells Californication
Primeira Ponte:AmFAmF
Am
Pay your surgeon very well
F
To break the spell of aging
Am
Celebrity Skin is this your chin
F
Or is that war your waging
AmF
First born unicorn
AmF
Hard core soft porn
[Primeiro Refrão]
CGDmAm
Dream of Californication
CGDm
Dream of Californication
Segunda Parte:AmFAmF
Am
Marry me girl be my fairy to the world
F
Be my very own constellation
Am
A teenage bride with a baby inside
F
Getting high on information
CG
And buy me a star on the Boulevard
FDmAmFAmF
It`s Californication
Am
Space may be the final frontier
F
But it`s made in a Hollywood basement
Am
Cobain can you hear the spheres
F
Singing songs off station to station
CG
And Alderaan`s not far away
FDm
It`s Californication
Segunda Ponte:AmFAmF
Am
Born and raised by those who praise
F
Control of population
Am
Everybody`s been there and
F
I don`t mean on vacation
AmF
First born unicorn
AmF
Hard core soft porn
[Segundo Refrão]
CGDmAm
Dream of Californication
CGDm
Dream of Californication
CGDmAm
Dream of Californication
CGDm
Dream of Californication
Solo 2x:F#mDF#mD
BmDAE
Solo 3x:BmDAE
Terceira Parte:AmFAmF
Am
Destruction leads to a very rough road
F
But it also breeds creation
Am
And earthquakes are to a girl`s guitar
F
They`re just another good vibration
CG
And tidal waves couldn`t save the world
FDm
From Californication
Terceira Ponte:AmFAmF
Am
Pay your surgeon very well
F
To break the spell of aging
Am
Sicker than the rest
There is no test
F
But this is what you`re craving
AmF
First born unicorn
AmF
Hard core soft porn
[Terceiro Refrão]
CGDmAm
Dream of Californication
CGDm
Dream of Californication
CGDmAm
Dream of Californication
CGDm
Dream of Californication")

Song.create!( name: "Comfortably Numb", artist: "", tags: "rock; Internacional", lyrics: "Hello? (Hello, hello, hello)
Is there anybody in there?
Just nod if you can hear me
Is there anyone at home?

Come on (come on, come on) now
I hear you`re feeling down
Well, I can ease your pain
And get you on your feet again

Relax (relax, relax, relax)
I`ll need some information first
Just the basic facts
Can you show me where it hurts?

There is no pain, you are receding
A distant ship`s smoke on the horizon
You are only coming through in waves
Your lips move, but I can`t hear what you`re saying

When I was a child, I had a fever
My hands felt just like two balloons
Now I`ve got that feeling once again
I can`t explain, you would not understand
This is not how I am

I have become comfortably numb
I have become comfortably numb

Okay (okay, okay, okay)
Just a little pinprick
There`ll be no more
But you may feel a little sick
Can you stand up? (Stand up, stand up)
I do believe it`s working, good
That`ll keep you going through the show
Come on, it`s time to go

There is no pain, you are receding
A distant ship`s smoke on the horizon
You are only coming through in waves
Your lips move, but I can`t hear what you`re saying

When I was a child, I caught a fleeting glimpse
Out of the corner of my eye
I turned to look, but it was gone
I cannot put my finger on it now
The child is grown
The dream is gone
And I have become
Comfortably numb")

Song.create!( name: "Cocaine", artist: "", tags: "rock; Internacional", lyrics: "If you wanna hang out
You`ve got to take her out
Cocaine
If you wanna get down
Down on the ground
Cocaine

She don`t lie
She don`t lie
She don`t lie
Cocaine

If you got bad news
You wanna kick them blues
Cocaine
When your day is done
And you wanna run
Cocaine

She don`t lie
She don`t lie
She don`t lie
Cocaine

If your thing is gone
And you wanna ride on
Cocaine
Don`t forget this fact
You can`t get it back
Cocaine

She don`t lie
She don`t lie
She don`t lie
Cocaine

She don`t lie
She don`t lie
She don`t lie
Cocaine")

Song.create!( name: "Cochise", artist: "", tags: "rock; Internacional", lyrics: "Primeira Parte:
Toms  >>> Baixo
8 batera + guit noise
I`ve been watching
While you`ve been coughing
I`ve been drinking life
While you`ve been nauseous
And so I drink to health
While you kill yourself
And I`ve got just one thing
That i can offer
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me
Solo:
G|-2b3r2...----2b3r2...--.-
14b15r14...-14b15r14...----|
I`m not a martyr
I`m not a prophet
And I won`t preach to you
But here`s a caution
You better understand
That I won`t hold your hand
But if it helps you mend
Then I won`t stop it
Segundo Refrão:
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me
B8    B
Drown if you want
And I`ll see you at the bottom
E8     E
Where you`ll crawl on my skin
And put the blame on me
D
So you don`t feel a thing
Terceiro Refrão:
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me
Go on and save yourself
And take it out on me")

Song.create!( name: "Come out and play", artist: "", tags: "rock; Internacional", lyrics: "DRUMS 3x
Guit E5  x 2 3 4
DRUMS 3x
You gotta keep `em separated
[riff intro   B  D F#-A   ]
[ aguda F# F# F#  A A  E ]
[4 X melodia oriental]
B  F#    A  B    D   F#-A
Like the latest fashion
Like a spreading disease
The kids are strappin` on their way to the classroom
Getting weapons with the greatest of ease
E   G      F#    B   D
The gangs stake their own campus locales
And if they catch you slippin` then it`s all over pal
B  F#    A  B    D   F#-A
If one guy`s colors and the other`s don`t mix
F#
They`re gonna bash it up
[Chorus][riff intro   B  D F#-A   ]
B  D    F#  A
Hey man you talkin` back to me?
Take him out[Break]
You gotta keep `em separated
Hey man you disrespecting me?
Take him out
You gotta keep `em separated
B  D    F#  AB  D
Hey they don`t pay no mind
F#    A  E                 C
If you`re under 18 you won`t be doing any time
[B  D    F#  A ]   F#    [B  D    F#  A ]
Hey come out and play
[4 X melodia oriental]
B  F#    A  B    D   F#-A
By the time you hear the siren
It`s already too late
One goes to the morgue and the other to jail
One guy`s wasted and the other`s a waste
E   G      F#    B   F#-A
It goes down the same as a thousand before
No one`s getting smarter
No one`s learning the score
B  F#    A  B    D   A
Your never ending spree of death a violence and hate
F#
Is gonna tie your own rope
[Chorus][riff intro   B  D F#-A   ]
[B  D    F#  A ]
Hey man you talkin` back to me?
Take him out
You gotta keep `em separated
Hey man you disrespecting me?
Take him out
You gotta keep `em separated
B  D    F#  AB  D
Hey they don`t pay no mind
F#    A  E                 C
If you`re under 18 you won`t be doing any time
[B  D    F#  A ]   F#    [B  D    F#  A ]
Hey come out and play
[4 X melodia oriental]
E   G      F#    B   F#-A
It goes down the same as a thousand before
No one`s getting smarter
No one`s learning the score
B  F#    A  B    D   A
Your never ending spree of death a violence and hate
F#
Is gonna tie your own rope
[B  D    F#  A ]
Hey man you talkin` back to me?
Take him out
You gotta keep `em separated
Hey man you disrespecting me?
Take him out
You gotta keep `em separated
B  D    F#  AB  D
Hey they don`t pay no mind
F#    A  E                 C
If you`re under 18 you won`t be doing any time
[B  D    F#  A ]   F#    [B  D    F#  A ]
Hey come out and play")

Song.create!( name: "Come together", artist: "", tags: "rock; Internacional", lyrics: "LOGO VIDEO
Primeira parte:
D5
Here come old flat top, he come
Grooving up slowly, he got
Joo Joo eyeball, he one
Holy roller, he got
A5
Hair down to his knee;
G5
Got to be a joker, he just do what he please.
(Repete Intro)
D5
He wear no shoe shine, he got
Toe jam football, he got
Monkey finger, he shoot
Coca-cola, He say
A5
I know you, you know me.
G5
One thing I can tell you is you got to be free
Refrão:
B5A5G5A5
Come Together, Right now,  over me
(Repete-Intro)
D5
He bag production, he got
Wal-rus gumboot, he got
O-no sideboard, he one
Spinal cracker, he got
A5
Feet down below his knee
G5
Hold you in his armchair, you can feel his disease
Refrão:
B5A5G5A5
Come Together, Right now,  over me
(Repete-Intro)
Solo:
D5
He roller coaster, he got
Early warning, he got
Muddy water, he one
Mo-jo filter he say
A5
One and one and one is three.
G5
Got to be good looking cause he so hard to see
Refrão:
B5A5G5A5
Come Together, Right now,  over me
(Repete Intro)
(Solo final - Com Slide):")

Song.create!( name: "Corazon espinado", artist: "", tags: "rock; Internacional", lyrics: "Intro:BmF#7
BmF#7
Esa mujer me esta matando
BmF#7
Me ha espinado el corazón
BmF#7
Por más que trato de olvidarla
BmF#7
Mi alma no da razón
BmF#7
Mi corazón aplastado
BmF#7
Dolido y abandonado
BmF#7
A ver a ver tu sabes dime mi amor
BmF#7
Cuanto amor y que dolor nos quedó
BmF#7Bm
Ah ah ah corazón espinado
F#7
Como duele me duele mamá
BmF#7Bm
Ah ah ah como me duele el amor
Segunda Parte:
BmF#7
Como duele como duele el corazón
BmF#7
Cuando uno es bien entregado
BmF#7
Pero no olvides mujer que algun día diras
BmF#7
Ay ay ay como me duele el amor
Segundo Refrão:
BmF#7Bm
Ah ah ah corazón espinado
F#7
Como duele me duele mamá
BmF#7Bm
Ah ah ah como me duele el amor
BmF#7Bm
Ah ah ah corazón espinado
F#7
Como duele me duele mamá
BmF#7Bm
Ah ah ah como me duele el amor
Solo:BmF#7
(Parte 1)
Ponte:
EmBm
Como me duele el olvido
EmBm
Como duele el corazón
DA
Como me duele estar vivo
EmF#7
Sin tenerte a un lado amor
Final:
BmF#7
Corazón espinado
BmF#7
Corazón espinado
BmF#7
Corazón espinado
BmF#7
Corazón espinado
(Solo Final)")

Song.create!( name: "Crazy little thing called love", artist: "", tags: "rock; Internacional", lyrics: "Intro Guit :  4xDD D4 D
D
This thing, called love
GCG
I just can`t handle it
D
This thing, called love
GCG
I must, get round to it
D
I ain`t ready
BbCD     [ Break ]
Crazy little thing called love
D
This thing, called love
GCG
It cries, in a cradle all night
D
It swings, it jives
GCG
It shakes all overlike a jellyfish
D
I kinda like it
BbCD       [break]
Crazy little thing called love
[Ponte]
G
There goes my baby
CG
She knows how to rock and roll
Bb
She drives me crazy
E
She gives me hot and cold fever
A
She leaves me in a cool
E
Cool sweat
[Segunda Parte]
D
I gotta be cool, relax
GCG
Get hip, get on my tracks
D
Take a back seat, hitch-hike
GCG
And take a long ride on my motor bike
D
Until I`m ready
BbCD
Crazy little thing called love
[Solo]BbDBb
EAE
[Segunda Parte]
I gotta be cool, relax
Get hip, get on my tracks
Take a back seat, hitch-hike
And take a long ride
On my motor bike
Until I`m ready
Crazy little thing called love
[Primeira Parte]
D
This thing, called love
GCG
I just  can`t  handle it
D
This thing, called love
GCG
I must, get round to it
D
I ain`t ready
BbCD
Crazy little thing called love
[Refrão Final]
BbCD
Crazy little thing called love
BbCD
Crazy little thing called love
BbCD
Crazy little thing called love
BbCD
Crazy little thing called love
BbCD
Crazy little thing called love
BbCD
Crazy little thing called love
BbCD
Crazy little thing called love")

Song.create!( name: "Crazy Train ", artist: "", tags: "rock; Internacional", lyrics: "(All aboard, hahaha)
(Ayy)

Crazy, but that`s how it goes
Millions of people living as foes
Maybe it`s not too late
To learn how to love and forget how to hate

Mental wounds not healing, life`s a bitter shame
I`m going off the rails on a crazy train
I`m going off the rails on a crazy train

I`ve listened to preachers, I`ve listened to fools
I`ve watched all the dropouts who make their own rules
One person conditioned to rule and control
The media sells it and you live the role

Mental wounds still screaming, driving me insane
I`m going off the rails on a crazy train
I`m going off the rails on a crazy train

I know that things are going wrong for me
You gotta listen to my words, yeah, yeah

Heirs of the Cold War, that`s what we`ve become
Inheriting troubles, I`m mentally numb
Crazy, I just cannot bear
I`m living with something that just isn`t fair

Mental wounds not healing, who and what`s to blame?
I`m going off the rails on a crazy train
I`m going off the rails on a crazy train

(Hahaha)
(The ledge)")

Song.create!( name: "Creep", artist: "", tags: "rock; Internacional", lyrics: "Intro]GBCCm
G
When you were here before
B
Couldn`t look you in the eyes
C
You`re just like an angel
Cm
Your skin makes me cry
G
You float like a feather
B
In a beautiful world
C
I wish I was special
Cm
You`re so fucking special
G
But I`m a creep
B
I`m a weirdo
C
What the hell am I doin` here
Cm
I don`t belong here
G
I don`t care if it hurts
B
I wanna have control
C
I want a perfect body
Cm
I want a perfect soul
G
I want you to notice
B
When I`m not around
C
You`re so fucking special
Cm
I wish I was special
G
But I`m a creep
B
I`m a weirdo
C
What the hell am I doin` here
Cm
I don`t belong here
GB
oooh oooh she`s running out the door
CCm
she`s running out   she run...run...run...ruuuuun
GBCCm
ruuuuun...  Ruuuuunnnnuunn
G
Whatever makes you happy
B
Whatever you want
C
You`re so fucking special
Cm
I wish I was special
G
But I`m a creep
B
I`m a weirdo
C
What the hell am I doin` here
Cm
I don`t belong here
G
I don`t belong here")

Song.create!( name: "Don`t Stop Believing", artist: "", tags: "rock; Internacional", lyrics: "Tom:E
[Intro]EBC#mA
EBG#mA
[Primeira Parte]
EBC#m
Just a small town girl
AE
Livin` in a lonely world
B
She took the midnight train
G#mAE
Going anywhere
[harmonico 7 casa]
BC#m
Just a city boy
AE
Born and raised in South Detroit
B
He took the midnight train
G#mA
Going anywhere
[Guit lick]
(EBC#mA)
(EBG#mA)
EBC#m
A singer in a smoky room
AE
The smell of wine and cheap perfume
B
For a smile, they can   share the night
G#mA
It goes on and on and on and on
[Segunda Parte]
A5E5
Strangers waiting
Up and down the boulevard
A5E5
Their shadows searching in the night
A5E5
Streetlights, people
Living just to find emotion
A5B5
Hiding somewhere in the night
(E5B5E5A5)
[Terceira Parte]
[Tab - Terceira Parte]
EBC#mA
A|-------------2----4-6-4--
E|--0---0-2-4--------------
--6-7------6-7-----------|
------5------------------|
EBG#mA
A|-------------2----4-6----
E|--0---0-2-4-----------4---
A|-----------6-7-----------|
E..-4-4-5------------------|
EBC#m
Working hard to get my fill
AE
Everybody   wants a thrill
B
Payin` anything to roll the dice
G#mAE
Just one more time
BC#m
Some will win   some will lose
AE
Some were born to sing the blues
B
Oh, the movie never ends
G#mA
It goes on and on and on and on
[Quarta Parte]
A5E5
Strangers waiting
Up and down the boulevard
A5E5
Their shadows searching in the night
A5E5
Streetlights, people
Living just to find emotion
A5B5
Hiding somewhere in the night
(E5B5E5A5)
[Solo]EBC#mA
EBG#mA
[Tab - Solo]
Parte 1 de 2
E|----------------------------17….
B|-------------------16h17h19-
G|----------14h16h18----------
D|-14h16h18-------------------
A|----------------------------
E|----------------------------
[Refrão]
EBC#m
Don`t stop believin`
AE
Hold on to the feelin`
BG#mA
Streetlights   people
EBC#m
Don`t stop believin`
AE
Hold on to the feelin`
BG#mA
Streetlights   people
EBC#m
Don`t stop believin`
AE
Hold on to the feelin`
BG#mA
Streetlights   people
Don`t stop")

Song.create!( name: "Dream On   -  0F", artist: "", tags: "rock; Internacional", lyrics: "LOGO VIDEO
Tom:Ab
Introdução:Fm/CCmD5-/CDb5-/CFm/CF4/CF5/CFm/CCmD5-/CDb5-/CFm/CF4/CF5/CFm(Riff da Introdução)Every time thatI look in the mirror
All these linesIn my face gettin` clearer
The past is goneIt went by  like dusk to dawn
Isn`t that the way?Everybody`s got their dues
In life to payFm5Eb5I know, nobody knowsDb5Eb5Where it comes and where it goesF5Eb5I know it`s everybody`s sinDb5Eb5You got to lose to know how to winBASS
Terceira Parte:Fm/CCmHalf my life`sIn books` written pages
Lived and learnedFrom fools and from sagesYou know it`s true
All the thingsCome back to youFmSing with meEb5Sing for the yearDb5Sing for the laughterEb5And sing for the tear
F5Sing with meEb5If it`s just for todayD5Maybe tomorrowDb5(Db5C5)The good lord will take you away(Riff do Refrão)Dedilhado
F5Sing with meSing for the yearSing for the laughterAnd sing for the tear
Sing with meIf it`s just for todayMaybe tomorrowThe good lord will take you awayQuarta Parte:Bb5Dream onC5Dream onDb5Dream onEb5F5Dream yourself a dream comes true(Solo 2)Bb5Dream onC5Dream onDb5Dream onEb5F5And dream until your dream comes true(Solo 3)Bb5Dream onC5Dream onDb5Dream onEb5Dream onF5Dream onG5Dream onAb5Bb5Dream on(Db5C5)Terceiro Refrão:Sing with meSing for the yearSing for the laughterAnd sing for the tear
Sing with meIf it`s just for todayMaybe tomorrowThe good lord will take you away
Sing with meSing for the yearSing for the laughterAnd sing for the tearSing with meIf it`s just for today
Maybe tomorrowThe good lord will take you away(C5)")

Song.create!( name: "Demons", artist: "", tags: "rock; Internacional", lyrics: "Eb7M
When the days are cold
Bb11
And the cards all fold
Cm9
And the saints we see
Ab11+
Are all made of gold
Eb7M
When your dreams all fail
Bb11
And the ones we hail
Cm9
Are the worst of all
Ab11+
And the blood`s run stale
Eb7M
I want to hide the truth
Bb11
I want to shelter you
Cm9
But with the beast inside
Ab11+
There`s nowhere we can hide
Eb7M
No matter what we breed
Bb11
We still are made of greed
Cm9
This is my kingdom come
Ab11+
This is my kingdom come
Refrão:
Eb
When you feel my heat
Bb
Look into my eyes
Cm
It`s where my demons hide
Ab
It`s where my demons hide
Eb
Don`t get too close
Bb
It`s dark inside
Cm
It`s where my demons hide
Ab
It`s where my demons hide
Segunda Parte:
Eb7M
At the curtain`s call
Bb11
It`s the last of all
Cm9
When the lights fade out
Ab11+
All the sinners crawl
Eb7M
So they dug your grave
Bb11
And the masquerade
Cm9
Will come calling out
Ab11+
At the mess you made
Eb7M
Don`t want to let you down
Bb11
But I am hell bound
Cm9
Though this is all for you
Ab11+
Don`t want to hide the truth
Eb7M
No matter what we breed
Bb11
We still are made of greed
Cm9
This is my kingdom come
Ab11+
This is my kingdom come
Refrão:
Eb
When you feel my heat
Bb
Look into my eyes
Cm
It`s where my demons hide
Ab
It`s where my demons hide
Eb
Don`t get too close
Bb
It`s dark inside
Cm
It`s where my demons hide
Ab
It`s where my demons hide
Terceira Parte:
Eb
They say it`s what you make
Bb
I say it`s up to fate
Cm
It`s woven in my soul
Ab
I need to let you go
Eb
Your eyes, they shine so bright
Bb
I want to save that light
Cm
I can`t escape this now
Ab
Unless you show me how
Refrão:
Eb
When you feel my heat
Bb
Look into my eyes
Cm
It`s where my demons hide
Ab
It`s where my demons hide
Eb
Don`t get too close
Bb
It`s dark inside
Cm
It`s where my demons hide
Ab
It`s where my demons hide
Eb7MBb11
E|------------------------------------------|
B|-3-------3--------3-------3---------------|
G|---8---8---8---8----8---8---8---8---------|
D|-----8-------8--------8-------8-----------|
A|-6----------------------------------------|
E|------------------6-----------------------|
Cm9Ab11+
E|-----------------------------------------------|
B|-3--------3---------3---------3----------------|
G|---8----8---8----8-----8----8---8----8---------|
D|-----10-------10---------10-------10-----------|
A|-3------------------11-------------------------|
E|-----------------------------------------------|")

Song.create!( name: "Drive   - 20", artist: "", tags: "rock; Internacional", lyrics: "Tom: Em
Intro 4x:EmEm7(9)C7MA5(7/9)
EmEm7(9)C7MA5(7/9)
Sometimes, i feel the fear of
EmEm7(9)C7MA5(7/9)
Uncertainty stinging clear.
EmEm7(9)C7M
And i can`t help but ask myself
A5(7/9)Em
How much i`ll let the fear
Em7(9)C7MA5(7/9)
Take the wheel and steer.
C7MA7
It`s driven me before,
C7M
And it seems to have a vague,
A7C7M
Haunting mass appeal.
A7
But lately i
C7M
Am beginning to find that i
A7
Should be the one behind the wheel.
EmEm7(9)C7MA5(7/9)EmEm7(9)
Whatever tomorrow brings, i`ll be there
C7MA5(7/9)
With open arms and open eyes.
EmEm7(9)C7MA5(7/9)EmEm7(9)
Whatever tomorrow brings, i`ll be there
C7MA5(7/9)
I`ll be there
EmEm7(9)C7MA5(7/9)
So if i    decide to waiver my
EmEm7(9)C7MA5(7/9)
Chance to be one of the hive
EmEm7(9)C7MA5(7/9)
Will i choose water over wine
EmEm7(9)C7MA5(7/9)
And hold my own and drive? Ah ah ah a
C7MA7
It`s driven me before,
C7M
And it seems to be the way
A7C7M
That everyone else gets around.
A7
But lately i`m beginning to find that
C7MA7
When i drive myself my light is found.
EmEm7(9)C7MA5(7/9)EmEm7(9)
Whatever tomorrow brings, i`ll be there
C7MA5(7/9)
With open arms and open eyes.
EmEm7(9)C7MA5(7/9)EmEm7(9)
Whatever tomorrow brings, i`ll be there
C7MA5(7/9)
I`ll be there
SOLO
C7MA7C7M
Would you choose water over wine....
A7
Hold the wheel and drive?
EmEm7(9)C7MA5(7/9)EmEm7(9)
Whatever tomorrow brings, i`ll be there
C7MA5(7/9)
With open arms and open eyes.
EmEm7(9)C7MA5(7/9)EmEm7(9)
Whatever tomorrow brings, i`ll be there
C7MA5(7/9)
I`ll be there
2x
EmEm7(9)C7MA5(7/9)
Du ru du ru du du ru
No no nono no no
C7MA7")

Song.create!( name: "Duality", artist: "", tags: "rock; Internacional", lyrics: "[Intro]
(I push my fingers into my)
D5
Eyes
F5
It`s the only thing
Ab5Eb5D5
That slow__ly stops the    ache
F5
But it`s made of all
Ab5Eb5
The things I have to
D5
Take
F5
Jesus it never ends
Ab5Eb5D5
It pushs its way inside
F5Ab5Eb5
If the pain goes onmooaaaaaahhhrr
(Riff 1)
I have screamed until my veins collapsed
I waited as my time`s elapsed
Now all I do is live with so much fate
I`ve wished for this, I`ve bitched at that
I`ve left behind this little fact
You cannot kill what you did not create
I`ve gotta say what I`ve gotta say
And then I swear I`ll go away
But I can`t promise you`ll enjoy the noise
I guess I`ll save the best for last
My future seems like one big past
You`re left with me `cause you left me no choice
(Riff 2)
I push my fingers intomyrrr
[Refrão]
D5
Eyes
F5
It`s the only thing
Ab5Eb5D5
That slow__ly stops the    ache
F5
If the pain goes on
Ab5Eb5D5
I`m not  gonna make it
(Riff 3)
[quebrada D E C]
(Riff da Primeira Parte)
Put me back together
Or separate the skin from bone
Leave me all the pieces
Then you can leave me alone
Tell me the reality
Is better than the dream
But I found out the hard way
Nothing is what it seems
(Riff 2       D D#)
I push my fingers into my
D5
Eyes
F5
It`s the only thing
Ab5Eb5D5
That slow__ly stops the    ache
F5
But it`s made of all
Ab5Eb5D5
The things I have to take
F5
Jesus it never ends
Ab5Eb5D5
It pushs its way inside
F5
If the pain goes on
Ab5Eb5D5
I`m not  gonna make it
[2x Riff intro B ]
[2x Riff intro B ]
All I`ve got
All I`ve got is insane
[4x Riff intro C ] vox alta
All I`ve got
All I`ve got is insane
(riff 2         D D#))
[Riff 4 subida]
I push my fingers intomyrrrrrghhhhhhhhhh
[Refrão]
D5
Eyes
F5
It`s the only thing
Ab5Eb5D5
That slow__ly stops the    ache
F5
But it`s made of all
Ab5Eb5D5
The things I have to take
F5
Jesus it never ends
Ab5Eb5D5
It pushs its way inside
F5
If the pain goes on
Ab5Eb5D5
I`m not  gonna make it
[2x Riff intro B  tatatata…]
[ C  3 Slow]
[2x Riff intro B slow ]
All I`ve got
All I`ve got is insane
[4x Riff intro C ] vox alta
All I`ve got
All I`ve got isinsane")

Song.create!( name: "Enter sandman", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
EmF
Say your prayers, little one
EmF
Don`t forget, my son
EmG
To include everyone
EmF
I tuck you in, warm within
EmF
Keep you free from sin
EmG
Till the sandman he comes
(EmF#mEmF#m)
(GF#mEm)
F#mF#11+
Sleep with one eye open
F#mF#11+
Gripping your pillow tight
F#mBF#m
Ex___it light
F#mBEm
En__ter night
F#mEm
Take my hand
GEmF#mEmF#mGEm
We`re off to Ne___ver  ne___ver  Land
4x(EmE11+A9)
(GEmF#mEm)
(F#mGF#mEm)
EmF
Something`s wrong, shut the light
EmF
Heavy thoughts tonight
EmG
And they aren`t of Snow White
EmF
Dreams of war, dreams of liars
EmF
Dreams of dragon`s fire
EmG
And of things that will bite Yeah
F#mF#11+
Sleep with one eye open
F#mF#11+
Gripping your pillow tight
F#mBF#m
Ex___it light
F#mBEm
En__ter night
F#mEm
Take my hand
GEmF#mEmF#mGEm
We`re off to Ne___ver  ne___ver  Land
EmE11+A9EmE11+A9
Now I lay me down to sleep
Pray the Lord my soul to keep
If I die before I wake
Pray the Lord my soul to take
F#mB9F#mB9
Hush, little baby,  don`t say a word
And never mind that  noise you heard
It`s just the beasts   under your bed
F#m
In your closet,  in your head
F#mBF#m
Ex___it light
F#mBEm
En__ter night
F#mEm")

Song.create!( name: "Even Flow (DROP)", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
Fre--ezin`, rests his head on a pillow
made of concrete, again
Oh, Fee--lin` maybe he`ll see a little better
set a days,   ooh yeah
Oh, hand out, faces that he sees time again
ain`t that familiar,  ooh yeah
Oh, dark grin, he can`t help, when he`s happy
looks insane,  oh yeah
(DC)
DBbDC
Even flow, thoughts arrive like butterflies
DBbDC
Oh, he don`t know, so he chases them away, yeah...ooh
DBbDC
Oh, someday yet, he`ll begin his life again
DAmCDAmC
life a--gain   life a--gain
Kne--elin`, looking through the paper through he
doesn`t know to read,   ooh yeah
Oh, pra--yin`, now to something that has never
showed him anything
Oh, fee--lin`, understands the weather of the
winters on its  way
Oh, cei--lings, few and far between all the legal
halls of shame,  yeah
DBbDC
Even flow, thoughts arrive like butterflies
DBbDC
Oh, he don`t know, so he chases them away, yeah...ooh
DBbDC
Oh, someday yet, he`ll begin his life again
DBbDC
Oh, whispering hands, gently lead, lead him away...
DC
him a--way, him a--way...        Yeah
[Solo]DC
DBbDC
Even flow, thoughts arrive like butterflies
DBbDC
Oh, he don`t know, so he chases them away, yeah...ooh
DBbDC
Oh, someday yet, he`ll begin his life again
DBbDC
Oh, whispering hands, gently lead, lead him away...
DC
him a--way, him a--way...        Yeah")

Song.create!( name: "Everlong [DROP]", artist: "", tags: "rock; Internacional", lyrics: "PLAY VIDEO
[clean]D7MB5(9)G5(9)B5(9)
[dist]D7MB5(9)G5(9)B5(9)
D7MB5(9)G5(9)B5(9)
[Primeira Parte]
D7M
Hello
B5(9)
I`ve waited here for you
G5(9)B5(9)
Everlong
D7M
Tonight
B5(9)
I throw myself into
G5(9)B5(9)
And out of the red, out of her head she sang
(D7MB5(9)G5(9)B5(9))
[Primeira Parte]
D7M
Come down
B5(9)
And waste away with me
G5(9)B5(9)
Down with me
D7M
Slow how
B5(9)
You wanted it to be
G5(9)B5(9)
I`m over my head, out of her head she sang
[Segunda Parte]
[Riff Segunda Parte]
3x(C#DEF#GF#A5)
And I wonder
When I sing along with you
[Refrão]
B5G5D5
If everything could ever feel this real forever
B5G5D5
If anything could ever be this good again
B5G5D5
The only thing I`ll ever ask of you
A5G5
You`ve got to promise not to stop when I say when
She sang
(D7MB5(9)G5(9)B5(9))
[Primeira Parte]
D7M
Breathe out
B5(9)
So I can breathe you in
G5(9)B5(9)
Hold you in
D7M
And now
B5(9)
I know you`ve always been
G5(9)B5(9)
Out of your head, out of my head I sang
[Segunda Parte]
[Riff Segunda Parte]
(C#DEF#GF#A5)
And I wonder
When I sing along with you
[Refrão]
B5G5D5
If everything could ever feel this real forever
B5G5D5
If anything could ever be this good again
B5G5D5
The only thing I`ll ever ask of you
A5G5
You`ve got to promise not to stop when I say when
She sang
[clean]D7MB5(9)G5(9)B5(9)
[dist]D7MB5(9)G5(9)B5(9)
[Riff Segunda Parte]
(C#DEF#GF#A5)
(C#DEF#GF#A5)
And I wonder
(C#DEF#GF#A5)
B5G5D5
If everything could ever feel this real forever
B5G5D5
If anything could ever be this good again
B5G5D5
The only thing I`ll ever ask of you
A5G5
You`ve got to promise not to stop when I say when
G5  G5  G5")

Song.create!( name: "Every breath you take", artist: "", tags: "rock; Internacional", lyrics: "[Intro]GEmC9DG
[Primera Parte]
G
Every breath you take
Em
Every move you make
C9
Every bond you break
D
Every step you take
Em
I`ll be watching you
G
Every single day
Em
Every word you say
C9
Every game you play
D9
Every night you stay
G
I`ll be watching you
[Refrão]
C9Bb5(9)
Oh, can`t you see
G
You belong to me
A5(9)
How my poor heart aches
D
With every step you take
[Primeira Parte - Variação]
G
Every move you make
Em
Every vow you break
C9
Every smile you fake
D
Every claim you stake
Em
I`ll be watching you
[Segunda Parte]
Eb5(9)
Since you`ve gone I been lost without a trace
F5(9)
I dream at night I can only see your face
Eb5(9)
I look around but it`s you I can`t replace
F5(9)
I feel so cold and I long for your embrace
Eb5(9)G9
I keep crying baby baby please
(EmC9DEmG)
(EmC9DG)
[Refrão]
C9Bb5(9)
Oh, can`t you see
G
You belong to me
A5(9)
How my poor heart aches
D
With every step you take
G
Every move you make
Em
Every vow you break
C9
Every smile you fake
D
Every claim you stake
Em
I`ll be watching you
C9
Every move you make
D
Every step you take
Em
I`ll be watching you
G
I`ll be watching you
(GEmC9)
Every Breath you take
Every move you make
Every bond you break
Every step you take
I`ll be watching you
Every single day
Every word you say
Every game you play
Every night you stay
I`ll be watching you")

Song.create!( name: "Falling Away From Me  [drp]", artist: "", tags: "rock; Internacional", lyrics: "[RIFF Intro]
4x4  E5-Bb5  E5-Bb5
[Riff]
Hey, I`m feeling tired
My time, is gone today
You flirt with suicide
Sometimes, that`s okay
Do what others say
I`m here, standing hollow
Falling away from me
Falling away from me
2x4  E5-Bb5  E5-Bb5
[Riff]
Day, is here fading
That`s when, I would say
I flirt with suicide
Sometimes kill the pain
I can always say
It`s gonna be better tomorrow
Falling away from me
Falling away from me
Refrão(4x)
A5 E5*        C5                          B5  A5
Beating me down  beating me
A5       E5*     C5                          B5    A5
beating me down     down     Into the ground
A5       E5*        C5                          B5    A5
Screamings of sound    beating me
A5          E5*  C5                 B5    A5
beating me  down down   Into the ground[riff]
[RIFFF}
Screaming some sound
Beating me, beating me
Down, down
Into the ground
It`s spinning round and round
(Falling away from me)
It`s lost and can`t be found
(Falling away from me)
It`s spinning round and round
(Falling away from me)
Slow it down
A5 E5*        C5                          B5  A5
Beating me down  beating me
A5       E5*     C5                          B5    A5
beating me down     down     Into the ground
A5       E5*        C5                          B5    A5
Screamings of sound    beating me
A5       E5*        C5                          B5    A5
beating me  down down   Into the ground
Groooouuuuundddd
Lá 7 casa
Clean chords
Am    Bm   C   F E  C
Twisting me, they won`t go away
Am    Bm   C   F E  A
So I pray, go away  [3a maior]
[RIFF}
Life`s falling away from me
It`s falling away from me
Life`s falling away from me
Fuck!
4x4  E5-Bb5  E5-Bb5
[refrao 2x]
A5 E5*        C5                          B5  A5
Beating me down  beating me
A5       E5*     C5                          B5    A5
beating me down     down     Into the ground
A5       E5*        C5                          B5    A5
Screamings of sound    beating me
A5          E5*    C5                          B5    A5
beating me  down down   Into the ground  [riff]
Groooouuuuundddd la 7a casa")

Song.create!( name: "Fear of The Dark", artist: "", tags: "rock; Internacional", lyrics: "Riff
D   C  D  C
A  G   A   F
[Solinho violao 2X]
D5Bb5C5
I am a man who walks alone
Bb5C5D5
And when I`m walking in a dark road
Bb5C5Bb5C5
At night or strolling through the park
D5Bb5C5
When the light begins to change
F5G5D5
I sometimes feel a little strange
Bb5C5
A little anxious when it`s dark
Bb5C5D5
Fear of the dark,    fear of the dark
C5Bb5F5G5D5
I have a constant fear that something`s always near
Bb5C5D5
Fear of the dark,    fear of the dark
C5Bb5F5G5D5
I have a phobia that someone`s always there
[Riff 1 RÉ SOLTA- 2x:]
(verso 2)D5Bb5Have you run your fingers down the ____ wallC5And have you felt your neck skin crawlD5When you`re searching for the ____ light?Bb5Sometimes when you`re scared to take a lookC5At the corner of the roomD5You`ve sensed that something`s watching you(refrão)Bb5C5D5C5Fear of the dark ,____ Fear of the dark,____Bb5F5G5D5I have a constant fear that something`s always nearBb5C5D5C5Fear of the dark, ____ Fear of the dark, ____Bb5F5G5D5I have a phobia that someone`s always there(verso 3)Bb5C5Have you ever been alone at nightD5C5D5Trought you heard footseps behindBb5C5And Turned around and no-one`s _____ there?
D5Bb5C5And you quicken up your paceF5G5D5You findi hard to look againBb5C5Because you`re ____ sure there`s someone there[Refrão SHUFFLE]
Bb5C5D5C5Fear of the dark ,____ Fear of the dark,____Bb5F5G5D5I have a constant fear that something`s always nearBb5C5D5C5Fear of the dark, ____ Fear of the dark, ____Bb5F5G5D5I have a phobia that someone`s always there[Riff 1 RÉ SOLTA- 2x:]
[ponte 4 frases pré solo]
[Frases Arpegios]
D5Bb5G5Bb5D5(Fear of The Dark, fear of the dark, fear of the dark,____fear of the dark...)[Riff 1 RÉ SOLTA- 2x:]D5Bb5C5Watching horrors films the night beforeF5G5D5Deabting ______ witches and folkloreBb5C5The unknown troubles on your mindD5Bb5C5Maybe your mind is playng tricksF5G5D5You Sense, and suddenly eyes ____ fixBb5C5On Dancing shadows from behind(refrão shuffle)Bb5C5D5C5Fear of the dark ,____ Fear of the dark,____Bb5F5G5D5I have a constant fear that something`s always nearBb5C5D5C5Fear of the dark, ____ Fear of the dark, ____Bb5F5G5D5I have a phobia that someone`s always thereBb5C5D5C5Fear of the dark ,____ Fear of the dark,____Bb5F5G5D5I have a constant fear that something`s always nearBb5C5D5C5Fear of the dark, ____ Fear of the dark, ____Bb5F5G5D5I have a phobia that someone`s always there(final)
Dedilhado 2x
D5Bb5C5
And when I`m walking in a dark road
F5G5D5I am a man who walks alone")

Song.create!( name: "Feel Good Inc - Grlz", artist: "", tags: "rock; Internacional", lyrics: "City`s breaking down on a camel`s back
They just have to go cos they don`t know wack
So all you fill the streets it`s appealing to see
You won`t get out the county, `cos you`re bad and free
You`ve got a new horizon It`s ephemeral style
A melancholy town where we never smile
And all I wanna hear is the message beep
My dreams, they`ve got to kiss, because I don`t get
sleep, no
DmC
Windmill, Windmill for the land
GmC
Turn forever hand in hand
DmC
Take it all in on your stride
GmC
It is ticking, falling down
DmC
Love forever, love is freely
GmC
Turned forever you and me
DmC
Windmill, windmill for the land
GmC
Is everybody in?
Laughin` gas these hazmats, fast cats
Linin` `em up like ass cracks
Play these ponies at the track
It`s my chocolate attack
Shit, I`m steppin` in the heart of this here (yeah)
Care Bear rappin` in harder this year (yeah)
Watch me as I gravitate, ha-ha-ha-ha-ha
Yo, we gon` ghost town this Motown
With yo` sound, you in the blink
Gon` bite the dust, can`t fight with us
With yo` sound, you kill the Inc
So don`t stop, get it, get it (get it)
Until you`re cheddar headed
And watch the way I navigate
Ha-ha-ha-ha-ha
Shake it shake it   Feel good")

Song.create!( name: "House of the rising sun", artist: "", tags: "rock; Internacional", lyrics: "There is a house in New Orleans
They call the Rising Sun
And it`s been the ruin of many a poor boy
And God, I know I`m one

My mother was a tailor
She sewed my new blue jeans
My father was a gamblin` man
Down in New Orleans

Now the only thing a gambler needs
Is a suitcase and a trunk
And the only time he`ll be satisfied
Is when he`s all drunk

Oh, mother, tell your children
Not to do what I have done
Spend your lives in sin and misery
In the House of the Rising Sun

Well, I got one foot on the platform
The other foot on the train
I`m goin` back to New Orleans
To wear that ball and chain

Well, there is a house in New Orleans
They call the Rising Sun
And it`s been the ruin of many a poor boy
And God, I know I`m o")

Song.create!( name: "Have you ever seen Rain", artist: "", tags: "rock; Internacional", lyrics: "C
Someone told me long ago
There`s a calm before the storm
GC
I know, it`s been comin` for some time
C
When it`s over, so they say
It will rain a sunny day
GC
I know, shinin` down like water
Refrão:
FG
I want to know
CG4/BAmAm/G
Have you ever seen the rain
FG
I want to know
CG4/BAmAm/G
Have you ever seen the rain
FGC(Frase 2)
Comin` down on a sunny day
Segunda Parte:
C
Yesterday and days before
Sun is cold and rain is hard
GC
I know, been that way for all my time
`Til forever, on it goes
Through the circle, fast and slow
GC
I know, it can`t stop, I wonder
Refrão:
FG
I want to know
CG4/BAmAm/G
Have you ever seen the rain
FG
I want to know
CG4/BAmAm/G
Have you ever seen the rain
FGC(Frase 2)
Comin` down on a sunny day
FG
I want to know
CG4/BAmAm/G
Have you ever seen the rain
FG
I want to know
CG4/BAmAm/G
Have you ever seen the rain
FGC(Frase 2)
Comin` down on a sunny day")

Song.create!( name: "Highway To Hell", artist: "", tags: "rock; Internacional", lyrics: "Living easy, livin` free
Season ticket, on a one way ride
Asking nothing, leave me be
Taking everything in my stride

Don`t need reason, don`t need rhyme
Ain`t nothin` that I’d rather do
Going down, party time
My friends are gonna be there too

I`m on the highway to hell
On the highway to hell
Highway to hell
I`m on the highway to hell

No stop signs, speed limit
Nobody`s gonna slow me down
Like a wheel, gonna spin it
Nobody`s gonna mess me `round

Hey, Satan!
Paid my dues
Playin` in a rockin` band
Hey, mama! Look at me
I`m on my way to the promised land

I`m on the highway to hell
Highway to hell
I`m on the highway to hell
Highway to hell

Don`t stop me!

I`m on the highway to hell
On the highway to hell
I`m on the (highway to hell)
On the highway (to hell)
Highway to hell
I`m on the highway to hell
Highway to hell
Highway to hell
Highway to hell

And I`m going down all the way
On the highway to hell


Adicionar aos favoritos

Adicionar à playlist

Tamanho do texto
Cifra
Imprimir
Corrigir

Rolagem automática

")

Song.create!( name: "Hotel California", artist: "", tags: "rock; Internacional", lyrics: "[Intro]BmF#AE
GDEmF#
BmF#AE
GDEmF#
[Primeira parte]
Bm
On a dark desert highway
F#
Cool wind in my hair
A
Warm smell of colitas
E
Rising up through the air
G
Up ahead in the distance
D
I saw a shimmering light
Em
My head grew heavy and my sight grew dim
F#
I had to stop for the night
Bm
There she stood in the doorway
F#
I heard the mission bell
A
And I was thinking to myself
E
This could be Heaven or this could be Hell
G
Then she lit up a candle
D
And she showed me the way
Em
There were voices down the corridor
F#
I thought I heard them say
[Refrão]
GD
Welcome to the Hotel California
F#
Such a lovely place
Bm
Such a lovely face
GD
Plenty of room at the Hotel California
Em
Any time of year
F#
You can find us here
[Segunda Parte]
Bm
Her mind is Tiffany-twisted
F#
She got the Mercedes-Benz
A
She got a lot of pretty, pretty boys
E
That she calls friends
G
How they dance in the courtyard
D
Sweet summer sweat
Em
Some dance to remember
F#
Some dance to forget
Bm
So I called up the captain
F#
Please bring me my wine, he said:
A
We haven`t had that spirit here since
E
Nineteen sixty-nine
GD
And still those voices are calling from far away
Em
Wake you up in the middle of the night
F#
Just to hear them say
[Refrão]
GD
Welcome to the Hotel California
F#
Such a lovely place
Bm
Such a lovely face
GD
We`re livin` it up at the Hotel California
Em
What a nice surprise
F#
Bring your alibis
[Terceira Parte]
Bm
Mirrors on the ceiling
F#
The pink champagne on ice, and she said:
A
We are all just prisoners here
E
Of our own device
G
And in the master`s chambers
D
They gathered for the feast
Em
The stab it with their steely knives
F#
But they just can`t kill the beast
Bm
Last thing I remember, I was
F#
Running for the door
A
I had to find the passage back
E
To the place I was before
G
Relax, said the night man
D
We are programmed to receive
Em
You can check out any time you like
F#
But you can never leave
[Solo - Final]BmF#AE
GDEmF#
BmF#AE
GDEmF#")

Song.create!( name: "How You Remind Me", artist: "", tags: "rock; Internacional", lyrics: "Tom:Bb
Versão Acústica
CmF
Never made it as a wise man
BbEb
I couldn`t cut it as a poor man stealin`
CmF
Tired of livin` like a blind man
BbEb
I`m sick of sight without a sense of feelin
CmFBbEb
And this is how you remind me
CmFBb
This is how you remind me
Eb
Of what I really am
CmFBb
This is how you remind me
Eb
Of what I really am
—-----
Cm                Eb                          .
It`s not like you    to say sorry
BbF
I was waiting on a different story
CmEb
This time I`m   mistaken
BbF
For handing you a heart worth breakin`
CmEb
I`ve been wrong,  I`ve been down
Bb5F
Been to the bottom of every bottle
CmEb
These five words in my head
BbF
Scream Are we having fun yet?
CmFBbEb
Yet?, Yet?, Yet?, no no
CmFBb5Eb
Yet?, Yet?, Yet?, no no
CmF
It`s not like you didn`t know that
BbEb
I said I love you and I swear I still do
CmF
It must have been so bad
BbEb
Cause livin` with me must have damn near killed you
CmFBb
And this is how you remind me
Eb
Of what I really am
CmF
This is how you remind me
Eb
Of what I really am
(Refrão) 1X
*****apenas tocando os acordes base.
Cm                Eb                            It`s not like you    to say sorry
BbF
I was waiting on a different story
CmEb
This time I`m   mistaken
BbF
For handing you a heart worth breakin`
CmEb
I`ve been wrong,  I`ve been down
Bb5F
Been to the bottom of every bottle
CmEb
These five words in my head
BbF
Scream Are we having fun yet?
CmFBbEb
Yet?, Yet?, Yet?, no no
CmFBb5Eb
Yet?, Yet?, Yet?, no no
*Toque esta parte suavemente
Apenas com um violão.
----------------------------------------
Verso 3*                                        Cm                   F                    I     Never made it as a wise man                 I
Bb                       Eb                   I
I couldn`t cut it as a poor man stealin`    I
Cm           F         Bb       Eb          I
And this is how you remind me               I
Cm        F        Bb      Eb                 I
This is how you remind me                   I
---------------------------------------
*
**** *Agora ela já é tocada normalmente
CmFBb
This is how you remind me
Eb
Of what I really am
CmFBb
This is how you remind me
Eb
Of what I really am
Refrão (1X)
Cm                Eb
***** apenas tocando os acordes base.
It`s not like you    to say sorry
BbF
I was waiting on a different story
CmEb
This time I`m   mistaken
BbF
For handing you a heart worth breakin`
CmEb
I`ve been wrong,  I`ve been down
Bb5F
Been to the bottom of every bottle
CmEb
These five words in my head
BbF
Scream Are we having fun yet?
CmFBbEb
Yet?, Yet?, Yet?, no no
CmFBb5Eb
Yet?, Yet?, Yet?, no no
CmFBb5Eb
Yet?, Yet?, Yet?, no no
CmFBb5Eb
Yet?, Yet?, Yet?, no no")

Song.create!( name: "Hunger Strike    (temple of the dog)", artist: "", tags: "rock; Internacional", lyrics: "I don`t mind stealing bread
From the mouths of decadence
But I can`t feed on the powerless
When my cup`s already overfilled

Yeah
But it`s on the table
The fire is cookin`
And they`re farming babies
While the slaves are working

The blood is on the table
And their mouths are choking
But I`m goin` hungry
Yeah

I don`t mind stealing bread
From the mouths of decadence
But I can`t feed on the powerless
When my cup`s already overfilled
Uh, huh

But it`s on the table
The fire is cookin`
And they`re farming babies
While the slaves are working

And it`s on the table
Their mouths are choking
But I`m going hungry (goin` hungry)
I`m goin` hungry (goin` hungry)
I`m goin` hungry (goin` hungry)

I`m goin` hungry (goin` hungry)
I`m goin` hungry (goin` hungry)

Yeah, I don`t mind stealin` bread (I don`t mind)
No, I don`t mind stealin` bread
I`m goin` hungry (goin` hungry)
I`m goin` hungry (goin` hungry)


Adicionar aos favoritos

Adicionar à playlist

Tamanho do texto
Cifra
Imprimir
Corrigir

Rolagem automática

")

Song.create!( name: "I Don`t Want To Miss A Thing", artist: "", tags: "rock; Internacional", lyrics: "Tom:D
(Dedilhado Introdução)
Parte 1 de 8                           1/2
B7A9/C#
E|-----------------------------------------
B|--------------------------2-----2-----2--
G|-4-----4-----4-----4---------4-----4-----
D|-----------------------------------------
A|-2--2-----2-----2-----2---4--------------
E|-----------------------------------------
E|-----------------------------------------
B|----2------------------------------------
G|-4-----4---------------------------------
D|-----------------------------------------
A|-----------------------------------------
E|-----------------------------------------
Parte 2 de 8                          1/2
E4
E|-----------------------------------------
B|-5-----5-----5-----5-----5-----5-----5---
G|----4-----4-----4-----4-----4-----4------
D|-----------------------------------------
A|-----------------------------------------
E|-0-----------------------0---------------
E|----5------------------------------------
B|-4-----4---------------------------------
G|-----------------------------------------
D|-----------------------------------------
A|-----------------------------------------
E|-----------------------------------------
Parte 3 de 8                          1/2
B7A9/C#
E|-----------------------------------------
B|--------------------------2-----2-----2--
G|-4-----4-----4-----4---------4-----4-----
D|-----------------------------------------
A|-2--2-----2-----2-----2---4--------------
E|-----------------------------------------
E|-----------------------------------------
B|----2------------------------------------
G|-4-----4---------------------------------
D|-----------------------------------------
A|-----------------------------------------
E|-----------------------------------------
(Repete Parte 1)
Parte 4 de 8
E4
E|-------------------------2---------------
B|-5-----5-----5-----5-----5--5--3\2--3--5-
G|----4-----4-----4-----4--4---------------
D|-----------------------------------------
A|-----------------------------------------
E|-0-----------------------0---------------
Parte 5 de 8                          1/2
B7A9/C#
E|-----------------------------------------
B|--------------------------2-----2-----2--
G|-4-----4-----4-----4---------4-----4-----
D|-----------------------------------------
A|-2--2-----2-----2-----2---4--------------
E|-----------------------------------------
E|-----------------------------------------
B|----2------------------------------------
G|-4-----4---------------------------------
D|-----------------------------------------
A|-----------------------------------------
E|-----------------------------------------
Parte 6 de 8
E4
E|-------------------------2---------------
B|-5-----5-----5-----5-----5--5--3\2--3--5-
G|----4-----4-----4-----4--4---------------
D|-----------------------------------------
A|-----------------------------------------
E|-0-----------------------0---------------
Parte 7 de 8                          1/2
B7A9/C#
E|-----------------------------------------
B|--------------------------2-----2-----2--
G|-4-----4-----4-----4---------4-----4-----
D|-----------------------------------------
A|-2--2-----2-----2-----2---4--------------
E|-----------------------------------------
E|-----------------------------------------
B|----2------------------------------------
G|-4-----4---------------------------------
D|-----------------------------------------
A|-----------------------------------------
E|-----------------------------------------
Parte 8 de 8
E|-----------------------------------------
B|-5-----5-----5-----5-----2h3p2-----------
G|----4-----4-----4-----4---------4--2-----
D|-----------------------------------------
A|-----------------------------------------
E|-0---------------------------------------
Primeira Parte:
D6D6/C#D6/B
I could stay awake just to hear you breathing
D6/GD6/F#
Watch you smile while you are sleeping
D6/E
While you`re far away and dreaming
D6D6/C#D6/B
I could spend my life in this sweet surrender
D6/GD6/F#D6/E
I could stay lost in this moment   forever
D6/F#D6/G
Every moment spent with you
D6/A
Is a moment of treasure
Parte 1 de 8
D6D6/C#
D6/B
D6/GD6/F#
D6/E
D6D6/C#
D6/B
D6/F#D6/G
D6/A
Refrão:
DA9/C#
Don`t wanna close my eyes
Em7(9)
I don`t wanna fall asleep
G5/F#G
`Cause I`d miss you baby
A4D
And I don`t wanna miss a thing
A9/C#
`Cause even when I dream of you
Em7(9)
The sweetest dream would never do
G5/F#G
I`d still  miss you baby
A4D
And I don`t wanna miss a thing
(A9/C#Em7(9))
Primeira Parte com variação na letra:
D
Laying close to you
A9/C#Bm7(11)
Feeling your heart beating
GD9/F#
And I`m wondering what you`re dreaming
Em7
Wondering if it`s me you`re seeing
D
Then I kiss your eyes
A9/C#Bm7(11)
And thank God we`re together
F#m7(11)G7M
And I just want to stay with you
A4
In this moment forever, forever and ever
Refrão:
DA9/C#
Don`t wanna close my eyes
Em7(9)
I don`t wanna fall asleep
G5/F#G
`Cause I`d miss you baby
A4D
And I don`t wanna miss a thing
A9/C#
`Cause even when I dream of you
Em7(9)
The sweetest dream would never do
G5/F#G
I`d still  miss you baby
A4D
And I don`t wanna miss a thing
Segunda Parte:
C9
I don`t wanna miss one smile
C9/B
I don`t wanna miss one kiss
Bb9(11+)
I just wanna be with you
F/A
Right here with you, just like this
C9
I just wanna hold you close
C9/B
I feel your heart so close to mine
Dm7(9)
And just stay here in this moment
A4A
For all the rest of time
Refrão 2x:
DA9/C#
Don`t wanna close my eyes
Em7(9)
I don`t wanna fall asleep
G5/F#G
`Cause I`d miss you baby
A4D
And I don`t wanna miss a thing
A9/C#
`Cause even when I dream of you
Em7(9)
The sweetest dream would never do
G5/F#G
I`d still  miss you baby
A4D
And I don`t wanna miss a thing
Parte Final:
(Bm7(11)C#m7(11)Em7(11)G5/F#G5A4)
(DA9/C#Em7(9)G5/F#G5A4)")

Song.create!( name: "I miss you - Blink182", artist: "", tags: "rock; Internacional", lyrics: "IntroBbF/AGmF/A
BbF/A
Hello there
The angel from my nightmare
GmF/A
The shadow in
The background of the morgue
The unsuspecting victim
Of darkness in the valley
We can live like Jack and Sally
If we want
Where you can always find me
And we`ll have Halloween on Christmas
And in the night
We`ll wish this never ends
We`ll wish this never ends
[Interlúdio]
BbCmBb/DBb/FEb
I miss you, miss you
I miss you, miss you
[Segunda Parte]
(Guitarra 4x)
BbF/A
Where are you
And I`m so sorry
GmF/A
I cannot sleep
I cannot dream tonight
I need somebody and always
This sick strange darkness
Comes creeping on
So haunting every time
And as I stared I counted
The webs from all the spiders
Catching things
And eating their insides
Like indecision to call you
And hear your voice of treason
Will you come home
And stop this pain tonight
Stop this pain tonight
BbCmBb/DBb/F  Eb
Don`t waste your time on me
You`re already
The voice inside my head
Don`t waste your time on me
You`re already
The voice inside my head
BbCmBb/DBb/FEb... (miss you miss you)
4x Don`t waste your time on me
You`re already
The voice inside my head")

Song.create!( name: "I Will Survive", artist: "", tags: "rock; Internacional", lyrics: "Tom:Am
[Intro]B°E
[Primeira Parte]
Am
At first I was afraid
Dm
I was petrified
G
Kept thinking I could never live
C7M
Without you by my side
F7M
But then I spent so many nights
Bm7(b5)
Thinking how you did me wrong
E4
I grew strong
E7
I learned how to get along
Am
And so you`re back
Dm
From outer space
G
I just walked in to find you here
C7M
With that sad look upon your face
F7M
I should have change that stupid lock
Bm7(b5)
I should have made you leave your key
E4
If I had known for just one second
E7
You`d be back to bother me
[Pré-Refrão]
Am
Oh now go
Dm
Walk out the door
G
Just turn around now
C7M
Cause you`re not welcome anymore
F7MBm7(b5)
Weren`t you the one who tried to hurt me with goodbye?
E4
Did you think I`d crumble?
E7
Did you think I`d lay down and die?
[Refrão]
Am
Oh not I
Dm
I will survive
G
Oh, as long as I know how to love
C7M
I know I`ll stay alive
F7M
I`ve got all my life to live
Bm7(b5)
I`ve got all my love to give
E4
I will survive
E7
I will survive  Hey Hey
E7
2X [Solo TECLADO]
AmDmG7C7M
F7MBm7(b5)E4E7
[Segunda Parte]
Am
It took all the strength I had
Dm
Not to fall apart
G
I`m trying hard to mend
C
The pieces of my broken  heart
F
And I spent oh so many nights
Bm7(b5)
Just felling sorry for myself
E4
I used to cry
E7
But now I hold my head up high
Am
And you`ll see me
Dm
With somebody new
G
I`m not that chained-up little person
C7M
Still in love with you
F7M
And so you felt like dropping in
Bm7(b5)
And just expect me to be free
E4
But now I`m saving all my lovin`
E7
For someone who`s lovin`me
[Pré-Refrão]
Am
Oh now go
Dm
Walk out the door
G
Just turn around now
C7M
Cause you`re not welcome anymore
F7MBm7(b5)
Weren`t you the one who tried to break me with goodbye?
E4
Did you think I`d crumble?
E7
Did you think I`d lay down and die?
[Refrão]
Am
Oh not I
Dm
I will survive
G
Oh, as long as I know how to love
C7M
I know I`ll stay alive
F7M
I`ve got all my life to live
Bm7(b5)
I`ve got all my love to give
E4
I will survive
E7[Break 2 comp]
I will survive
[PBreak
Am
Oh now go
Dm
Walk out the door
G
Just turn around now
C7M
Cause you`re not welcome anymore
F7MBm7(b5)
Weren`t you the one who tried to hurt me with goodbye?
E4
Did you think I`d crumble?
E7
Did you think I`d lay down and die?
[Refrão] junto com o teclado
Am
Oh not I
Dm
I will survive
G
Oh, as long as I know how to love
C7M
I know I`ll stay alive
F7M
I`ve got all my life to live
Bm7(b5)
I`ve got all my love to give
E4
I will survive
E7
I will survive
E7
2X [Solo TECLADO]
AmDmG7C7M
F7MBm7(b5)
E4E7
E4E7
Am
It took all the strength I had
Dm
Not to fall apart
G
I`m trying hard to mend
C
The pieces of my broken  heart
F
And I spent oh so many nights
Bm7(b5)
Just felling sorry for myself
E4
I used to cry
E7
But now I hold my head up high
Am
And you`ll see me
Dm
With somebody new
G
I`m not that chained-up little person
C7M
Still in love with you
F7M
And so you felt like dropping in
Bm7(b5)
And just expect me to be free
E4
But now I`m saving all my lovin`
E7
For someone who`s lovin`me
[Pré-Refrão]
Am
Oh now go
Dm
Walk out the door
G
Just turn around now
C7M
Cause you`re not welcome anymore
F7MBm7(b5)
Weren`t you the one who tried to break me with goodbye?
E4
Did you think I`d crumble?
E7
Did you think I`d lay down and die?
[Refrão]
Am
Oh not I
Dm
I will survive
G
Oh, as long as I know how to love
C7M
I know I`ll stay alive
F7M
I`ve got all my life to live
Bm7(b5)
I`ve got all my love to give
E4
I will survive
E7")

Song.create!( name: "In The End", artist: "", tags: "rock; Internacional", lyrics: "[Intro]DmCBbC
DmCBbC
[Primeira Parte]
(It starts with one)
Dm
One thing I don`t know why
C
It doesn`t even matter how hard you try
Bb
Keep that in mind I designed this rhyme
C
To explain in due time
(All I know)
Dm
All I know time is a valuable thing
C
Watch it fly by as the pendulum swings
Bb
Watch it count down to the end of the day
C
The clock ticks life away
(It`s so unreal)
Dm
It`s so unreal, didn`t look out below
C
Watch the time go right out the window
Bb
Trying to hold on but didn`t even know
C
Wasted it all just to
(Watch you go)
Dm
Watch you go, I kept everything inside
C
And even though I tried it all fell apart
Bb
What it meant to me will eventually
C
Be a memory of a time when
[Refrão]
Dm
I`ve tried so hard
F
And got so far
C
But in the end
Bb
It doesn`t even matter
CDm
I had to fall
F
To lose it all
C
But in the end
Bb
It doesn`t even matter
[Segunda Parte]
Dm
One thing I don`t know why
C
It doesn`t even matter how hard you try
Bb
Keep that in mind I designed this rhyme
C
To remind myself how
(I`ve tried so hard)
Dm
I`ve tried so hard in spite
Of the way you were mocking me
C
Acting like I was part of your property
Bb
Remembering all the times
You`ve fought with me
C
I`m surprised it got so far
(Got so far)
Dm
Things aren`t the way they were before
C
You wouldn`t even recognize me anymore
Bb
Not that you knew me back then
C
But it all comes back to me
Dm
(In the end)
You kept everything inside
C
And even though I tried it all fell apart
Bb
What it meant to me will eventually
C
Be a memory of a time when
[Refrão]
Dm
I`ve tried so hard
F
And got so far
C
But in the end
Bb
It doesn`t even matter
CDm
I had to fall
F
To lose it all
C
But in the end
Bb
It doesn`t even matter
[Ponte]
DmC
I put my trust in you
BbC
Pushed as far as I can go
Dm
And for all this
C
There`s only one thing
BbC
You should know
DmF
I put my trust in you
CBb
Pushed as far as I can go
CDm
And for all this
F
There`s only one thing
CBb
You should know
[Refrão]
Dm
I`ve tried so hard
F
And got so far
C
But in the end
Bb
It doesn`t even matter
CDm
I had to fall
F
To lose it all
C
But in the end
Bb
It doesn`t even matter
[Final]DmCBbC
DmCBbCDm")

Song.create!( name: "Is This Love - 0F", artist: "", tags: "rock; Internacional", lyrics: "I should have known better
Than to let you go alone
It`s times like these
I can`t make it on my own
Wasted days and sleepless nights
And I can`t wait to see you again

I find I spend my time
Waiting on your call
How can I tell you, babe
My back`s against the wall
I need you by my side
To tell me it`s alright
`Cause I don`t think I can take anymore

Is this love that I`m feeling?
Is this the love that I`ve been searching for?
Is this love or am I dreaming
This must be love
`Cause it`s really got a hold on me
A hold on me

I can`t stop the feeling
I`ve been this way before
But with you I`ve found the key
To open any door
I can feel my love for you
Growing stronger day by day
And I can`t wait to see you again
So I can hold you in my arms

Is this love that I`m feeling?
Is this the love that I`ve been searching for?
Is this love or am I dreaming?
This must be love
`Cause it`s really got a hold on me
A hold on me

Is this love that I`m feeling?
Is this the love that I`ve been searching for?

Is this love or am I dreaming?
Is this the love that I`ve been searching for?

Is this love or am I dreaming?
Is this the love that I`ve been searching for?

Is this love or am I dreaming?
Is this the love that I`ve been searching for?

Is this love or am I dreaming?
Is this the love that I`ve been searching for?")

Song.create!( name: "Jeremy", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
Intro 4x
D|------------7-------5----------------
A|-0--5h7--0-------0-------------------
E|------------------------------------|
(Violão)
At home, drawing pictures
Of mountain tops
With him on top
Lemon yellow Sun
Arms raised in a V
The dead lay
In pools of brown below
[Segunda Parte]
(Guitarra Base)
Daddy didn`t give attention
To the fact that mommy didn`t care
King Jeremy, the wicked
Oh, ruled his world
[Primeiro Refrão]
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
[Terceira Parte]
Clearly I remember
Picking on the boy
Seemed a harmless little fuck
Oh, but we unleashed a lion
Gnashed his teeth
And bit the recess lady`s breast
How could I forget?
And he hit me
With a surprise left
My jaw left hurting
Oh, dropped wide open
Just like the day
Oh, like the day I heard
[Quarta Parte]
Daddy didn`t give affection, no
And the boy
Was something
That mommy wouldn`t wear
King Jeremy, the wicked
Oh, ruled his world
[Segundo Refrão]
(Guitarra Base)
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
[Interlúdio]
Try to forget this
Try to erase this
[Terceiro Refrão]
4x   F7M     A
F7M  D5  Em7  C9
From the board
( A  A/B  A/C  D5 )
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
F7M            D5
Jeremy spoke in
Em7  C9     A
Cla____ass today
F7M            D5
Jeremy spoke in
Em7     C9
Spoke  in
A
Jeremy spoke in, spoke in
F   G     A9
Jeremy spoke in Cla_ass today
8x  F   G     A9
Uhh uhh
Uooo  ooohhh o  ohhh
Uooo  ooohhh o  ohhh
Ai ai ai ai
Final 1:
e8 D8 C8 b8 a8 G8 a8")

Song.create!( name: "Jaded", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
Intro 2x:
D|--6-6-6-6-4-4-------|
A|--0-----------------|
E|--------------------|
D|--6~6b7r6-4-6-4-----|
A|--0-----0-----------|
E|--------------------|
E|--0-0-0-0-----------|
B|--3-3-0-2-----------|
G|--2-2-2-2-----------|
AAmaj7
Hey ja-ja-jaded,
Dsus2
you`ve got your mama`s style
DA
But your yesterday`s child to me
Amaj7
So jaded
Dsus2
You think that`s where it`s at
DBm
But is that where it`s supposed to be
DBmD
You`re gettin` it all over me  X-rated
AF#mC#m
My My     ba__by blue
E
Yeah I`ve been thinkin` about you
AF#mC#m
My My     ba__by blue
ED
Yeah you`re so jaded
Bm
And I`m the one that jaded you
Refrão:
[Mini intro]
AAmaj7
Hey j-j-jaded
Dsus2
In all it`s misery
DA
It will always be what I love
Amaj7
And hated
Dsus2D
And maybe take a ride to the other side
Bm
We`re thinking of
DBm
We`ll slip into the velvet glove
D
And be jaded
AF#mC#m
My my ba__by blue
E
Yeah I`m thinking about you
AF#mC#m
My my ba__by blue
ED
Yeah I`m so jaded
Bm
And baby I`m afraid of you
[Mini ntro]
ED
Your thinking`s so complicated
EBm
I`ve had it all up to here
ED
But it`s so overrated
C
Love and hate it
B7
Wouldn`t trade it
Bb
Love me jaded
Solo:
Amaj7Dmaj7E
E|--------------------2-4-5--9br-9p7----7----------|
B|--5-2-----------2-5---------------10---10-9-10v~~|
G|------2-------2----------------------------------|
D|--------4-2-4------------------------------------|
A|-------------------------------------------------|
E|-------------------------------------------------|
AA7+
Hey j-j-jaded
Dsus2
There ain`t no baby please
DBm
When I`m shootin` the breeze with her
DBm
When everything you see is a blur
And ecstasy`s what you prefer
AF#mC#m
My my ba__by blue
E
Yeah I`m talkin` about you
AF#mC#m
My my ba__by blue
E
Yeah I`ve been thinkin` about you
AF#mC#m
My my ba__by blue
ED
Yeah you`re so jaded
E
Baby
D
Jaded
E
Baby
D
You`re so jaded
E
`cause I`m the one that jaded you
[Intro]")

Song.create!( name: "Killing In The Name", artist: "", tags: "rock; Internacional", lyrics: "Tom:D
Introdução:
Intro —> Re  ZZZZZZ na voz  (com o baixo inicio)
Killing in the name of!
4x
Some of those that work forces
Are the same that burn crosses
–
Killing in the name of
Killing in the name of
Primeiro Interlúdio:
4x And now you do what they told ya
4X And now you do what they told ya
4X And now you do what they told ya
—---
2X
Those who died are justified
For wearing the badge
They`re the chosen whites
You justify those that died
By wearing the badge
They`re the chosen whites
Segunda Parte:
Some of those that work forces
Are the same that burn crosses
Some of those that work forces
Are the same that burn crosses
RIFF
Some of those that work forces
Are the same that burn crosses
Some of those that work forces
Are the same that burn crosses
Killing in the name of
Killing in the name of
Segundo Interlúdio:
--------------------------------------------|
4X And now you do what they told ya
8X and now you do what they told ya
(Now you`re under control)
And now you do what they told ya
Those who died are justified
For wearing the badge
They`re the chosen whites
You justify those that died
By wearing the badge
They`re the chosen whites
Those who died are justified
For wearing the badge
They`re the chosen whites
You justify those that died
By wearing the badge
They`re the chosen whites
Come on
4X Fuck you, I won`t do what they tell me
4X Fuck you, I won`t do what they tell me
Terceira Parte:
4X Fuck you, I won`t do what they tell me
4X Fuck you, I won`t do what they tell me
Final:
Motherfucker")

Song.create!( name: "Last Nite", artist: "", tags: "rock; Internacional", lyrics: "Tom:C
Intro:CFG
C
Last night she said
Dm
Oh, Baby, I feel so down
G
Oh, and turned me off
EmDm
When I feel left out
C
So I, I turned around
Dm
Oh, Baby, I don`t care no more
G
I know this for sure
EmDm
I`m walking out that door
C
Well, I`ve been in town
For just about fifteen minutes now
Dm
Oh, Baby, I feel so down
G
And I don`t know why
EmDm
I keep walking for miles
FG
But the people they don`t understand
FG
No, girlfriends, they can`t understand
FG
Your grandsons, they won`t understand
FG
On top of this I ain`t ever gonna understand
C
Last night she said
Dm
Oh, Baby, I feel so down
G
Oh, and turned me off
EmDm
When I feel left out
C
So I, I turned around
Dm
Oh, Baby, I`m gonna be alright
G
It was a great big lie
EmDm
As I left that night, yeah
C   C  FG   FG
Solo:CFG
FG
Oh, people they don`t understand
FG
No, girlfriends, they don`t understand
FG
In spaceships, they won`t understand
FG
And me, I ain`t ever gonna understand
C
Last night she said
Dm
Oh, Baby, I feel so down
G
She had turned me off
EmDm
When I feel left out
C
So I, I turned around
Dm
Oh, little girl, I don`t care no more
G
I know this for sure
EmDm
I`m walking out that door, yeah
Final: (CFG)")

Song.create!( name: "Learn to Fly", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
[Intro]BF#mEBF#mE
BF#m
Run and tell all of the angels
E
This could take all night
BF#mE
Think I need a devil to help me get things right
BF#m
Hook me up a new evolution
E
Cause this one is a lie
BF#m
We sat around laughing,and watching
E
the last one die
[Refrão]
BF#m
Now looking to the sky to save me
E
Looking for a sign of life
BF#mE
Looking for something to help me burn out bright
BF#m
I`m looking for a complication
E
Looking cause I`m tired of trying
GA
Make my way back home when I learn to fly high
Intro (BF#mE)
(BF#mE)
BF#m
Think I`m done nursing the patience
E
It could wait one night
BF#mE
I`d Give it all away if you give me one last try
BF#mE
We live happily ever trapped if you just
save my life
BF#mE
Run and tell the angels that everything`s alright
[Refrão]
BF#m
I`m looking to the sky to save me
E
Looking for a sign of light
BF#mE
Looking for something to help me burn out bright
BF#m
I`m looking for a complication
E
Looking cause I`m tired of trying
GAE
Make my way back home when I learn to fly high
GAB
Make my way back home when I learn to fly
GDE
....along with me I can`t quite make it alone
GA            B
Try to make this life my own … FLY
GDE
...along with me I can`t quite make it alone
GA
Try to make this life my own
BF#m
I`m looking to the sky to save me
E
Looking for a sign of life
BF#mE
Looking for something to help me burn out bright
BF#m
I`m looking for a complication
E
Looking cause I`m tired of trying
GA
Make my way back home when I learn to
BF#m
Looking to the sky to save me
E
Looking for a sign of life
BF#mE
Looking for something to help me burn out bright
BF#m
I`m looking for a complication
E
Looking cause I`m tired of trying
GAE
Make my way back home when I learn to fly
GAE
Make my way back home when I learn to fly
GA
Make my way back home when I learn to, to, to
B   B   B   B     B E F#m")

Song.create!( name: "Like a Stone", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
GmF
On a cobweb afternoon
Dm7(11)Eb
In a         room full of emptiness
GmF
By a freeway I confess
Dm7(11)Eb
I was         lost in the pages
GmF
Of a book full of death
Dm7(11)Eb
Reading how we`ll die alone
GmF
And if we`re good we`ll lay to rest
Dm7(11)Eb
Anywhere we want to go
[Refrão]
GmGm/ABbF/AGm
In your   house I long to be
GmGm/ABbF/AGm
Room by     room patiently
EbGmF/AGm
I`ll wait for you there like a stone
EbGmD7
I`ll wait for you there alone
(GmFDm7(11)Eb)
GmF
On my deathbed I will pray
Dm7(11)Eb
To the          gods and the angels
GmF
Like a pagan to anyone
Dm7(11)Eb
Who will         take me to Heaven
GmF
To a place I recall
Dm7(11)Eb
I was there so long ago
GmF
The sky was bruised, the wine was bled
Dm7(11)Eb
And there you led me on
[Refrão]
GmGm/ABbF/AGm
In your   house I long to be
GmGm/ABbF/AGm
Room by     room patiently
EbGmF/AGm
I`ll wait for you there like a stone
EbGmD7
I`ll wait for you there alone, alone
[Solo]GmGm/ABbF/AGm
GmGm/ABbF/AGm
EbGmF/AGmEbGmD7
[Segunda parte]
EbBb
And on I read
D7Eb
Until the day was gone
Ebm7C
And I sat in regret
D7Gm
Of all the things I`ve done
EbBb
For all that I`ve blessed
D7Eb
And all that I`ve wronged
Ebm7C
In dreams until my death
D7
I will wander on
[Refrão]
GmGm/ABbF/AGm
In your   house I long to be
GmGm/ABbF/AGm
Room by     room patiently
EbGmF/AGm
I`ll wait for you there like a stone
EbGmD7
I`ll wait for you there alone, alone
[Final]Eb")

Song.create!( name: "Losing My Religion", artist: "", tags: "rock; Internacional", lyrics: "[Intro]FAmFAm
[Primeira Parte]
GAm
Oh, life is bigger
Em
It`s bigger than you
Am
And you are not me
Em
The lengths that I will go to
Am
The distance in your eyes
EmDm
Oh, no, I`ve said too much
G
I set it up
[strings]
Am
That`s me in the corner
Em
That`s me in the spotlight
Am
Losing my religion
Em
Trying to keep up with you
Am
And I don`t know if I can do it
EmDm
Oh no, I`ve said too much
G
I haven`t said enough
[Refrão]
F
I thought that I heard you laughing
Am
I thought that I heard you sing
FAmG
I think I thought I saw you try
[No strings]
Am
Every whisper
Em
Of every waking hour
Am
I`m choosing my confessions
Em
Trying to keep an eye on you
Am
Like a hurt lost
And blinded fool, fool
EmDm
Oh, no, I`ve said too much
G
I set it up
[strings]
Am
Consider this, consider this
Em
The hint of the century
Am
Consider this
Em
The slip that brought me
To my knees failed
Am
What if all these fantasies
Em
Come    flailing around?
DmG
Now I`ve said too much
[Refrão]
F
I thought that I heard you laughing
Am
I thought that I heard you sing
FAmG
I think I thought I saw you try
[Segunda Parte]
[No strings]
(AmGFG)
[Solinho desce de Mi c12]
CD
But that was just a dream
CD
That was just a dream
[Primeira Parte]
[ strings]
Am
That`s me in the corner
Em
That`s me in the spotlight
Am
Losing my religion
Em
Trying to keep up with you
Am
And I don`t know if I can do it
EmDm
Oh, no, I`ve said too much
G
I haven`t said enough
[Refrão Final]
F
I thought that I heard you laughing
Am
I thought that I heard you sing
FAm
I think I thought I saw you try
F
But that was just a dream
Am
Try, cry, why, try?
F
That was just a dream
AmGAm
Just a dream, just a dream, dream
Riff mi casa12")

Song.create!( name: "Like a Virgin", artist: "", tags: "rock; Internacional", lyrics: "Tom:G
F
I made it through the wilderness, somehow I made it through
GmF
Didn`t know how lost I was, until I found you
I was beat, incomplete, I`d been had, I was sad and blue
GmDm
But you made me feel
GmDmC
Yeah, you made me feel shiny and new
F
Like a virgin, touched for the very first time
GmF
Like a virgin, when your heart beats, next to mine
F
Gonna give you all my love, boy, my fear is fading fast
GmF
Been saving it all for you, `cause only love can last
You`re so fine and you`re mine make me strong, yeah, you make me bold
GmDm
Oh, your love thawed out
GmDmC
Yeah, your love thawed out what was scared and cold
F
Like a virgin, touched for the very first time
GmFDm
Like a virgin, when your heart beats, next to mine
GDmGDmG
Ooh, ooh, ooh,      ooh, ooh, ooh
F
You`re so fine and you`re mine, I`ll be yours `till the end of time
GmDm
`Cause you made me feel
GmDmC
Yeah, you made me feel I`ve nothing to hide")

Song.create!( name: "Linger  (Strgs)", artist: "", tags: "rock; Internacional", lyrics: "Tom:D
[Intro]
[Tab - Intro - 4x]
4x
E|-----2--
B|---3----
G|-0------
D|--------
4x D
(A6AA6ACG)
[Primeira Parte]
D
If you, if you could return
A
Don`t let it burn, don`t let it fade
C
I`m sure I`m not being rude
But it`s just your attitude
G
It`s tearing me apart
It`s ruining everyday
D
I swore, I swore I would be true
A
And honey so did you
C
So why were you holding her hand?
Is that the way we stand?
G
Were you lying all the time?
Was it just a game to you?
[Refrão]
D
But I`m in so deep
A
You know I`m such a fool for you
C
You got me wrapped around your finger
G
Do you have to let it linger?
Do you have to? do you have to?
D
Do you have to let it linger?
[Ponte]
A
Oh, I thought the world of you
C
I thought nothing could go wrong
G
But I was wrong, I was wrong
[Segunda Parte]
D
If you, if you could get by
A
Trying not to lie
C
Things wouldn`t be so confused
And I wouldn`t feel so used
G
But you always really knew
I just wanna be with you
[Refrão]
D
But I`m in so deep
A
You know I`m such a fool for you
C
You got me wrapped around your finger
G
Do you have to let it linger?
Do you have to? do you have to?
D
Do you have to let it linger?
[Solo]ACG
[Refrão Final]
D
But I`m in so deep
A
You know I`m such a fool for you
C
You got me wrapped around your finger
G
Do you have to let it linger?
Do you have to? do you have to?
D
Do you have to let it linger?
A
You know I`m such a fool for you
C
You got me wrapped around your finger
G
Do you have to let it linger?
Do you have to? do you have to?
D
Do you have to let it linger?
[Final]ACGD")

Song.create!( name: "Love of My Life", artist: "", tags: "rock; Internacional", lyrics: "Love of my life, you`ve hurt me
You`ve broken my heart
And now you leave me

Love of my life, can`t you see?
Bring it back, bring it back
Don`t take it away from me
Because you don`t know
What it means to me (means to me)

Love of my life, don`t leave me
You`ve taken my love (all my love)
And now desert me

Love of my life, can`t you see? (Please, bring it)
Bring it back, bring it back
Don`t take it away from me
Because you don`t know
What it means to me

You will remember
When this is blown over
And everything`s all by the way
When I grow older
I will be there at your side
To remind you how I still love you (I still love you)

Hurry back, hurry back
Please, bring it back home to me
Because you don`t know
What it means to me (means to me)

Love of my life
Love of my life
Ooh, ooh")

Song.create!( name: "Man in the box", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
I`m the man in the box
Buried in my shit
Won`t you come and save me? Save me
E      G    D      A
Feed my eyes, can you sew them shut?
Jesus Christ, deny your maker
He who tries, will be wasted
Oh feed my eyes, now you`ve sewn them shut
Ow
Ow
I`m the dog who gets beat
Shove my nose in shit
Won`t you come and save me? Save me
Feed my eyes, can you sew them shut?
Jesus Christ, deny your maker
He who tries, will be wasted
Oh feed my eyes, now you`ve sewn them shut
Feed my eyes, can you sew them shut?
Jesus Christ, deny your maker
He who tries, will be wasted
Oh feed my eyes, now you`ve sewn them shut")

Song.create!( name: "My sacrifice", artist: "", tags: "rock; Internacional", lyrics: "[Introdução]Bm7(9)G5(9)D5Bm7(9)G5(9)
D5Bm7(9)G5(9)
[Primeira Parte]
D5
Hello my friend we meet again
It`s been a while where should
Bm7(9)G5(9)
we begin  Feels like forever
D5
Within my heart are memories
Bm7(9)
Of perfect love that you gave to me
G5(9)
I remember
Bm7(9)G5(9)D5
[Refrão]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DA11/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5  D57
My sacrifice
Bm7(9)G5(9)
[Segunda Parte]
D5
We`ve seen our share of ups and downs
Bm7(9)
Oh how quickly life can turn around in
G5(9)
an instant
D5
It feels so good to reunite
Bm7(9)
Within yourself and within your mind
G5(9)
Let`s find peace there
[Refrão]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DD/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5
My sacrifice
F#  E  D5
I just want to say hello again
D5+D5+ D5(9)
I just want to say hello again
[Refrão]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DD/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DD/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5
My sacrifice
F#  E  D5
I just want to say hello again
D5+D5+ D5(9)
I just want to say hello again
D5
My sacrifice")

Song.create!( name: "My Hero", artist: "", tags: "rock; Internacional", lyrics: "Tom:E
[Intro]EC#m7EC#m7
EC#m7EC#m7
F#mA5
[Tab - Guitarra Solo - Riff 1]
E|0--0----0--0------0---------0--0----0--0------0----|
B|4--4h5--4--0----0---0---0---4--4h5--4--0----0---0--|
G|-----------4--4-------4----------------4--4-------4|
F#A5
E|---------------------------------------------------|
B|---------------------------------------------------|
G|---------------------------------------------------|
D|-----------2---------------------------------------|
A|-----4-2---0---------------------------------------|
E|2--2-----4-----------------------------------------|
[Primeira Parte]
[Tab - Guitarra Solo - Primeira Parte]
E|-0-0-0-0-0-0-0-0-0----0-0-0----0-0-----------------|
B|-5-5-5-5-5-5-4-4-7p4--4-4-7p4--4-4-----------------|
G|---------------------------------------------------|
D|---------------------------------------------------|
A|---------------------------------------------------|
E|---------------------------------------------------|
E|0---0-0-0-0-0-0-0-0----0-0-0-0-0-0-----------------|
B|4h5-5-5-5-5-5-4-4-7p4--4-4-7-5-5-5-----------------|
G|---------------------------------------------------|
D|---------------------------------------------------|
A|---------------------------------------------------|
E|---------------------------------------------------|
EC#m7EC#m7
Too alarming now to talk about
EC#m7EC#m7
Take your pictures down and shake it out
EC#m7EC#m7
Truth or consequence, say it aloud
EC#m7EC#m7
Use that evidence, race it around
[Primeiro Refrão]
[Tab - Guitarra Solo - Riff do Refrão]
A5
A5
There goes my hero
(C#5)E5(B5)
Watch him as he goes
A5
There goes my hero
(C#5)E5(B5)
He`s ordina____ry
[Tab - Riff de Passagem]
F#A5
(F#mA5)
[Tab - Variação do Riff 1]
[Segunda Parte]
EC#m7EC#m7
Don`t the best of them bleed it out
EC#m7EC#m7
While the rest of them peter out
EC#m7EC#m7
Truth or consequence, say it aloud
EC#m7EC#m7
Use that evidence, race it around
[Segundo Refrão]
[Tab - Guitarra 3 - Riff do Refrão]
A5
There goes my hero
(C#5)E5(B5)
Watch him as he goes
A5
There goes my hero
(C#5)E5(B5)
He`s ordina____ry
[Tab - Riff de Passagem]
F#A5
(F#mA5)
[Interlúdio]E5
[Terceira Parte]
EC#m7EC#m7
Kudos my hero leaving all the best
EC#m7EC#m7
You know my hero, the one that`s on
[Refrão]
A5
There goes my hero
(C#5)E5(B5)
Watch him as he goes
A5
There goes my hero
(C#5)E5(B5)
He`s ordina____ry
A5
There goes my hero
(C#5)E5(B5)
Watch him as he goes
A5
There goes my hero
(C#5)E5(B5)
He`s ordina____ry
[Tab - Riff de Passagem]")

Song.create!( name: "My sacrifice", artist: "", tags: "rock; Internacional", lyrics: "[Introdução]Bm7(9)G5(9)D5Bm7(9)G5(9)
D5Bm7(9)G5(9)
[Primeira Parte]
D5
Hello my friend we meet again
It`s been a while where should
Bm7(9)G5(9)
we begin  Feels like forever
D5
Within my heart are memories
Bm7(9)
Of perfect love that you gave to me
G5(9)
I remember
Bm7(9)G5(9)D5
[Refrão]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DA11/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5
My sacrifice
A11/C#Bm7(9)G5(9)
[Segunda Parte]
D5
We`ve seen our share of ups and downs
Bm7(9)
Oh how quickly life can turn around in
G5(9)
an instant
D5
It feels so good to reunite
Bm7(9)
Within yourself and within your mind
G5(9)
Let`s find peace there
[Refrão]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DD/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5
My sacrifice
F# ~ E   E ~ D  C# ~ D
D
I just want to say hello again
F# ~ E   E ~ D  C# ~ D
D5+D5(9)
I just want to say hello again
[BREAK CLEAN]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DD/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5
My sacrifice
[BANDA]
D
When you are with me
A11/C#Bm7(9)G5(9)
I`m free ,I`m careless, I believe
DD/C#
Above all the others we`ll fly
Bm7(9)G5(9)
This brings tears to my eyes
D5
My sacrifice")

Song.create!( name: "Natural", artist: "", tags: "rock; Internacional", lyrics: "[Intro]DmA7
[Primeira Parte]
Dm
Will you hold the line
When every one of them is giving up
or giving in, tell me
A7
In this house of mine
Nothing ever comes
without a consequence or cost, tell me
Dm
Will the stars align?
Will heaven step in?
Will it save us from our sin? Will it?
A7
Cause this house of mine stands strong
[Pré-Refrão]
Dm
That`s the price you pay
A7
Leave behind your heart and cast away
Dm
Just another product of today
A7
Rather be the hunter than the prey
And you`re standing on the edge
face up `cause you`re a
[Refrão]
Dm
Natural
A beating heart of stone
A7
You gotta be so cold
To make it in this world
Dm
Yeah, you`re a natural
Living your life cutthroat
A7
You gotta be so cold
Yeah, you`re a natural
[Segunda Parte]
Dm
Will somebody
Let me see the light
within the dark trees` shadows and
A7
What`s happenin`?
Lookin` through the glass
find the wrong within the past knowin`
Dm
Oh, we are the youth
Call out to the beast,
not a word without the peace, facing
A7
A bit of the truth, the truth
[Pré-Refrão]
Dm
That`s the price you pay
A7
Leave behind your heart and cast away
Dm
Just another product of today
A7
Rather be the hunter than the prey
And you`re standing on the edge
face up `cause you`re a
[Refrão]
Dm
Natural
A beating heart of stone
A7
You gotta be so cold
To make it in this world
Dm
Yeah, you`re a natural
Living your life cutthroat
A7
You gotta be so cold
Yeah, you`re a natural
[Ponte]
Dm   3a
Deep inside me, I`m fading to 
, I`m fading
A7     6a
Took an oath by the blood of my hand
, won`t break it
Dm
I can taste it, the end is upon us
, I swear
A7
Gonna make it
I`m gonna make iiiiiiiiiiiiit
[Refrão]
Dm
Natural
A beating heart of stone
A7
You gotta be so cold
To make it in this world
Dm
Yeah, you`re a natural
Living your life cutthroat
A7
You gotta be so cold
Yeah, you`re a natural
(Dm)
A7
Natural
(Dm)
A7Dm
Yeah, you`re a natural")

Song.create!( name: "Need You Tonight", artist: "", tags: "rock; Internacional", lyrics: "INXS
(intro 4  comp drums)
[2x RIFF ]
AmD(2x)
A(3x)CBA(2x)
AmGAmDAmGAmD
all you got is this moment
AmGAmD
the twenty first century`s yesterday
AmGAmD
You can care all you want       everybody does yeah
AmGAmD
that`s okay
AmDAm
[2x RIFF ]
So slide over here and give me a moment your moves are
so raw
[2x RIFF ]
DAmD
I`ve got to let you know I`ve got to let you know
AmD
you`re one of my kind
AmGAmDAmGAmD
I need you tonight     `cause I`m not
AmGAmD
sleeping
AmGAmDAmG
There`s something about you girl  that makes me sweat
AmD
[DIST Bb C       ….  F E F]
AmDAm
How do you feel I`m lonely what do you think
DAmD
Can`t take it all whatcha gonna do gonna live my life
AmDAm
[2x RIFF ]
So slide over here and give me a moment your moves are
so raw
[2x RIFF ]
DAmD
I`ve got to let you know I`ve got to let you know
AmD
you`re one of my kind
AmGAm
I need you tonight cause i not sleeping
There`s something about you girl  that makes me sweat
[DIST Bb C       ….  F E F]
Hard to refute
Im lonely cant think at all
Gonna live my life
Im lonely[BREAK]
What you gonna do
cant think at a ll
Gonna live my life
AmDAm
[2x RIFF ]
So slide over here and give me a moment your moves are
so raw
[1x RIFF ]
DIST bb C]
DAmD
I`ve got to let you know
[BREAK FIM]
I`ve got to let you know
AmD
you`re one of my kind")

Song.create!( name: "Number Of The Beast", artist: "", tags: "rock; Internacional", lyrics: "Tom:Bb
Riff 1:
G5
I left alone, my mind was blank.
F5
I needed time to think to get the
G5
Memories from my mind.
What did I see, can I believe,
F5
That what I saw that night was real
G5
And not just fantasy.
Just what I saw, in my old dreams
F5
Were they reflections of my warped
G5
Mind staring back at me.
`Cause in my dreams, it`s always there
F5
The evil face that twists my mind
G5
And brings me to despair.
F5G5
Bb5Bb/ABb   CG5
Six, six, six the number of the beast.
Bb5Bb/ABb   CG5
Hell and fire was spawned to be released.
Riffs
G5
Torches blazed and sacred chants were praised,
F5                                        G5
As they start to cry, hands held to the sky.
In the night, the fires burning bright,
F5                                        G5
The ritual has begun, Satan`s work is done.
(Refrão)
Bb5Bb/ABb   CG5
Six, six, six the number of the beast.
Bb5Bb/ABb   CG5
Sacrifice is going on tonight
Riffs
G5
I`m coming back, I will return
F5
And I`ll possess your body
G5
And I`ll make you burn.
I have the fire, I have the force.
F5
I have the power to make
G5
My evil take its course.
G5F5G5F5G5
C5D5/C5D5/D5C5/C5(D5C5D5)")

Song.create!( name: "One", artist: "", tags: "rock; Internacional", lyrics: "AmDsus2
Is it getting better?
FG
Or do you feel the same
AmDsus2
Will it make it easier on you, Now...
FG
You got someone to blame.  You say...
CAm
One love, one life
FC
When it`s one need in the night
CAm
It`s one love we get to share it
FC
It leaves you baby if you don`t care for it
(AmDsus2FG)
AmDsus2
Did I disappoint you?
FG
Or leave a bad taste in your mouth
AmDsus2
You act like you never had love
FG
And you want me to go without. Well it`s...
CAm
too late tonight
FC
To drag the past out into the light
Am
We`re one, but we`re not the same
FC
We get to carry each other, carry each other
AmDsus2
Have you come here for forgiveness?
Página 1 / 3
FG
Have you come to raise the dead?
AmDsus2
Have you come here to play Jesus?
FG
To the lepers in your head?
CAm
Did I ask too much, more than a lot
Fm7C
You gave me nothing, now it`s all I got
Am
We`re one, but we`re not the same
FC
We hurt each other then we do it again
You say
CAm
Love is a temple, Love a higher law
CAm
Love is a temple, Love the higher law
CG
You ask me to enter, but then you make me crawl
F
And I can`t be holding on to what you got
C
When all you got is hurt
CAm
One love, one blood
FC
One life, you got to do what you should
Am
One life with each other
FC
Sisters, brothers
CAm
One life, but we`re not the same. We get to...
FC
carry each other, carry each other
One...")

Song.create!( name: "Outshined    (DROP)", artist: "", tags: "rock; Internacional", lyrics: "PLAY VIDEO
Tom:G
Afinação:Drop D(D A D G B E)
Letra:
Outshined
(Chris Cornell)
Intro 4x
I got up feeling so down
I got off being sold out
I`ve kept the movie rolling
But the story`s getting old now
Oh yeah
I just looked in the mirror
Things aren`t looking so good
I`m looking California
And feeling Minnesota
Oh yeah
So now you know,
who gets mystified
Show me the power child, I`d like to say
That I`m down on my knees today
It gives me the butterflies, gives me away
Till I`m up on my feet again
I`m feeling outshined
SOLO 4x
Someone let the dogs out
They`ll show you where the truth is
The grass is always greener
Where the dogs are shedding
Yeah oh yeah
I`m feeling that I`m sober
Even though I`m drinking
I can`t get any lower
Still I feel I`m sinking
So now you know, who gets mystified
Show me the power child, I`d like to say
That I`m down on my knees today
It gives me the butterflies, gives me away
Till I`m up on my feet again
I`m feeling outshined
Guitarra
Bumbo
3x D  D   C  C
Refrao
So now you know, who gets mystified
2x
Show me the power child, I`d like to say
That I`m down on my knees today
It gives me the butterflies, gives me away
Till I`m up on my feet again
I`m feeling   I`m feeling   outshined")

Song.create!( name: "Perfect Strangers", artist: "", tags: "rock; Internacional", lyrics: "Can you remember, remember my name?
As I flow through your life
A thousand oceans I have flown
Oh, and cold, cold spirits of ice
Ah, ah, all my life, I am the echo of your past (echo of your past)

I am returning, the echo of a point in time
Distant faces shine
A thousand warriors I have known
Oh, and laughing, as the spirits appear
All, all your life, shadows of another day

And if you hear me talking on the wind
You`ve got to understand
We must remain perfect strangers

(I know)
I know I must remain inside this silent well of sorrow

A strand of silver, hanging through the sky
Touching more than you see
The voice of ages in your mind
Oh, is aching, with the dead of the night
Oh oh, precious life
Your tears are lost in falling rain

And if you hear me talking on the wind
You`ve got to understand
We must remain perfect strangers")

Song.create!( name: "Pet Sematary", artist: "", tags: "rock; Internacional", lyrics: "[Intro]D5E5F5
D5E5F5
[Primeira Parte]
D5E5F5
Under the arc of a weather stain boards
D5E5F5
Ancient goblins, and warlords
D5E5F5
Come out of the ground, not making a
sound
D5E5F5
The smell of death is all around
C5D5
And the night when the cold wind blows
C5D5Bb5C C
No one cares Nobody knows
[Refrão]
D5F5
I don`t wanna be buried
C5Bb5
In a pet sematary
D5C5Bb5C5
I don`t want to live my life again
D5F5
I don`t wanna be buried
C5Bb5
In a pet sematary
D5C5Bb5C5
I don`t want to live my life again
[Segunda Parte]
D5E5F5
Follow Victor to the sacred place
D5E5F5
This ain`t a dream, I can`t scape
D5E5F5
Molars and fangs, the clicking of bones
D5E5F5
Spirits moaning among the tombstones
C5D5
And the night, when the moon is bright
C5D5Bb5     C C
Someone cries, something ain`t right
[Refrão]
D5F5
I don`t wanna be buried
C5Bb5
In a pet sematary
D5C5Bb5C5
I don`t want to live my life again
D5F5
I don`t wanna be buried
C5Bb5
In a pet sematary
D5C5Bb5C5
I don`t want to live my life again
[Solo]Bb5D5E5F5Bb5C5
[Terceira Parte]
D5E5F5
The moon is full, the air is still
D5E5F5
All of a sudden I feel a chill
D5E5F5
Victor is grinning, flesh rotting away
D5E5F5
Skeletons dance, I curse this day
C5D5
And the night, when the wolves cry out
C5D5Bb    C C
Listen close and you can hear me shout
[Refrão]
D5F5
I don`t wanna be buried
C5Bb5
In a pet sematary
D5C5Bb5C5
I don`t want to live my life again
D5F5
I don`t wanna be buried
C5Bb5
In a pet sematary
D5C5Bb5C5
I don`t want to live my life again
D5C5Bb5
Oh no,    oh no
C5D5C5
I don`t want to live my live
Bb5C5
Life again
D5C5Bb5
Oh no,    oh no
C5D5C5
I don`t want to live my live
Bb5C5D5C5Bb5C5D5
Not again    oh no no no")

Song.create!( name: "Plush", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
G5  Bbº  C6  G (4x)
[Primeira Parte]
G5        D/F#
And I feel
F                 C  Eb7M
That time`s a wasted go
F    G5
So where are you going to tomorrow?
D/F#
And I see
F                C   Eb7M
That these are lies to come
F
Would you even care?
[Ponte]
(Guitarra Riff)
D5      C9    G/B   C9
D5      C9    G/B   C9
D9  C9  G/B  C9
And I feel it
( D9  C9  G/B  C9 )
D9  C9  G/B  C9
And I feel it
[Segunda Parte]
Eb7M
Where are you going
F      Eb7M
For tomorrow?
Where are you going
F            Eb7M
With that mask I found?
And I feel, and I feel
F                      Eb7M
When the dogs begin to smell her
F
Will she smell alone?
[Interlúdio] G5  Bbº  C6  G (2x)
[Terceira Parte]
G5        D/F#
And I feel
F                   C      Eb7M
So much depends on the weather
F    G5
So, is it raining in your bedroom?
D/F#
And I see
F                    C
That these are the eyes of disarray
Eb7M             F
Would you even care?
[Ponte]
(Guitarra Riff)
D5      C9    G/B   C9
( D9  C9  G/B  C9 )
D9  C9  G/B  C9
And I feel it
( D9  C9  G/B  C9 )
D9   C9  G/B  C9
And she feels it
[Quarta Parte]
Eb7M
Where are you going
F      Eb7M
For tomorrow?
Where are you going
F            Eb7M
With that mask I found?
And I feel, and I feel
F                      Eb7M
When the dogs begin to smell her
F
Will she smell alone?
[Primeiro Refrão]
G5           F5              C/E
When the dogs do find her
Eb5     D5         G5    F5
Got time, time to wait for tomorrow
C/E             Eb5
To find it,     to find it
D5
Ro find it
G5           F5              C/E
When the dogs do find her
Eb5     D5         G5    F5
Got time, time to wait for tomorrow
C/E             Eb5
To find it,     to find it
D5
To find it
[Interlúdio] G5  Bbº  C6  G (4x)
[Quinta Parte]
Eb7M
Where are you going
F      Eb7M
For tomorrow?
Where are you going
F            Eb7M
With that mask I found?
And I feel, and I feel
F                      Eb7M
When the dogs begin to smell her
F
Will she smell alone?
[Segundo Refrão]
G5           F5              C/E
When the dogs do find her
Eb5     D5         G5    F5
Got time, time to wait for tomorrow
C/E             Eb5
To find it,     to find it
D5
To find it
G5           F5              C/E
When the dogs do find her
Eb5     D5         G5    F5
Got time, time to wait for tomorrow
C/E             Eb5
To find it,     to find it
D5
To find it")

Song.create!( name: "Psycho Killer", artist: "", tags: "rock; Internacional", lyrics: "[Intro]AGAGAG
AGAGAG
AGAG
[Primeira Parte]
AG
I can`t seem to face up to the facts
AG
I`m tense and nervous and I can`t relax
AG
I can`t sleep, my bed`s on fire
AG
Don`t touch me I`m a real live wire
[Refrão]
FG
Psycho Killer, qu`est-ce que c`est
Am
Fafafafafafafafafafar better
FGC
Run, run, run, run, run, run away
Oh, oh, oh
FG
Psycho Killer, qu`est-ce que c`est
Am
Fafafafafafafafafafar better
FGC
Run, run, run, run, run, run away
FG
Oh, oh, oh, ay-ay-ay-ay
(AGAG)
[Segunda Parte]
AG
I passed out hours ago
AG
I`m sadder than you never know
AG
I closed my eyes on this sunny day
AG
Say something once, why say it again?
[Refrão]
FG
Psycho Killer, qu`est-ce que c`est
Am
Fafafafafafafafafafar better
FGC
Run, run, run, run, run, run away
Oh, oh, oh
FG
Psycho Killer, qu`est-ce que c`est
Am
Fafafafafafafafafafar better
FGC
Run, run, run, run, run, run away
FG
Oh, oh, oh, ay-ay-ay-ay
[Ponte]
BmG
Ce que j`ai fait, ce soir-là
BmG
Ce qu`elle a dit, ce soir-là
AG
Réalisant mon espoire
AGAG
Je me lance vers la gloire okay
AG
We are vain and we are blind
A
I hate people when they`re not polite
[Refrão]
FG
Psycho Killer, qu`est-ce que c`est
Am
Fafafafafafafafafafar better
FGC
Run, run, run, run, run, run away
Oh, oh, oh
FG
Psycho Killer, qu`est-ce que c`est
Am
Fafafafafafafafafafar better
FGC
Run, run, run, run, run, run away
FG
Oh, oh, oh, ay-ay-ay-ay
[Final]A")

Song.create!( name: "Rainbow in the dark", artist: "", tags: "rock; Internacional", lyrics: "[Intro]AmFG
AmFG
AmFG
AmFG
AmFG
When there`s lightning
AmFG
You know it always brings me down
AmFG
Cause it`s free and I see that it`s me
AmFG
Who`s lost and never found
AmFG
I cry out for magic
AmFG
I feel it dancing in the light
AmFG
It was cold, lost my hold
AmFG
To the shadows of the night
EmF
No sign of the morning coming
EmF
You`ve been left on your own
GAmFG
Like a rainbow in the dark
AmFG
A rainbow in the dark
AmFG
Do your demons
AmFG
Do they ever let you go
AmFG
When you`ve tried do they hide deep inside
AmFG
Is it someone that you know
AmFG
You`re just a picture
AmFG
Just an image caught in time
AmFG
We`re a lie, you and I
AmFG
We`re words without a rhyme
EmF
There`s no sign of the morning coming
EmF
You`ve been left on your own
GAmFG
Like a rainbow in the dark
AmFG
A rainbow in the dark       Yeah-eah
[Solo]
AmFG
When I see lightning
AmFG
You know it always brings me down
AmFG
Cause it`s free and I see that it`s me
AmFG
Who`s lost and never found
AmFG
Feel the magic
AmFG
I feel it floating in the air
AmFG
But it`s fear, and you`ll hear
AmFG
It calling you beware, look out
EmF
There`s no sight of the morning coming
EmF
There`s no sign of the day
EmFAmFG
You`ve been left on your own, like a rainbow
AmFG
Like a rainbow in the dark
[Final]AmFG
​AmFG")

Song.create!( name: "Redemption song", artist: "", tags: "rock; Internacional", lyrics: "Old pirates, yes, they rob I;
Sold I to the merchant ships,
Minutes after they took I
From the bottomless pit.
But my hand was made strong
By the hand of the Almighty.
We forward in this generation
Triumphantly.
Won`t you help to sing
These songs of freedom? -
`Cause all I ever have:
Redemption songs
Redemption songs
Emancipate yourselves from mental slavery;
None but ourselves can free our minds.
Have no fear for atomic energy,
`Cause none of them can stop the time
How long shall they kill our prophets,
While we stand outside and look
Some say it`s just a part of it:
We`ve got to fulfill the book.
Won`t you help to sing
These songs of freedom? -
`Cause all I ever have:
Redemption songs
Redemption songs
Redemption songs")

Song.create!( name: "Roadhouse blues", artist: "", tags: "rock; Internacional", lyrics: "Ah, keep your eyes on the road, your hand upon the wheel
Keep your eyes on the road, your hand upon the wheel
Yeah, we`re going to the roadhouse, gonna have a real, a good-time

Yeah, the back of the roadhouse, they got some bungalows
Yeah, the back of the roadhouse, they got some bungalows
And that`s for the people who like to go down slow

Let it roll, baby, roll, let it roll, baby, roll
Let it roll, baby, roll, let it roll
All night long

Do it, Robby, do it!

You gotta roll, roll, roll
You gotta thrill my soul, all right
Roll, roll, roll, roll
Thrill my soul
You gotta beep a gunk a chucha
Honk konk konk
You gotta each you puna
Each ya bop a luba
Each y`all bump a kechonk
Ease sum konk
Ya, ride

Ashen lady
Ashen lady
Give up your vows
Give up your vows
Save our city
Save our city
Ah, right now

Well, I woke up this morning and I got myself a beer
Well, I woke up this morning and I got myself a beer
The future`s uncertain and the end is always near

Let it roll, baby, roll, let it roll, baby, roll
Let it roll, baby, roll, let it roll
All night long")

Song.create!( name: "Rock and roll all nite", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
(intro)G5G5D5G5G5D5
(A5E5)
You show us
Everything you got
You keep dancin`and
The room gets hot
D5E5
You drive us wild
(G5G5D5G5G5D5)
We`ll drive you crazy
(A5E5)
And you say you
Wanna go for a spin
The party`s just begun
We`ll let you in
D5E5
Well you drive us wild
(G5G5D5G5G5D5)
We`ll drive you crazy
F5
You keep on shoutin`
G5
You keep on shoutin`
A5
I wanna rock and roll
D5E5
All night
A5
And party every day         (refrão 2x)
(A5E5)
You keep sayn` you`ll
Be mine for a while
You`re looking fancy
And i like your style
D5E5
You drive us wild
(G5G5D5G5G5D5)
We`ll drive you crazy
(A5E5)
And you show us
Everithing you got
And baby baby
That`s quite a lot
D5E5
You drive us wild
(G5G5D5G5G5D5)
We`ll drive you crazy
F5
You keep on shoutin`
G5
You keep on shoutin`
A5
I wanna rock and roll
D5E5
All night
D5A5
And party every day         (refrão 4x)
(solo)A5E5D5E5D5
F5
You keep on shoutin`
G5
You keep on shoutin`
A5
I wanna rock and roll
D5E5
All night
D5A5
And party every day         (refrão 4x)")

Song.create!( name: "Roots, bloody roots", artist: "", tags: "rock; Internacional", lyrics: "4x GuitB - C
4x agudo B
C  C    C#-C   C C C
4x Roots, bloody roots
[Primeira Estrofe]
B-C     B-C
I believe in our fate
We don`t need to fake
It`s all we wanna be
Watch me freak
4X   F F   E E  D D    Db Db  D
[Segunda Estrofe]
B - C
I say we`re growing every day
Getting stronger in every way
I`ll take you to a place
Where we shall find our
C  C    C#-C   C C C
4x Roots, bloody roots
[Terceira Estrofe]
B - C
Rain, bring me the strength
To get to another day
And all I want to see
Set us free
Why can`t you see?
Can`t you feel?
This is real?
[BREAK  1e  4x hits  solinho]
B - C
[So GUIT 4x]Berimbau
B - C
[drums GUIT 4x]
B - C
Pray, we don`t need to change
Our ways to be saved
That all we wanna be
Watch us freak
4X   F F   E E  D D    Db Db  D
Solo    B  agudo
Quebrada final
4X   C B    C# C   C B    C# C       C C")

Song.create!( name: "Sad but true  [DROP]", artist: "", tags: "rock; Internacional", lyrics: "LOGO VIDEO
Intro G Ab >  8x + 2x
D5C5D5
Hey,     I`m your life
G#5D5
I`m the one who takes you there
C5D5
Hey,    I`m your life
G#5D5
I`m the one who cares
C5D5
They,    they betray
G#5D5
I`m your only true friend now
C5D5
They,   they`ll betray
G#5D5
I`m forever there
[Refrão]
(Riff)
I`m your dream, make you real
I`m your eyes when you must steal
I`m your pain when you can`t feel
Sad but true
I`m your dream, mind astray
I`m your eyes while you`re away
I`m your pain while you repay
You know it`s sad but true
Sad but true
Riff 4x + 2x
D5C5D5
You,    you`re my mask
G#5D5
you`re my cover, my shelter
C5D5
You,    you`re my mask
G#5D5
You`re the one who`s blamed
C5D5
Do,    do my work
G#5D5
Do my dirty work, scapegoat
C5D5
Do,    do my deeds
G#5D5
For you`re the one who`s shamed
[Refrão]
I`m your dream, make you real
I`m your eyes when you must steal
I`m your pain when you can`t feel
Sad but true
I`m your dream, mind astray
I`m your eyes while you`re away
I`m your pain while your repay
You know it`s sad but true
Sad but true
Riff 2x
Quebrada Intro F
[Solo 1]
I`m your dream
I`m your eyes
I`m your pain
I`m your dream (I`m your dream)
I`m your eyes (I`m your eyes)
I`m your pain (I`m your pain)
You know it`s sad but true
[Solo 2]
Riff
Hate
I`m your hate
I`m your hate when you want love
Pay
pay the price
pay, for nothing`s fair
hey
I`m your life
I`m the one who took you here
hey
I`m your life
and i no longer care
[Refrão]
I`m your dream, make you real
I`m your eyes when you must steal
I`m your pain when you can`t feel
Sad but true
I`m your truth, telling lies
I`m your reason alibis
I`m inside, open your eyes
I`m you
Sad but true
4x
[Final]D5")

Song.create!( name: "Santeria", artist: "", tags: "rock; Internacional", lyrics: "EG#  C#m  B
EG#
I don`t practice santeria i ain`t got no
crystal ball
C#mB
I had a million dollars but i`d  i`d spend it all
EG#
If i could find that heina and that sancho she`s found
C#mB
Well i`d pop a cap in sancho and i`d   slap her down
[Refrão]
ABEC#m
All i really wanna know my baby
ABEC#mA
All i really wanna say i can`t define
BEC#m
It`s love that i need
AB
But my soul will have to
EG#
Wait `till i get back  find a heina of my own
C#mB
Daddy`s gonna love one and all
EG#
I feel the break  feel the break  feel the break
C#mB
And i gotta live it up
Oh yeah  uh huh  well i swear that i
[Refrão]
ABEC#m
All i really wanna know my baby
ABEC#mA
All i really wanna say i can`t define
BEC#m
That love will make it go
AB
But my soul will have to
[Solo]EG#C#mB
[Refrão]
ABEC#m
All i really wanna say my baby
ABEC#mA
All i really wanna say is i`ve got mine
BEC#m
And i`ll make it yes i`m comin` up
AB
Tell sanchito that if
EG#
He knows what is good for him he best
go run and hide
C#mB
Daddy`s got a new 45
EG#
And i won`t think twice to stick that
barrel straight down sancho`s throat
C#mB
Believe me when i say that i`ve got
something for his punk ass
[Refrão]
ABEC#m
Well i really wanna know my baby
ABEC#mA
What i really wanna say is there`s just one way back
BEC#m
And i`ll make it
AB
Yeah my soul will have
E  D#C#mB  A  B  E
to wait")

Song.create!( name: "Selling The Drama", artist: "", tags: "rock; Internacional", lyrics: "And to love, a God
And to fear, a flame
And to burn, a crowd that has a name

And to right or wrong
And to meek or strong
It is known, just scream it from the wall

I`ve willed, I`ve walked
I`ve read, I`ve talked
I know, I know
I`ve been here before

Hey, now we won`t be raped
Hey, now we won`t be scarred like that
Hey, now we won`t be raped
Hey, now we won`t be scarred like that

It`s the Sun that burns
It`s the wheel that turns
It`s the way we sing that makes `em dream

And to Christ, a cross
And to me, a chair
I will sit and earn the ransom
From up here

I`ve willed, I`ve walked
I`ve read, I`ve talked
I know, I know
I`ve been here before

Hey, now we won`t be raped
Hey, now we won`t be scarred like that
Hey, now we won`t be raped
Hey, now we won`t be scarred like that, scarred like that
(We won`t, we won`t, we won`t, we won`t)

And to love, a God
And to fear, a flame
And to burn, a love that has a name

I`ve willed, I`ve walked
I`ve read, I`ve talked
I know, I know
I`ve been here before

Hey, now we won`t be raped
Hey, now we won`t be scarred like that
Hey, now we won`t be raped
Hey, now we won`t be scarred like that

Hey, now, no, no
We won`t be scarred like that
We won`t be scarred like that


Adicionar aos favoritos

Adicionar à playlist

Tamanho do texto
Cifra
Imprimir
Corrigir

Rolagem automática

")

Song.create!( name: "Seven Nation Army", artist: "", tags: "rock; Internacional", lyrics: "PLAY VIDEO
Tom:A
EEGEDCBI`m gonna fight `em off,BEEGEDCBA seven nation army couldn`t hold me back.Their gonna rip it off,Taking their time right behind my back.And I`m talking to myself at night because I can`t forget.Back and forth through my mind, behind a cigarette.
(Pre/Post - Chorus:)GAAnd the message coming from my eyes,
says leave it alone.
(Verse 2:)BEEGEDCBDon`t want to hear about it,BEEGEDCBEvery single ones got a story to tell.BEEGEDCBEveryone knows about it,BEEGEDCBFrom the queen of England to the hounds of hell.BEEGEDCAnd if I catch you comming back my way,I`m going to serve it to you.And that ain`t what you want to hear, but that`s what I`ll do.
(Pre/Post - Chorus:)GAAnd the feeling coming from my bones, says find a home.
(Verse 3)EEGEDCBI`m going to Witchita,BEEGEDCBFar from this opera and for ever more.BEEGEDCBI`m going to work the straw,BEEGEDCBMake the sweat drip out of every pour.BEEGEAnd I`m bleedin`, and I`m bleedin`,EDCBEEGEDCBAnd I`m bleeding right before the lord.EEGEDCAll the words are going to bleed from me,BEEGEDCBAnd I will think no more.(Pre/Post-Chorus)GAAnd the stains comming from my blood, says go back home.")

Song.create!( name: "Should I Stay Or Should I Go", artist: "", tags: "rock; Internacional", lyrics: "[Intro]DGD
DGD
DGD
[Primeira Parte]
DGDDGD
Darling you´ve got to let me know
DGD
Should I stay or should I go?
GFG
If you say that you are mine
DGD
I`ll be here `til the end of time
A
So you got to let me know
DGD
Should I stay or should I go?
DGD
It`s always tease, tease, tease
DGD
You`re happy when I`m on my knees
GFG
One day is fine, next is 
DGD
So if you want me off your back
A
Well come on and let me know
DGD
Should I stay or should I go?
[Primeiro Refrão]
DGD
Should I stay or should I go now?
GD
Should I stay or should I go now?
GFG
If I go there will be trouble
DGD
An` if I stay it will be double
A(DGD)
So come on and let me know
[Segunda Parte]
This indecision`s bugging me
DGD
(Esta indecision me molesta)
If you don`t want me, set me free
DGD
(Si no me quieres, librame)
Exactly who`m I`m supposed to be
GFG
(Diga me   que tengo ser)
Don`t you know which clothes even fit me?
DGD
(Sabes que ropa me quedar?)
Come on and let me know
A
(Pero que tienes que decir)
Should I cool it or should I blow?
DGD
(Me debo ir o quedarme?)
(DGD)
(DGD)
(GFG)
(DGD)
(A)
(DGD)
[Segundo Refrão]
D
Should I stay or should I go now?
GD
(Yo me frio o lo sophlo)
Should I stay or should I go now?
GD
(Yo me frio o lo sophlo)
G
If I go there will be trouble
FG
(Si me voy-va haber peligro)
D
And if I stay it will be double
GD
(Si me quedo es doble)
A
So you gotta let me know
(Me tienes que decir)
D
Should I stay or should I go?
GD
(Yo me frio o lo sophlo)
Should I stay or should I go now?
GD
(Yo me frio o lo sophlo)
G
If I go there will be trouble
FG
(Si me voy-va haber peligro)
D
And if I stay it will be double
GD
(Si me quedo es doble)
A
So you gotta let me know
(Me tienes que decir)
DGD
Should I stay or should I go?")

Song.create!( name: "Smells like teen Spirit", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
Tom:Ab
Introdução:E5A5G5C5
Primeira Parte:
(Riff 1) 2x
Load up on guns
Bring your friends
It`s fun to lose
And to pretend
She`s over-bored
And self-assured
Oh, no, I know
A dirty word
(Riff 2)
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello
Primeiro Refrão:
E5
With the lights out
It`s less dangerous
Here we are now
Entertain us
I feel stupid
And contagious
Here we are now
Entertain us
A mulatto
An albino
A mosquito
My libido
Yeah, yey
Passagem:E5DE  F  bend
E5DE  FA5G5
Segunda Parte:
(Riff 1) 2x
I`m worse
At what I do best
And for this gift
I feel blessed
Our little group
has always been
And always will
Until the end
(Riff 2)
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello
E5
With the lights out
It`s less dangerous
Here we are now
Entertain us
I feel stupid
And contagious
Here we are now
Entertain us
A mulatto
An albino
A mosquito
My libido
Yeah, yey
Passagem:E5DE  F  bend
E5DE  FA5G5
Riff 2x
And I forget
Just why I taste
Oh yeah, I guess
It makes me smile
I found it hard
It`s hard to find
Well, whatever
Nevermind
(Riff 2)
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello
E5
With the lights out
It`s less dangerous
Here we are now
Entertain us
I feel stupid
And contagious
Here we are now
Entertain us
A mulatto
An albino
A mosquito
My libido
Yeah, yey
Final: 8X
C5E5
A   denial")

Song.create!( name: "Sultans of Swing", artist: "", tags: "rock; Internacional", lyrics: "Intro:Dm/CC/Dm/CC(Riff Intro.)DmCBbAYou get a shiver in the darkit`s raining in the park but meantime
south of the river you stop and you hold everything
a band is blowing Dixie double four time
you feel alright when you hear that music ring
you step inside but you don`t see too many facescoming in out of the rain to (you) hear the jazz go downtoo much competition in other placesBut not too many horns are blowing that sound)
way on downsouthway on downsouth
DmRiff 8  (DmCBbDmC) - 2xLondon townyou check out Guitar George he knows all the chordsmind he`s (his) strictly rhythm he doesn`t want to   make it cry or sing
and if an old guitar is all he can affordwhen he gets up under the lights to play his thing
(and) harry doesn`t mind if he doesn`t make the scenehe(`s) got a daytime job he`s doing al(l)right(He can play the honky tonk like anything)saving it up for friday night
with the sultanswith the sultans of swing
and a crowd of young boys they`re fooling around in the cornerdrunk and dressed in their best brown baggies andtheir platform soles
they don`t give a damn about (`bout) an                                                                                                                                                                    y trumpet playing bandit ain`t what they call rock and rolland the sultansand the sultans played creole
and then the man he steps right up to the microphone
and says at last just as the time bell rings
thank you goodnight now it`s time to go homeand he makes it fast with one more thingwe are the sultanswe are the sultans of swing")

Song.create!( name: "Start me up", artist: "", tags: "rock; Internacional", lyrics: "CF
if you start me up
FGA#F/AA#
if you start me up i`ll never stop
FC/EF
if you start me up
C/EFGA#F/AA#
if you start me up i`ll never stop
F
i`ve been running hot
FGA#
You got me ticking gonna blow my top
F
if you start me up
FGA#
if you start me up i`ll never stop, never stop,
never stop, i`ll never stop
Chorus:
CDFC
you make a grown man cry
DFD#D
you make a grown man cry
DFD#DC
you make a grown man cry
C
spread out the oil, the gasoline
D#DCF
i want a smooth ride in a mean, mean machine
A#
start it up
F
you can start me up
FA#
kick on the starter give it all you`ve got, you got, you got
F
i can compete
A#F/AA#
with the riders in the other heats
F
if you rough it up
A#
if you like it you can start it up, start it up
start it up, start it up
Chorus
my eyes dilate, my lips go green
my hands are greasy she`s a mean, mean machine
A#
start it up
C
mm start me up
FA#
now, give it all you`ve got
A#CF/C
you`ve got to never, never, never stop start it up whoo
FA#
oh, baby why don`t ya start it up
(start it up start it up)
C
never never never
Chorus
FC
ride like the wind
F/CCD#C
at double speed
D#DCFC/E
i`ll take you places that you`ve never, never seen
once you start it up
let me tell you we will never stop we`ll never stop
we`ll never, never never stop
start me up
we`ll never stop, never stop
you,
you, you made a grown   man cry
C
you,
F/CCF/CA#
you made a dead  man come
CF/CCF/CCF/CA#
you,  you,  you make a dead  man come
A#CF
yeah and you
C
you")

Song.create!( name: "Suspicious minds", artist: "", tags: "rock; Internacional", lyrics: "G
We`re caught in a trap
C
I can`t walk out
DCG
Because I love you too much baby
G
Why can`t you see
C
What you`re doing to me
DCDCBmD7
When you don`t believe a word I say?
CGBm
We can`t go on together
CD
With suspicious minds
EmBm
And we can`t build our dreams
CD
On suspicious minds
G
So, if an old friend I know
C
Stops by to say hello
DCG
Would I still see suspicion in your eyes?
G
Here we go again
C
Asking where I`ve been
DCDCBmD7
You can`t see these tears are real, I`m crying
CGBm
We can`t go on together
CD
With suspicious minds
EmBm
And we can`t build our dreams
CBm
On suspicious minds
EmBmC
Oh let our love survive
D
Or dry the tears from your eyes
EmBm
Let`s don`t let a good thing die
CD
When honey, you know
G
I`ve never lied to you
CGD
Mmm yeah,yeah
G
We`re caught in a trap
C
I can`t walk out
DCG
Because I love you too much baby
G
Why can`t you see
C
What you`re doing to me
DCD
When you don`t believe a word I say?")

Song.create!( name: "Sweet Child O`Mine [DROP]", artist: "", tags: "rock; Internacional", lyrics: "She`s got a smile that it seems to me
Reminds me of childhood memories
Where everything was as fresh
As the bright blue sky

Now and then when I see her face
She takes me away to that special place
And if I stare too long
I`d probably break down and cry

Oh, oh, oh, sweet child of mine
Oh, oh, oh, oh, sweet love of mine

She`s got eyes of the bluest skies
As if they thought of rain
I hate to look into those eyes
And see an ounce of pain

Her hair reminds me of a warm safe place
Where, as a child, I`d hide
And pray for the thunder and the rain
To quietly pass me by

Oh, oh, oh, sweet child of mine
Oh, oh, oh, oh, sweet love of mine
Oh, oh, oh, oh, sweet child of mine
Ooh, yeah, yeah
Ooh! Sweet love of mine

Where do we go?
Where do we go now?
Where do we go?

Where do we go?
Where do we go now?
Where do we go now?

Where do we go?
Where do we go now?
Where do we go?
Where do we go?

Where do we go now?
Where do we go?
Where do we go now?
Where do we go?

Where do we go now?
Where do we go?
Where do we go now?
Now, now, now
Now, now, now, now?

Sweet child
Sweet child of mine")

Song.create!( name: "Take Me Out", artist: "", tags: "rock; Internacional", lyrics: "D|-----------------------------------------------------|
A|-7-7-7-7-7,... 10-10, 9-9   14-14  12-12  10-10 —---|
E|-----------------------------------------------------|
[guit oitavas ^]
EAmD
So if you`re lonely
GBmEm
you know i`m here waiting for you
AmD
I`m just a crosshair
GBmEm
I`m just a shot away from you
AmD
and if you leave here
GBmEm
you leave me broken shattered alive
AmD
I`m just a crosshair
GBmEm
I`m just a shot..then we can die
GAEm
Ahhh-ahhh-ahhh
D|----------------------------|
A|-5-   7— 7  5 - 7- 7- 7---|
E|---------------------------|
GDF/CCEm
I know i wont be leaving here with you
[4 comp Em]
4 x riff intro (1 2 3Em4eD/E)
[2x RIFF]
(EmAmBm)
[RIFF 2  fim em la la la e do]
Em
I say don`t you know
you say you don`t know
AmBm
I say... take me out
Em
I say you don`t show
don`t move time is slow
AmBm
I say... take me out
[1x RIFF 1]
[RIFF 2  fim em la la la e do]
(EmAmBm)
Em
I say you don`t know
you say you don`t know
AmBm
I say... take me out
Em
If i move this could die
eyes move this can die
AmBm
I want you   take me out
2 x riff intro (1 2 3Em4eD/E)
AmCD
I know i wont be leaving here
AmCD
I know i wont be leaving here
AmCD
I know i wont be leaving here
AmCDEm
I know i wont be leaving here with you
1x [RIFF 1]
(EmAmBm)
[RIFF 2  fim em la la la e do]
Em
I say don`t you know
you say you don`t know
AmBm
I say... take me out
Em
If I wane, this can die
If I wane, this can die
AmBm
I want you to take me out
Em
If i move this could die
eyes move this can die
AmBm
c`mon...[break]take me out
(EmAmBm)
[1x RIFF 1]
2 x riff intro (1 2 3Em4eD/E)
AmCD
I know i wont be leaving here
AmCD
I know i wont be heaving here
AmCD
I know i wont be leaving here
AmCDEm
I know i wont be leaving here with you
3 x riff intro (1 2 3Em4eD/E)
(seguraultimoE)")

Song.create!( name: "Tears of the dragon", artist: "", tags: "rock; Internacional", lyrics: "For too long now, there were secrets in my mind
For too long now, there were things I should`ve said
In the darkness, I was stumbling for the door
To find a reason, to find the time, the place, the hour

Waiting for the winter sun and the cold light of day
The misty ghosts of childhood fears
The pressure is building, and I can`t stay away

I throw myself into the sea
Release the wave
Let it wash over me
To face the fear, I once believed
The tears of the dragon for you and for me

Where I was, I had wings that couldn`t fly
Where I was, I had tears I couldn`t cry
My emotions, frozen in an icy lake
I couldn`t feel them until the ice began to break
I have no power over this, you know I`m afraid
The walls I built are crumbling, the water is moving
I`m slipping away

I throw myself into the sea
Release the wave
Let it wash over me
To face the fear, I once believed
The tears of the dragon for you and for me

Slowly, I awake
Slowly, I rise
The walls I built are crumbling
The water is moving
I`m slipping away

I throw myself into the sea
Release the wave
Let it wash over me
To face the fear, I once believed
The tears of the dragon for you and for me

I throw myself into the sea
Release the wave
Let it wash over me
To face the fear, I once believed
The tears of the dragon for you and for me")

Song.create!( name: "The Unforgiven", artist: "", tags: "rock; Internacional", lyrics: "Tom:C#m
Dedilhado:
A9 A9 A9 A9  Am
A9 A9 A9   Am  Am
...
(Riff 1)
Am                       GNew blood joins this earth
AmAnd quickly he`s subdued
EmThrough constant pained disgrace
AmThe young boy learns their rulesWith time, the child draws inThis whipping boy done wrongDeprived of all his thoughtsThe young man struggles on and on, he`s known
C        GA vow unto his own
A    B    C     DThat never from this day
C                   G            EHis will they`ll take away(Intro 2 - Solo)
A    B   CWhat I`ve feltG
What I`ve known
Em                                AmNever shined through in what I`ve shownNever beNever seeWon`t see what might have beenWhat I`ve feltWhat I`ve knownNever shined through in what I`ve shownNever freeNever me
E          Am
So I dub the Unforgiven(Riff 1)They dedicate their livesTo running all of hisHe tries to please them allThis bitter man he isThroughout his life the sameHe`s battled constantlyThis fight he cannot winA tired man they see no longer caresRiff 1: (Parte 3 e Parte 4)
C            GThe old man then preparesA    B    C     D
To die regretfully
C                   G            EThat old man here is me(Intro 2 - Solo)What I`ve feltWhat I`ve knownNever shined through in what I`ve shownNever beNever seeWon`t see what might have beenWhat I`ve feltWhat I`ve knownNever shined through in what I`ve shownNever freeNever meSo I dub the Unforgiven
Solo 1:(Intro 2 - Solo)What I`ve feltWhat I`ve knownNever shined through in what I`ve shownNever beNever seeWon`t see what might have beenWhat I`ve feltWhat I`ve knownNever shined through in what I`ve shownNever freeNever meSo I dub the UnforgivenSolo Final:Never freeNever meSo I dub the UnforgivenYou labeled meI`ll label youSo I dub the UnforgivenNever freeNever meSo I dub the Unforgiven")

Song.create!( name: "Them Bones  [20]  (DROP)", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
(Intro)
Ah...  Ah...
I believe    them bones are me
Some say we`re born into the grave
I feel so alone, gonna end up
A big `ole pile a them bones
(Intro)
Ah...  Ah...
Dust rise right on over my time
Empty    fossil of the new scene
I feel so alone, gonna end up
A big `ole pile a them bones
(Solo)
Toll due bad dream come true
I lie    dead gone under red sky
(Refrão)
I feel so alone, gonna end up
A big `ole pile a them...
I feel so alone, gonna end up
A big `ole pile a them...
I feel so alone, gonna end up
A big `ole pile a them bones")

Song.create!( name: "Toxicity  (DROP)", artist: "", tags: "rock; Internacional", lyrics: "Intro:DmF(2x)
DmDmA#A
DmDmA#A
DmF(2x)
DmF
Conversion, software version 7.0
DmF
looking at life through the eyes of a tired hub
DmF
eating seeds as a pastime activity
DmF
the toxicity of our city, of our city
Dm
Now what do you own the world, how do you own
A#A
disorder, disorder
Dm
Now somewhere between the sacred silence
A#A
sacred silence and sleep
Dm
Somewhere, between the
A#A
sacred silence and sleep
Dm
Disorder disorder,
A#A
disorder
(DmF)
(DmF)
DmF
More wood for the fires, loud neighbours
DmF
Flashlight reveries caught in the headlights of a truck
DmF
eating seeds as a pastime activity
DmF
the toxicity of our city, of our city
Dm
Now what do you own the world, how do you own
A#A
disorder, disorder
Dm
Now somewhere between the sacred silence
A#A
sacred silence and sleep
Dm
Somewhere, between the
A#A
sacred silence and sleep
Dm
Disorder disorder,
A#A
disorder
[SO GUIT]
8xG F#   EEEE
4xEEEE  G F#
8xG F#   EEEE
Dm
Now what do you own the world, how do you own
A#A
disorder, disorder
Dm
Now somewhere between the sacred silence
A#A
sacred silence and sleep
Dm
Somewhere, between the
A#A
sacred silence and sleep
Dm
Disorder disorder,
A#A
disorder
[8xG F#   EEEE]
DmGF#
When I            became the sun
Shone life into the man`s hearts
When I            became the sun
Shone life into the man`s hearts")

Song.create!( name: "Treasure", artist: "", tags: "rock; Internacional", lyrics: "3     4       1       2    3       4
Baby squirrel, you`s a sexy mother fucker
[Primeira Parte]
[Intro]Bb4(9)
Ab7M
Give me your, give me your
Gm7Fm7Fm7(9)
Give me your attention baby
Gm7                        Bb
I gotta tell you a little somethin`
CmBb
About yourself
Ab7MGm7Fm7
You`re wonderful, flawless, ooh, you a sexy lady
Fm7(9)Gm7                        Bb
But you walk around here
CmBb
Like you wanna be someone else
Ab7MGm7
Ooh, whoa
Fm7
I know that you don`t know it,
Fm7(9)Gm7
But you`re fine, so fine
Cm
Fine, so fine
BbAb7MGm7
Ooh, whoa
Fm7
Oh girl, I`m gonna show you
Fm7(9)Bb4(9)
When you`re mine, oh mine
Mine, oh mine
[Refrão]
Ab7MFm7Gm7
E|--8----------11---------13---
CmFm7Gm7
Treasure,          that is what you are
CmBbCm
Honey, you`re my golden star
Fm7Gm7
You think you could make my wish come true
CmBbCm
If you let me treasure you
Fm7Bb4(9)
If you let me treasure oh-oh-you
[Primeira Parte]
Ab7M
Pretty girl, pretty girl, pretty girl
Gm7Fm7Fm7(9)
You should be smiling
Gm7CmBb
A girl like you should never look so    blue
Ab7MGm7Fm7Fm7(9)
You`re everything I see in my dreams
Gm7BbCmBb
I wouldn`t say that to you if it wasn`t true
Ab7MGm7
Ooh, whoa
Fm7
I know that you don`t know it
Fm7(9)Gm7
But you`re fine, so fine
Cm
Fine, so fine
BbAb7MGm7
Ooh, whoa
Fm7
Oh girl, I`m gonna show you
Fm7(9)Bb4(9)
When you`re mine, oh mine
Mine, oh mine
[Refrão]
CmFm7Gm7
Treasure,          that is what you are
CmBbCm
Honey, you`re my golden star
Fm7Gm7
You think you could make my wish come true
CmBbCm
If you let me treasure you
Fm7Bb4(9)
If you let me treasure oh-oh-you
[
[Interlúdio]
CmFm7
You are my treasure,     you are my treasure
Gm7CmBb
You are my treasure, yeah, you, you, you, you are
CmFm7
You are my treasure,     you are my treasure
Bb4(9)
You are my treasure, yeah, you, you, you, you are
[Refrão]
CmFm7Gm7
Treasure,          that is what you are
CmBbCm
Honey, you`re my golden star
Fm7Gm7
You think you could make my wish come true
CmBbCm
If you let me treasure you
Fm7Bb4(9)
If you let me treasure oh-oh-you
(Ab7MGm7Fm7Fm7(9)Gm7CmBb)
(Ab7MGm7Fm7Fm7(9)Gm7CmBbCm)")

Song.create!( name: "That Thing You Do", artist: "", tags: "rock; Internacional", lyrics: "Tom:A
[Intro]EAm
EABE
You do that thing you do
ABC#mF#
Breaking my heart into a million pieces
F#mAmB
Like you always do
EABE
You don`t mean to be cruel
ABC#mF#
You never even knew about the heartache
DB
I`ve been going through
C#mF#
Well I try and try to forget you girl
EE7AAm
But it´s just so hard to do
EAmEB
Everytime you do that thing you do
EABE
I know all the games you play
ABC#mF#
And I`m gonna find a way to let you know that
F#mAmB
You`ll be mine some day
EABE
`Cause we could be happy can`t you see
ABC#mF#
If you only let me be the one to hold you
DB
And keep you here with me
C#mF#
`Cause I try and try to forget you girl
EE7AAm
But it`s just so hard to do
EAmEE
Everytime you do that thing you do
A
I don`t ask a lot girl (I don`t ask a lot girl)
C#m
But I know one thing`s for sure
(know one thing`s for sure)
F#
It`s the love I haven`t got girl
BCB
And I just can`t take it anymore
[Solo]EABEA7BC#mF#F#mB
EABE
Cause we could be happy can`t you see
ABC#mF#
If you only let me be the one to hold you
DB
And keep you here with me
C#mF#
`Cause it hurts me so just to see you go
EE7AAm
Around with someone new
EAm
And if I know you you`re doing that thing
EAm
Every day just doing that thing
EBAAm(riff)E7M
I can`t take you doing that thing you do")

Song.create!( name: "Turn the page", artist: "", tags: "rock; Internacional", lyrics: "Em
Em
On a long and lonesome highway east of omahaD
You can listen to the engines moaning out as one note songAm                                                                                Em
You think about the woman or the girl you knew the night beforeEm
But your thoughts will soon be wandering the way they always doWhen you`re riding sixteen hours and there`s nothing much to doAnd you don`t feel much like riding, you just wish the trip was through
D                                EmHere I am - on the road againD                                Em
There I am - up on the stageD                                Am
Here I go - playing star againC          D      Em
There I go - turn the pageSo you walk into this restaurant strung out from the roadAnd you feel the eyes upon you, as you`re shaking off the coldYou pretend it doesn`t bother you, but you just want to explodeYeah, most times you can`t hear `em talk, other times you canAll the same old clichés, is it woman? is it man?And you always seem outnumbered, you don`t dare make a standMake your standD                                EmHere I am - on the road againD                                Em
There I am - up on the stageD                                Am
Here I go - playing star againC          D      Em
There I go - turn the page
Oo-ooh, out there in the spotlight, you`re a million miles awayEvery ounce of energy you try to give awayAs the sweat pours out your body like the music that you play, yeahLater in the evening, you lie awake in bedWith the echoes of the amplifiers ringing in your headYou smoke the day`s last cigarette, remembering what she saidWhat she saidHe-eyYeahD                                EmHere I am - on the road againD                                Em
There I am - up on the stageD                                Am
Here I go - playing star againC          D      Em
There I go - turn the pageThere I go - turn that pageThere I go, yeah, yeahThere I go, yeah, yeahThere I go, yeahThere I go, yeahThere I go, oo-oo-oohThere I")

Song.create!( name: "Walk - Pantera [drp D]", artist: "", tags: "rock; Internacional", lyrics: "[Intro]D5
(Riff 2)D5Bb5D5  Ab5D5  Db5
D5  - Eb5F5Gb5F5Eb5
D5
Can`t you see I`m easily bothered by persistance?
Db5
One step from lashing out at you
YouWant in to get under my skin and call
yourself a friend
Db5
I`ve got more friends like you, what do I do?
C5Ab5A5
Is there no standard anymore?
D5
What it takes, who I am, where I`ve been,
Belong
C5Ab5A5
You can`t be something you`re not
D5
Be yourself, by yourself, stay away from me
C5Ab5
A lesson learned in life
F5E5Eb5
known from the dawn of time
[Refrão]
D5Bb5Ab5Db5
Re, spect, walk
D5  - Eb5F5Gb5F5Eb5
What did you say?
D5Bb5Ab5Db5
Re, spect, walk
(D5  - Eb5F5Gb5F5Eb5
) (2x)
Are you talking to me?
(D5…….Db5)
D5
Run your mouth when I`m not around, it`s easy to achieve
Db5
You cry to weak friends that sympathize
D5
Can you hear the violins playing your song?
Db5
Those same friends tell me your every word
[Segunda Parte]
C5Ab5A5
Is there no standard anymore?
D5
What it takes, who I am, where I`ve been,
Belong
C5Ab5A5
You can`t be something you`re not
D5
Be yourself, by yourself, stay away from me
C5Ab5
A lesson learned in life
F5E5Eb5
known from the dawn of time
[Refrão]
D5Bb5Ab5Db5
Re, spect, walk
D5  - Eb5F5Gb5F5Eb5
What did you say?
D5Bb5Ab5Db5
Re, spect, walk
(D5  - Eb5F5Gb5F5Eb5) Are you talking to me?
D5Bb5Ab5Db5
Re, spect, walk
D5  - Eb5F5Gb5F5Eb5
What did you say?
D5Bb5Ab5Db5
Re, spect, walk
(D5  - Eb5F5Gb5F5Eb5) (2x)
Are you talking to me?
(D5  - Eb5F5Gb5F5Eb5) (2x)
No way punk!
[Solo]
[Refrão]
D5Bb5Ab5Db5
Re, spect, walk
D5  - Eb5F5Gb5F5Eb5
What did you say?
D5Bb5Ab5Db5
Re, spect, walk
(D5  - Eb5F5Gb5F5Eb5) (2x)
Are you talking to me?
D5Bb5Ab5Db5
Re, spect, walk
D5  - Eb5F5Gb5F5Eb5
What did you say?
D5Bb5Ab5Db5
Re, spect, walk
(D5  - Eb5F5Gb5F5Eb5) (2x)
Are you talking to me?
[Final]
D5
Walk on home boy!")

Song.create!( name: "War Pigs   – 24", artist: "", tags: "rock; Internacional", lyrics: "PLAY VIDEO
[Intro] 3xE5E5D5D5
2xE5D5
Generals gathered in their masses
Just like witches at  masses
Evil minds that plot destruction
Sorcerer of death`s construction
[riffs]
In the fields the bodies burning
As the war machine keeps turning
Death and hatred to mankind
Poisoning their brainwashed minds
D5E5G5F#5F5E5
All loggerheads!
(D5E5G5F#5F5E5)
(D5E5G5F#5F5E5)
(D5E5G5F#5F5E5)
(E5)
E5
Politicians hide themselves away
They only started the war
Why should they go out to fight?
They leave their role to the poor, yeah
(E5)
Time will tell on their power minds
Making war just for fun
Treating people just like pawns in chess
Wait `till their judgement day comes, yeah
(D5E5G5F#5F5E5)
[Solo]E5
Break 2
(D5E5D5E5)
Now in darkness world stops turning
Ashes where the bodies burning
No more War Pigs have the power
Hand ofGod has struck the hour
[riffs]
Day of judgment, God is calling
On their knees the war pigs crawling
Begging mercies for their sins
Satan, laughing, spreads his wings
All again!")

Song.create!( name: "Whiskey in the jar [DROP]", artist: "", tags: "rock; Internacional", lyrics: "TOCA VIDEO
Drop D
F5
As I was goin` over
D5
The Cook and Kerry mountains
Bb5
I saw the Captain Farrell
F5
His money he was countin`
I first produced my pistol
D5
And then produced my rapier
Bb5
I said    stand and deliver
F5
Or the devil he may take ya
Riff 1: (F5D5)
I took all of his money
And it was a pretty penny
I took all of his money
And I brought it home to Molly
She swore that she`d love me
No never would she leave me
But devil take that woman
Yeah! For you know she tricked me easy
Primeiro Refrão:
C5Bb
Musha rain dum-a-do dum-a-da
Whack for my daddy-o
Whack for my daddy-o, there`s
F5
Whiskey in the jar-o
Being drunk and weary
I went to Molly`s chamber
Taking Molly with me
But I never knew the danger
For about six or maybe seven
Yeah I walked Captain Farrell
I jumped up with my pistols
And I shot him with both barrells
C5Bb
Musha rain dum-a-do dum-a-da
Whack for my daddy-o
Whack for my daddy-o, there`s
F5
Whiskey in the jar-o
SOLO:
Riff 2x apenas
Now some men like the fishing
And some men like the fowling
And some men like the hear
The hear cannon ball a roaring
Me I like sleeping
Specially in my Molly`s chamber
But here I am in prison
Here I am with a ball and chain, yeah
C5Bb
Musha rain dum-a-do dum-a-da
Whack for my daddy-o
Whack for my daddy-o, there`s
F5
Whiskey in the jar-o
Riff 4: (F5E  D)
F5E  F
Musha rain dum-a-do dum-a-da
Musha rain dum-a-do dum-a-da
Musha rain dum-a-do dum-a-da
Musha rain dum-a-do dum-a-da")

Song.create!( name: "Wish you were here", artist: "", tags: "rock; Internacional", lyrics: "CD
So, so you think you can tell
Am
Heaven from hell
G
Blue skies from pain
D
Can you tell a green field
C
From a cold steel rail
Am
A smile from a veil
G
Do you think you can tell
C
Did they get you to trade
D
Your heroes for ghosts
Am
Hot ashes for trees
G
Hot air for a cool breeze
D
Cold comfort for change
C
Did you exchange
Am
A walk on part in the war
G
For a lead role in a cage
(EmG)
(EmG)
(EmA9)
(EmA9)
(G)
[Refrão]
CD
How I wish, how I wish you were here
Am
We`re just two lost souls
Swimming in a fish bowl
G
Year after year
D
Running over the same old ground,
C
What have we found
Am
The same old fears
G
Wish you were here")

Song.create!( name: "Would?", artist: "", tags: "rock; Internacional", lyrics: "PLAY VIDEO
F#5G
Know me
F#5GF#5
Broken by my master
G
Teach thee on child
F#5G
Love hereafter
[Primeiro Refrão]
B5G5
Into the flood again
B5G5
Same old trip it was back then
B5G5
So I made a big mistake
B5G5
Try to see it once my way
[Interlúdio]F#5G
F#5G
Drifting bodyits
F#5GF#5
Sole desertion
G
Flying, not yet
F#5G
Quite the notion
B5G5
Into the flood again
B5G5
Same old trip it was back then
B5G5
So I made a big mistake
B5G5
Try to see it once my way
[Solo]F#5E5G5E5
B5G5
Into the flood again
B5G5
Same old trip it was back then
B5G5
So I made a big mistake
B5G5
Try to see it once my way
D5G#5
Am I wrong?
G5E5D5
Have I run too far to get home?
G#5
Have I gone?
G5E5
Left you here alone
D5G#5
Am I wrong?
G5E5D5
Have I run too far to get home?
G#5
Have I gone?
G5E5
Left you here alone
[Final]
D7(9+)
If I would, could you")

Song.create!( name: "You give love a bad name", artist: "", tags: "rock; Internacional", lyrics: "Tom:Ab
`Shot through the heart
And you`re to blame
Darling, you give love a bad name
Introdução:C5Ab5Bb5C5
Ab5Bb5(Eb5C5)
C5Ab5Bb5C5
Ab5Bb5
(Guitarra Solo 1)
An angel`s smile
Is what you sell
You promise me heaven
Then put me through hell
Chains of love
Got a hold on me
When passion`s a prison
You can`t break free
Ponte:
F5
Whoa, you`re a loaded gun
Bb5
Whoa, There`s nowhere to run
F5
No one can save me
G5
The damage is done
Primeiro Refrão:
C5Ab5
Shot through the heart
Bb5C5
And you`re to blame
Ab5Bb5Eb5C5
You give love a bad  name (bad name)
C5Ab5
I play my part
Bb5C5
And you play your game
Ab5Bb5Eb5C5
You give love a bad  name (bad name)
AbBb5
You give love a bad name
Segunda Parte:
(Riff 1)
Paint your smile
On your lips
Blood red nails
On your fingertips
A school boy`s dream
You act so shy
Your very first kiss
Was your first kiss goodbye
Ponte:
F5
Whoa, you`re a loaded gun
Bb5
Whoa, there`s nowhere to run
F5
No one can save me
G5
The damage is done
Segundo Refrão:
C5Ab5
Shot through the heart
Bb5C5
And you`re to blame
Ab5Bb5Eb5C5
You give love a bad  name (bad name)
C5Ab5
I play my part
Bb5C5
And you play your game
Ab5Bb5Eb5C5
You give love a bad  name (bad name)
Ab5Bb5
You give love
Solo:C5Ab5Bb5C5
Ab5Bb5(Eb5C5)
C5Ab5Bb5C5
Ab5Bb5
G53
Terceiro Refrão:
Shot through the heart
And you`re to blame
You give love a bad name
I play my part
And you play your game
You give love a bad name (bad name)
Ab5Bb5(Eb5C5)
You give love
Ab5Bb5(Eb5C5)
You give love              (bad name)
Ab5Bb5(Eb5C5)
You give love
Ab5Bb5(Eb5C5)
You give love              (bad name)
Ab5Bb5(Eb5C5)
You give love
Ab5Bb5(Eb5C5)
You give love              (bad name)
Ab5Bb5(Eb5C5)
You give love
Ab5Bb5(Eb5C5)
You give love              (bad name)")

Song.create!( name: "Zombie", artist: "", tags: "rock; Internacional", lyrics: "F
[Intro]DmBbFC
DmBb
Another head hangs lowly
FC
Child is slowly taken
DmBb
And the violence causes silence
F                              C
Who are we mistaking?
Dm
But you see, it`s not me
Bb
It`s not my family
FC
In your head, in your head, they are fighting
Dm
With their tanks and their bombs
Bb
And their guns, and their drones
FC
In your head, in your head they are crying
DmBb
What`s in your head, in your head
FC
Zombie, zombie, zombie-ie-ie
DmBb
What`s in your head, in your head
FCBb
Zombie, zombie, zombie-ie-ie-ie, oh
DmBb
Another mother`s breaking
FC
Heart is taking over
DmBb
When the violence causes silence
FC
We must be mistaken
Dm
It`s the same old theme
Bb
since 2019
FC
In your head, in your head, they`re still fighting
Dm
With their tanks and their bombs
Bb
And their guns, and their drones
FC
In your head, in your head, they are dying
DmBb
What`s in your head, in your head
FC
Zombie, zombie, zombie-ie-ie
DmBb
What`s in your head, in your head
FAmC
Zombie, zombie, zombie-ie-ie-ie
[Solo]DmBbFC
DmBbDmBb
Dm
It`s the same old theme
Bb
In   2019
FC
In your head, in your head, they are dyin`
DmBb
What`s in your head, in your head?
FC
Zombie, zombie, zombie-ie-ie
DmBb
What`s in your head, in your head?
FC
Zombie, zombie, zombie-ie-ie-ie, oh
[Final]DmBbFC
DmBbF")

Song.create!( name: "Times Like These", artist: "", tags: "rock; Internacional", lyrics: "Tom: 
[Intro] 

D/a [RIFF D 4x]      CLEAN

[ RIFF solo 7 9x]        dist

D/a [RIFF D 2x]      

D                 Am
I, I`m a one way motorway
                  C
I`m a road that drives away
      Em               
Then follows you back home

D/a [RIFF D 1x] 

D                       Am
I, I`m a street light shining
                    C
I`m a white light blinding bright
 Em               
Burning off and on
       


D/a [RIFF D 2x] 

      C
It`s times like these
     Em             D  
You learn to live again
      C
It`s times like these
     Em             D  
You give and give again
      C
It`s times like these
     Em             D  
You learn to love again
      C
It`s times like these
 Em                 
Time and time again
      
D/a [RIFF D 2x] 

D                 Am
I, I`m a new day rising
                  C
I`m a brand new sky that
           Em               
Hang the stars upon tonight

D/a [RIFF D 1x] 

D                  Am
I, I`m a little divided
              C
Do I stay or run away
     Em                
And leave it all behind?

D/a [RIFF D 2x]   haaahaahaaaã
[Refrão]

      C
It`s times like these
     Em             D  
You learn to live again
      C
It`s times like these
     Em             D  
You give and give again
      C
It`s times like these
     Em             D  
You learn to love again
      C
It`s times like these
 Em 
Time and time again

[ RIFF solo 7 12x]        dist

[ RIFF solo 7 4x]        dist

[Refrão Final]

      C
It`s times like these
     Em             D  
You learn to live again
      C
It`s times like these
     Em             D  
You give and give again
      C
It`s times like these
     Em             D  
You learn to love again
      C
It`s times like these
 Em             D  
Time and time again

[vox alta]

      C
It`s times like these
     Em             D  
You learn to live again
      C
It`s times like these
     Em             D  
You give and give again
      C
It`s times like these
     Em             D  
You learn to love again
      C
It`s times like these
 Em             D  
Time and time again

[clean]
      C
It`s times like these
     Em             D  
You learn to live again
      C
It`s times like these
     Em             D  
You give and give again
      C
It`s times like these
     Em             D  
You learn to love again
      C
It`s times like these
 Em             D  
Time and time again

[Final] C



—-------------")

Song.create!( name: "Tonight, Tonight", artist: "", tags: "rock; Internacional", lyrics: "Tom: G
[Intro] G  G4  G  G4  Em  E5+  Em  E5+
        C  G6/B  D9
        G  G4

[Clean] C7M  G/D    C7M  G/D


 C7M     G/D          C7M
Time is never time at all
         G/D        C7M
You can never ever leave
    G/D            Em            G
Without leaving a piece of youth

C7M          G/D                C7M
    And our lives are forever changed
         G/D          C7M
We will never be the same
     G/D                 Em           G
The more you change the less you feel
   C7M   G/D    C7M      G/D   C7M  G/D
Believe,     believe in me, believe


[Strings]
   G    D/F#  Em       Am
Believe          that life can change
      C                   G  D/F#  Em
That you`re not stuck in vain
       Am                  C         C
We`re not the same, we`re different

[Refrão]

   C  G6/B  D9     C  G6/B  D9
Toni___________ght
   C  G6/B  D9
Tonight
   Em         Am
Tonight, so bright
   C  G6/B  D9     C  G6/B  D9
Toni___________ght
   G    G4  G  G4 
Tonight

Em    E5+  Em  E5+


G           G4               G
  And you know you`re never sure
            G4                Em
But you`re sure you could be right
         E5+             Em         E5+
If you held yourself up to the light

G         G4            G
  And the embers never fade

         G4          Em
In your city by the lake
      E5+        Em           E5+
The place where you were born

[Clean]
   C7M   G/D    C7M      G/D   C7M  G/D
Believe,     believe in me, believe

[Pré-Refrão]

   G    D/F#  Em
Believe
        Am      C           G  D/F#  Em
In the resolute urgency of now
        Am
And if you believe
         C
There`s not a chance

[Refrão]

   C  G6/B  D9     C  G6/B  D9
Toni___________ght
   C  G6/B  D9
Tonight
   Em         Am
Tonight, so bright
   C  G6/B  D9
Toni___________ght

[Terceira Parte]

   G    D/F#  Em
Tonight
        Am        C
We`ll crucify the insincere
   G    D/F#  Em
Tonight
       Am
We`ll make things right
       C
We`ll feel it all
   G    D/F#  Em
Tonight
       Am
We`ll find a way
   C             G    D/F#  Em
To offer up the night
           Am
The indescribable
 C               G   D/F#  Em
Moments of your life
       Am          C
The impossible is possible
   G    D/F#  Em
Tonight
   Am                 C
Believe in me as I believe in you

[Final]

   C7M  G/D
Tonight
   C7M      G/D
Tonight, tonight
   C7M   G/D         G  D/F#  Em
Tonight,     tonight")

Song.create!( name: "Be Yourself", artist: "", tags: "rock; Internacional", lyrics: "Tom: 
intro : Bm G 2x

Bm D G Em 2x

verse :
Bm                      D
Someone falls to pieces
   G        
sleepin all alone
Em                  Bm
someone kills the pain
                      D                 
spinning in the silence
    G               Em
to finally drift away
Bm                  D
someone gets excited
       G
in a chapel yard
 Em              Bm
catches a bouquet
                D  
another lays a dozen
G                       Em
white roses on a grave 

Chorus :
Bm                   D               G         Em        
to be yourself is all that you can do
Bm                    D               G         Em  
to be yourself is all that you can do

Bm D G Em 

verse;
Bm              D            G
someone finds salvation in everyone
    Em               Bm
and another only pain
                D  
someone tries to hide himself
     G                     Em    
down inside himself he prays
Bm            D                
someone swears his true love
G                     
until the end of time
Em                Bm
another runs away
                  D            
Separate or united?
G                 Em        
Healthy or insane?

Chourus
Bm                   D               G         Em
to be yourself is all that you can do
Bm                   D               G         Em
to be yourself is all that you can do
Bm                   D               G         Em
to be yourself is all that you can do
Bm                   D               G         Em
to be yourself is all that you can do

Solo

G                    A         
And even when you`ve paid enough
Bm                   D
Been pulled apart or been held up
G                    A
with every single memory of
Bm               D
the good or bad faces of luck 
G                A
don`t lose any sleep tonight
Bm                   D
i`m sure everything will end up alright
G                A
you may win or lose
Bm                       D               G         Em
but to be yourself is all that you can do
Bm                   D               G         Em
to be yourself is all that you can do")

Song.create!( name: "Machinehead", artist: "", tags: "rock; Internacional", lyrics: "Intro: 
 2x  C#  [RIFF SOBE]
 4x 
 4x yeah yeah yeah yeah
 
 C#		A
 [Intro] curta                         


Refrão:
C#                      C#                      A
Breathe in, breathe out breathe in, breathe out breathe in
C#                      C#                      A
Breathe in, breathe out breathe in, breathe out breathe in

Verso:

C#
Tied to a wheel,my fingers got to feel
A
Bleeding though a tourniquet smile
C#
I spin on a whim, I slide to the right
A
I felt you like electric light

C#  [RIFF SOBE]
For our love, for our fear
A
For our rise against the years and years and years

Verso:

E3   
Got a machinehead
 E4			   E3
Better than the rest
E3             
Green to red
E4			   E3
Machinehead

[riff Corda Mi]
E      B     
  Got a machinehead
C#     A    
      Better than the rest
E      B     
   Green to red


Interludio:

F#                      A
 And I walk from my machine
F#                      A
 And I walk from my machine

[INTRO Curta]

Refrão:
C#                      C#                      A
Breathe in, breathe out breathe in, breathe out breathe in


C#
Deaf, dumb and dirty, starting to deserve this
A
Leaning on my conscience wall 

C#
blood is like wine
unconscious all the time
A
If I had it all again I`d change it all

Verso:

E      B     
  Got a machinehead
C#     A    
      Better than the rest

E      B     
   Green to red
C#     A    
	   Machinehead

E      B     
  Got a machinehead
C#     A    
      Better than the rest

E      B     
   Green to red

C#     C#

F#                      A
 And I walk from my machine
F#                      A
 And I walk from my machine

Interludio [2x So batera sol ,baixo 2x mini solo]:
   


Refrão:
C#                      C#                      A
Breathe in, breathe out breathe in, breathe out 

breathe in  breathe in breathe in

Verso:

E      B     
  Got a machinehead
C#     A    
      Better than the rest

E      B     
   Green to red
C#     A    
	   Machinehead

E      B     
  Got a machinehead
C#     A    
      Better than the rest

E      B     
   Green to red

C#     C#

Interludio final:

E      B      C#     A

 Yeah yeah yeah  
 Better than the rest
 Better than the rest
 Machinehead

E      B     C#  [break]

A

F#                  A
  I walk for my machine
F#                  A          E
  I walk for my machine...")

Song.create!( name: "In Bloom", artist: "", tags: "rock; Internacional", lyrics: "Tom: 
Intro:
 Bb5      G5    F5       G#5  2X  
 Bb       F#        Eb        B   A   2X  

[no guit]
Bb       F#        Eb    B   A
Sell the kids for food
Bb       F#        Eb    B   A
Weather changes moods
[clean]
Bb       F#        Eb    B   A
Spring is here again
Bb       F#        Eb    
Reproductive glands

Refrão: (2x)

Bb   		 G            Bb   		 G  
he`s the one who likes all our pretty songs
       Bb   		 G  
And he likes to sing along
       Bb   		 G  
And he likes to shoot his gun
          C5                 Eb5   
But he knows not what it means
       C5                 Eb5   
Knows not what it means, And I say  [repeat 2x]


( Bb5      G5    F5       G#5 ) 2X 

[no guit]
Bb       F#        Eb    B   A
We can have some more
Bb       F#        Eb    B   A
Nature is a whore
[clean]
Bb       F#        Eb    B   A
Bruises on the fruit
Bb       F#        Eb   
Tender age in bloom

Refrão: (2x)

 Bb   		 G            Bb   		 G  
he`s the one who likes all our pretty songs
       Bb   		 G  
And he likes to sing along
       Bb   		 G  
And he likes to shoot his gun
          C5                 Eb5   
But he knows not what it means
       C5                 Eb5   
Knows not what it means, And I say [repeat 2x]


( Bb5      G5    F5       G#5 ) 2X 

[SOLO Bbm]


Bb   		 G            Bb   		 G  
he`s the one who likes all our pretty songs
       Bb   		 G  
And he likes to sing along
       Bb   		 G  
And he likes to shoot his gun
          C5                 Eb5   
But he knows not what it means
       C5                 Eb5   
Knows not what it means, And I say [repeat 2x]

( Bb5      G5    F5       G#5 ) 2X   >  Bb5")

Song.create!( name: "Daughter", artist: "", tags: "rock; Internacional", lyrics: "Tom: 
[Primeira Parte]

G   G9  G   G9  G               G9   G 
  Alo__ne, listless, breakfast table
      G9               G
In an otherwise empty room
 G9    G     G9  G  
Young girl, vio_lence 
G9  G                   G9  G
   Center of her own attention
     G9            G           
The mother reads aloud 
  G     G9            G
Child tries to understand it
G9           G
  Tries to make her proud
      G9    G
The shades go

[Refrão]

 Em7          Em   Em7
Down it`s in her  head
     Em   Em7              
Painted room 
       Em    Em7               G
Can`t deny there`s something wrong

[Segunda Parte]

       G9   G                G9  G
Don`t call me daughter, not fit to
     G9   G              G9   G
The picture kept will remind me
       G9   G                G9  G9
Don`t call me daughter, not fit to
     G9   G              G9   G
The picture kept will remind me
       G9   
Don`t call me

( Em7  Em   Em7  Em )
( Em7  Em   Em7  Em )
( G  G9 )

[Refrão 2]

 Em7      Em        Em7       Em        Em7  Em
     She holds the hand that holds her down
     Em7  Em   Em7  G  G9
She will ri___se  above

[SOLO]
( G  G9  G  G9 )
( G  G9  G  G9 )
( G  G9  G  G9 )
( G  G9 )

[Segunda Parte]

[Só batera]

G        G9   G
  Don`t call me daughter, not fit to
        G9                    G
The picture kept will remind me
       G9                           G
Don`t call me daughter, not fit to be
             G9               G
The picture kept will remind me

       G9           G        G9
Don`t call me daughter, not fit to
G      G9      G    G9          G
  The picture kept will remind me
       G9   G                G9     G
Don`t call me daughter, not fit to be
     G9      G    G9          G
The picture kept will remind me
       G
Don`t call me

( Em7  Em  Em7  Em )
( Em7  Em  Em7  Em )
( Em7  Em  Em7  Em  G )

Em7             G
    The shades go down
Em7                G
    The shades go down
Em7             G   Em7 G  Em7  G
    The shades go, go,    go")

Song.create!( name: "Come As You Are", artist: "", tags: "rock; Internacional", lyrics: "[DROP]
[Intro] Em  D

[Primeira Parte]

 Em    
Come 

    D            Em
as you are, as you were
      D           Em
As I want you to be
       D            Em
As a friend, as a friend
       D       Em
As a known enemy
           
           D          Em
Take your time, hurry up
           D               Em
Choice is yours, don`t be late
        D           Em
Take a rest, as a friend

[Refrão]

      D  
As an old
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah

[Segunda Parte]

 Em     
Come

   D               Em
 doused in mud, soaked in bleach
      D           Em
As I want you to be
       D           Em
As a trend, as a friend

[Refrão]

      D  
As an old
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah



[DIST]

A         C           A            C
  And I swear that I don`t have a gun
       A            C
No, I don`t have a gun
       A            C
No, I don`t have a gun

[Intro] Em  D

[SOLO 4x]

     Em  G
Memory,  yeah
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah
     Em  G
Memory,  yeah

[Terceira Parte]

A         C           A            C
  And I swear that I don`t have a gun
       A            C
No, I don`t have a gun
       A            C
No, I don`t have a gun
       A            C
No, I don`t have a gun
       A            C
No, I don`t have a gun

[Final] Em  D

2x     Em  D
Memory,  yeah
2x    Em  D
Memory,  yeah")

Song.create!( name: "Freak", artist: "", tags: "rock; Internacional", lyrics: "[DROP]


Tom: 
Intro 4x: (Riff 1)

 E  DEE  EEE DDD

No more maybes
Your baby`s got rabies
Sitting on a  ball
In the middle of the andes

Refrão:

D   F Gb    (G Ab )

   Yeah
I`m a freak of nature
   Yeah
I`m a freak

   F7M(11+)
If only I could be

 E  DEE  EEE D E F Gb
As cool as you
As cool as you

[D     E F Gb G]
Segunda Parte:
(Riff 4)
Body and soul, I`m a freak, I`m a freak
Body and soul, I`m a freak, I`m a freak

Riff 4 - Parte 1 de 2            (3x)
F5      C5     D5
D|----3-------5------5---4---2---0-----
A|--3---3---3------0-------------------
E|3-------x------0-----0---0---0-------

Riff 4 - Parte 2 de 2
F5      C5     D5
D|----3-------5--0---------------------
A|--3---3---3----0---------------------
E|3-------x------0---------------------


(Riff 5)

Primeira Parte com variação na letra:

(Riff 1)
 E  DEE  EEE DDD
Try to be different
Well get a different disease
Seems it`s in fashion
To need the cold sore cream


D   F Gb    (G Ab )
Yeah
I`m a freak of nature
Yeah
I`m a freak

(Riff 5)

G5             F# 
I don`t really know
How t`put`on a cool show
As boring as they come
Just tell me where to  go
   F7M(11+)
If only I could be as cool as you

(Riff 3)
 E  DEE  EEE D E F Gb
As cool as you
As cool as you
As cool as you
As cool as you

Segunda Parte com variação:
(Riff 6)
F        C  D           F          C D

Body and soul, I`m a freak, I`m a freak
Body and soul, I`m a freak, I`m a freak

Solo



Solo 2x triplets
E|------------------------------------------
B|10-10-10-10-10-13-13-13-13-10-------------
G|-------------------------------11-11-11-11 ….

Solo - Parte 3 de 3
E|------------------------------
B|/12...\7.../10...\7...\-------
G|------------------------------

F        C  D           F          C D
Body and soul, I`m a freak, I`m a freak
Body and soul, I`m a freak, I`m a freak

(Riff 1) (4x)
Freak

E dim")

Song.create!( name: "Lithium", artist: "", tags: "rock; Internacional", lyrics: "[DROP]

D5  F#5     B5
    I`m so happy
  G5      A#5      C5        A5
`Cause today I`ve found my friends
        C5     D5
They`re in my head

F#5    B5
I`m so ugly
      G5     A#5         C5     A5
But that`s okay, `cause so are you
     C5          D5
We broke our mirrors

 F#5    B5
Sunday morning
   G5    A#5    C5     A5
Is everyday for all I care
    C5        D5
And I`m not scared

 F#5      B5
Light my candles
G5    A#5        C5          A5  C5
In a daze `cause I`ve found God

Primeiro Refrão:

D5  F#5  B5  G5  A#5 C5  A5  C5
(Yeah)

Segunda Parte:

D5  F#5     B5
    I`m so lonely
      G5     A#5    C5       A5
But that`s okay I shaved my head
         C5  D5
And I`m not sad

F#5       B5
And just maybe
G5       A#5     C5        A5
I`m to blame for all I`ve heard
    C5       D5
But I`m not sure

F#5       B5
I`m so excited
G5       A#5     C5        A5
I can`t wait to meet you there
    C5       D5
But I don`t care

F#5     B5
I`m so horny
      G5     A#5     C5      A5  C5
But that`s okay, my will is good

Segundo Refrão:

D5  F#5  B5  G5  A#5 C5  A5  C5
(Yeah)

Ponte:

G5    A#5     G5       A#5        G5
   I like it, I`m not gonna crack
I miss you, I`m not gonna crack
I love you, I`m not gonna crack
I killed you, I`m not gonna crack

I like it, I`m not gonna crack
I miss you, I`m not gonna crack
I love you, I`m not gonna crack
I killed you, I`m not gonna crack



Terceira Parte:

D5  F#5     B5
    I`m so happy
  G5      A#5      C5        A5
`Cause today I`ve found my friends
        C5     D5
They`re in my head

F#5    B5
I`m so ugly
      G5     A#5         C5     A5
But that`s okay, `cause so are you
     C5          D5
We broke our mirrors

 F#5    B5
Sunday morning
   G5    A#5    C5     A5
Is everyday for all I care
    C5        D5
And I`m not scared

 F#5      B5
Light my candles
G5    A#5        C5          A5  C5
In a daze `cause I`ve found God

Terceiro Refrão:

D5  F#5  B5  G5  A#5 C5  A5  C5
(Yeah)

Ponte:

G5    A#5     G5       A#5        G5
   I like it, I`m not gonna crack
I miss you, I`m not gonna crack
I love you, I`m not gonna crack
I killed you, I`m not gonna crack

I like it, I`m not gonna crack
I miss you, I`m not gonna crack
I love you, I`m not gonna crack
I killed you, I`m not gonna crack

( D5 )")
