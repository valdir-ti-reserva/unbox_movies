-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18/09/2020 às 15:09
-- Versão do servidor: 10.4.6-MariaDB
-- Versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `unbox_movies`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(1, 'Drama'),
(2, 'Suspense'),
(3, 'Terror'),
(4, 'Kids'),
(5, 'Policial'),
(6, 'Adventure');

-- --------------------------------------------------------

--
-- Estrutura para tabela `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster` varchar(200) DEFAULT NULL,
  `trending` tinyint(4) DEFAULT NULL,
  `discover` tinyint(4) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `tv_show` tinyint(4) NOT NULL DEFAULT 0,
  `seasons` int(11) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `movies`
--

INSERT INTO `movies` (`id`, `title`, `name`, `original_title`, `overview`, `poster`, `trending`, `discover`, `duration`, `gender_id`, `tv_show`, `seasons`, `episodes`) VALUES
(1, 'Fight Club', 'Clube da Luta', 'Fight Club', 'Um homem deprimido que sofre de insônia conhece um estranho vendedor chamado Tyler Durden e se vê morando em uma casa suja depois que seu perfeito apartamento é destruído. A dupla forma um clube com regras rígidas onde homens lutam. A parceria perfeita é comprometida quando uma mulher, Marla, atrai a atenção de Tyler.', 'https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg', NULL, NULL, '01:50:00', 1, 0, NULL, NULL),
(2, 'Mulan', 'Mulan', 'Mulan', 'Mulan, uma jovem chinesa que não se encaixa na sociedade, teme que seu pai, um homem doente, seja convocado para lutar na guerra que se aproxima. A garota então se disfarça de homem e assume o posto de seu pai no exército chinês. Acompanhada por seu dragão Mushu, Mulan parte para a linha de batalha, faz amizade com os outros soldados e usa sua inteligência para ajudar a combater a invasão dos hunos enquanto luta para esconder sua verdadeira identidade.', 'https://image.tmdb.org/t/p/original/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg', NULL, 1, '02:00:00', 3, 0, NULL, NULL),
(3, 'Dark Forces', 'Fogo Sombrio', 'Fuego negro', 'Franco (Tenoch Huerta) é um criminoso que chega a um hotel barato e assustador focado na missão de achar sua irmã. Entretanto, no meio do caminho conhece a garçonete Rubi (Eréndira Ibarra) com quem tem tórridas cenas.', 'https://image.tmdb.org/t/p/original/dKSN0oZCUSNcEd39MnySLYmpUiJ.jpg', 1, NULL, '02:12:00', 4, 0, NULL, NULL),
(4, 'We Bare Bears: The Movie', 'We Bare Bears: The Movie', 'We Bare Bears: The Movie', 'Ursos sem Curso mostra a vida caótica e aventurada de Pardo, Panda e Polar; três ursos forasteiros que procuram por sorte na vida. . A serie conta a história dos três ursos irmãos, cada um tendo personalidade muito diferente. Pardo é confiante, alegre e as vezes atrapalhado; Panda é tímido e busca por um amor; Polar é quieto e confiável.', 'https://image.tmdb.org/t/p/original/kPzcvxBwt7kEISB9O4jJEuBn72t.jpg', 1, NULL, '02:03:00', 4, 0, NULL, NULL),
(5, 'Trolls World Tour', 'Trolls 2', 'Trolls World Tour', 'A rainha Poppy (Anna Kendrick) e Branch (Justin Timberlake) fazem uma descoberta surpreendente: Há outros mundos Troll além do seu, e suas diferenças criam grandes confrontos entre essas diversas tribos. Quando uma ameaça misteriosa coloca todos os Trolls do país em perigo, Poppy, Branch e seu grupo de amigos devem embarcar em uma jornada épica para criar harmonia entre os Trolls rivais e uní-los contra um mal maior.', 'https://image.tmdb.org/t/p/original/7W0G3YECgDAfnuiHG91r8WqgIOe.jpg', 1, 1, '01:48:00', 5, 0, NULL, NULL),
(6, 'The Lord of the Rings: The Two Towers', 'O Senhor dos Anéis: As Duas Torres', 'The Lord of the Rings: The Two Towers', 'Após a captura de Merry e Pippy pelos orcs, a Sociedade do Anel é dissolvida. Frodo e Sam seguem sua jornada rumo à Montanha da Perdição para destruir o anel e descobrem que estão sendo perseguidos pelo misterioso Gollum. Enquanto isso, Aragorn, o elfo e arqueiro Legolas e o anão Gimli partem para resgatar os hobbits sequestrados e chegam ao reino de Rohan, onde o rei Theoden foi vítima de uma maldição mortal de Saruman.', 'https://image.tmdb.org/t/p/original/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg', 1, NULL, '03:16:00', 6, 0, NULL, NULL),
(7, 'On the Waterfront', 'Sindicato de Ladrões', 'On the Waterfront', 'Terry Malloy sonha com as glórias do boxe, mas foi convencido pelo corrupto mafioso Johnny Friendly, para quem trabalha, a perder uma luta. Quando Terry presencia um assassinato cometido pelos capangas do chefe, ele se sente responsável pelo crime.', 'https://image.tmdb.org/t/p/original/v1RtJ1qR4v9nrnfoBVBl6hjTW9.jpg', NULL, 1, '02:07:00', 3, 0, NULL, NULL),
(8, 'Brazil', 'Brasil', 'Brazil', 'Sam Lowry vive em um Estado futurista totalitário controlado pelos computadores e pela burocracia, onde todos são governados por fichas e cartões de crédito. Em meio à opressão, Sam acaba se apaixonando por Jill Layton, uma terrorista.', 'https://image.tmdb.org/t/p/original/d0PibPzCK4fVikjoD1PqHovbvkt.jpg', 1, 1, '01:52:00', 2, 0, NULL, NULL),
(9, 'Citizen Kane', 'Cidadão Kane', 'Citizen Kane', 'Apontado frequentemente como um dos melhores filmes já produzidos, a obra-prima de Orson Welles conta a história do magnata da imprensa Charles Foster Kane em uma sequência de flashbacks. Um jornalista fica intrigado pela última palavra de Kane - rosebud - e tenta descobrir o seu significado entrevistando pessoas do passado do magnata.', 'https://image.tmdb.org/t/p/original/sav0jxhqiH0bPr2vZFU0Kjt2nZL.jpg', 1, NULL, '02:11:00', 5, 0, NULL, NULL),
(10, 'Jarhead', 'Soldado Anônimo', 'Jarhead', 'Ronan, piloto de caça das Forças de Defesa de Israel e filho de um senador dos EUA, é abatido e capturado na Síria após uma missão. Assim, um esquadrão israelense é enviado para resgatá-lo em apenas 36 horas.', 'https://image.tmdb.org/t/p/original/4rCzaZy5Qkvxh5xaVpHriXSLTgC.jpg', 1, NULL, '02:00:00', 1, 0, NULL, NULL),
(11, 'Star Trek: First Contact', 'Jornada nas Estrelas: Primeiro Contato', 'Star Trek: First Contact', 'O capitão Jean-Luc e a tripulação da Enterprise embarcam em uma nova aventura, enfrentando os Borgs, criaturas meio orgânicas e meio máquinas que formam uma comunidade com um único objetivo: conquistar e assimilar todas as raças. Liderados por sua sedutora e sádica rainha, os Borgs seguem para a Terra com um plano demoníaco para alterar a história. O último encontro entre Picard e os Borgs quase o matou e agora ele quer vingança.', 'https://image.tmdb.org/t/p/original/vrC1lkTktFQ4AqBfqf4PXoDDLcw.jpg', 1, NULL, '03:23:00', 6, 0, NULL, NULL),
(12, 'Volver', 'Volver', 'Volver', 'Ao saberem da morte da tia, Raimunda, sua filha Paula e a irmã Sole retornam à sua cidade natal no interior da Espanha. Suas vidas são transformadas quando o fantasma da mãe morta aparece para ajudá-las a resolver questões do passado.', 'https://image.tmdb.org/t/p/original/ljRPzuI1xybiFUGU1uCRdx68h0K.jpg', NULL, NULL, '01:40:00', 6, 0, NULL, NULL),
(13, 'Reservoir Dogs', 'Cães de aluguel', 'Reservoir Dogs', 'Criminoso reúne seis bandidos para grande roubo de diamantes. Algo sai errado e um deles é ferido durante roubo e os bandidos precisam descobrir quem foi que os traiu, o que gera enorme tensão no grupo e enfraquece a todos.', 'https://image.tmdb.org/t/p/original/AjTtJNumZyUDz33VtMlF1K8JPsE.jpg', 1, NULL, '02:14:00', 6, 0, NULL, NULL),
(14, 'Lock, Stock and Two Smoking Barrels', 'Jogos, Trapaças e Dois Canos Fumegantes', 'Lock, Stock and Two Smoking Barrels', 'Querendo fazer fortuna em uma partida de pôquer de alto risco, quatro rapazes ineptos do East End de Londres acabam enterrados em dividas (Netflix). As marcas do Guy Ritchie (diretor do filme) são sempre muita violencia, submundo do crime, comédia, e reviravoltas surpreendentes.', 'https://image.tmdb.org/t/p/original/8kSerJrhrJWKLk1LViesGcnrUPE.jpg', NULL, 1, '02:21:00', 2, 0, NULL, NULL),
(15, 'Star Trek: Insurrection', 'Jornada nas Estrelas: Insurreição', 'Star Trek: Insurrection', 'A tripulação da nave Enterprise se rebela contra a Federação Interplanetária para proteger os habitantes do planeta Ba\'Ku. Durante uma missão a este planeta, Data descobre que esta civilização está sendo ameaçada, mas a Primeira Diretiva da Federação diz que nenhuma missão da Frota Estelar pode interferir em outras culturas. Apesar disso, o capitão Jean-Luc Picard desobedece uma ordem superior e, junto com sua tripulação, decide comandar uma revolta para preservar o planeta paradisíaco.', 'https://image.tmdb.org/t/p/original/9pbc44kltJhArUNyrdQcantMEvH.jpg', 1, NULL, '03:29:00', 6, 0, NULL, NULL),
(16, 'Saw II', 'Jogos Mortais 2', 'Saw II', 'O detetive Eric Matthews consegue prender Jigsaw, o qual está morrendo. O que ele desconhece é que isso faz parte de um plano ainda maior do assassino sádico, que agora mantém o filho do policial como refém e pretende torná-lo uma de suas vítimas.', 'https://image.tmdb.org/t/p/original/gTnaTysN8HsvVQqTRUh8m35mmUA.jpg', NULL, 1, '02:00:00', 3, 0, NULL, NULL),
(17, 'The Big Lebowski', 'O Grande Lebowski', 'The Big Lebowski', 'Jeff Lebowski é um boa vida que acaba se envolvendo com a história de um milionário com o mesmo nome. O ricaço pede ajuda a Jeff para entregar o dinheiro do resgate de sua esposa, que foi sequestrada por bandidos perigosos.', 'https://image.tmdb.org/t/p/original/d4J7GotCjvDJBAYayZBTc5nLbbP.jpg', NULL, 1, '01:54:00', 3, 0, NULL, NULL),
(18, 'Charlie and the Chocolate Factory', 'A Fantástica Fábrica de Chocolates', 'Charlie and the Chocolate Factory', 'Baseado no conto de Roald Dahl, este cômico e fantástico filme segue o jovem Charlie Bucket e seu avô Joe. Eles se juntam a um pequeno grupo de ganhadores de uma competição, os quais vão para um passeio na mágica e misteriosa fábrica do excêntrico Willy Wonka. Ajudado por seus anões trabalhadores, Wonka esconde uma surpresa para durante o passeio.', 'https://image.tmdb.org/t/p/original/wfGfxtBkhBzQfOZw4S8IQZgrH0a.jpg', NULL, 1, '02:23:00', 4, 0, NULL, NULL),
(19, 'Metropolis', 'Metrópolis', 'Metropolis', 'A cidade de Metrópolis é dividida em duas: de um lado estão os operários, vivendo na miséria e explorados por máquinas. Do outro, estão os políticos, que desfrutam de um jardim idílico. Uma história de amor surge entre os dois extremos da cidade.', 'https://image.tmdb.org/t/p/original/hUK9rewffKGqtXynH5SW3v9hzcu.jpg', NULL, NULL, '01:58:00', 2, 0, NULL, NULL),
(20, 'Shaft', 'Shaft', 'Shaft', 'Policiais corruptos, pequenos traficantes de drogas, informantes vulgares e sádicos jovens ricos estão prontos para matar. Para o detetive e policial John Shaft, é apenas mais uma noite no submundo de Nova York, outro turno encarando os policiais e criminosos que querem vê-lo morto e um sistema judicial que prospera com dinheiro, não com a justiça.', 'https://image.tmdb.org/t/p/original/uiXKlDtaDvrrOLy0XULcfc12flu.jpg', NULL, 1, '02:20:00', 6, 0, NULL, NULL),
(21, 'Up Above the World So High', 'Planeta dos Macacos', 'Up Above the World So High', 'Assim como no filme, a dupla chega a um mundo dominado por macacos que os astronautas pensam fazer parte da constelação de Cassiopeia, fazem amizade com o chimpanzé Galen e descobrem que Taylor e os demais haviam sido mortos.', 'https://image.tmdb.org/t/p/original/yO3S3Gyx8srQbDsbFHKB3VdB8vB.jpg', NULL, NULL, '02:00:00', 4, 1, 1, 14),
(23, 'The Great Heep', 'Star Wars: Droids', 'The Great Heep', 'Ele apresentava as façanhas de R2-D2 e C-3PO — a dupla famosa de droides que apareceram em todos os seis filmes de Star Wars. ... Ao longo da série, os droides enfrentaram ameaças como gângsters, piratas, Boba Fett, IG-88 e agentes do Império Galáctico.', 'https://image.tmdb.org/t/p/original/5rqf9Hh7SNIyDLtSCPZz51R2QYF.jpg', NULL, NULL, '02:00:00', 4, 1, 1, 15),
(24, 'That \'70s Show', 'That \'70s Show', 'That \'70s Show', 'A história se inicia em meados de 1976, e relata o dia-a-dia de um grupo de adolescentes (Eric, Donna, Kelso, Jackie, Steven e Fez) na faixa dos 17 anos. Sem ter muito o que fazer, sua rotina se resume a se reunir no porão da casa de Eric para papear, fazer festas, planejar algo, namorar, e usar certas ervas ilícitas.', 'https://image.tmdb.org/t/p/original/vx9Zy0T9WLAzND6tZlzvk6ZqEFy.jpg', NULL, NULL, '02:00:00', 3, 1, 8, 200),
(25, 'Mayday', 'Desastres Aéreos', 'Mayday', 'Mayday! Desastres Aéreos é um programa do National Geographic  Channel que examina desastres que tiveram grande apelo popular,  ocorridos em água, terra e ar.', 'https://image.tmdb.org/t/p/original/kYWhgB0a8futLtqpPgFv4km4824.jpg', NULL, NULL, '02:00:00', 1, 1, 20, 200),
(26, 'Chosen', 'Buffy - A Caça-Vampiros', 'Chosen', 'Buffy conversa com Angel sobre o futuro. Buffy e os Scoobies inventam um plano para atacar o Primeiro. Willow utiliza um feitiço no machado de batalha para transformar os caçadores potenciais em caçadores reais e se engajar em uma batalha contra milhares de Ubervamps. Spike utiliza o amuleto que Angel trouxe de L.A. e traz quase o fim para Sunnydale, e Hellmouth.', 'https://image.tmdb.org/t/p/original/cmwkuegr6D5yxyBwr1enj3j84xE.jpg', NULL, 1, '02:00:00', 3, 1, 7, 144),
(27, 'I Am Not an Animal', 'Eu Não sou um animal', 'I Am Not an Animal', 'Eu Não Sou um Animal é uma série de TV de comédia negra animada contando a história de animais altamente inteligentes resgatados de um laboratório vivisseccionista e forçados a viver por conta própria.', 'https://image.tmdb.org/t/p/original/qG59J1Q7rpBc1dvku4azbzcqo8h.jpg', 1, NULL, '02:00:00', 4, 1, 1, 6),
(28, 'The Time Tunnel', 'O Túnel do Tempo', 'The Time Tunnel', 'Dois cientistas de um projeto do governo norte-americano que produz uma máquina do tempo, se perdem no tempo e são monitorados por uma equipe que permanece no laboratório e os acompanham em seus deslocamentos de várias épocas, através de imagens que recebem pelo equipamento chamado de Túnel do Tempo.', 'https://image.tmdb.org/t/p/original/6ierdSk2jmPX2cw1rVLzonafYmz.jpg', NULL, 1, '02:00:00', 3, 1, 1, 30),
(29, 'Mad About You', 'Louco por Você', 'Mad About You', 'Mad About You (Brasil: Louco por Você /Portugal: Doido por Ti) é uma sitcom de comédia americana transmitida pela NBC de 23 de Setembro de 1992 a 24 de Maio de 1999. Uma nova temporada foi criada em 2019 para o serviço de streaming Spectrum Originals.\\n\\nEssa popular série, estrelada por Paul Reiser e Helen Hunt, tem como tema principal as neuroses e confusões de um casal recentemente casado morando em Nova Iorque. Reiser interpreta Paul Buchman, um diretor de documentários, e Hunt faz Jamie Stemple Buchman, uma especialista em relações públicas. Perto do fim da série o casal teve uma filha chamada Mabel.\\n\\nA música tema da série, \\\"Final Frontier\\\", escrita por Reiser e Don Was, foi originalmente interpretada por Andrew Gold. Anita Baker tem outra versão, com direito a Reiser no piano, que foi introduzida no meio da temporada de 1997, e continuou a ser apresentada até o fim da série. Lyle Lovett, que chegou a participar de alguns episódios, canta a versão do revival de 2019.', 'https://image.tmdb.org/t/p/original/43gLxsiwiOVgRdf58GEt7cQpnbh.jpg', NULL, NULL, '02:00:00', 2, 1, 7, 164),
(30, 'Jiban - O Policial de Aço', 'Jiban - O Policial de Aço', 'Jiban - O Policial de Aço', 'Jiban vai a encontro de Dr. Jean Marie para salvar Ayumi em quanto as forças de Biolon dominam a cidade com medo e caos.', 'https://image.tmdb.org/t/p/original/oxEsZ5MNqOYE0ZWjznKS6Gisqoc.jpg', NULL, 1, '02:00:00', 3, 1, 1, 52),
(31, 'Muppet Babies', 'Muppet Babies', 'Muppet Babies', 'O desenho mostrava a infância dos personagens que divertiram a tantos ao longo dos anos. Ao lado de Margaret Loesch, Jim trabalhou na produção do desenho Muppet Babies, realizado por sua empresa Jim Henson Productions em parceria com a Marvel Productions Ltd. e conseguiram vender a ideia para a CBS Television, onde estreou no dia 15 de setembro', 'https://m.media-amazon.com/images/M/MV5BNTA4ZjI2MzQtYzA3Mi00ZmI0LTg0OWEtMmU4ZTIxYWUyOTYzXkEyXkFqcGdeQXVyODk1MjAxNzQ@._V1_.jpg', NULL, 1, '02:00:00', 5, 1, 7, 107),
(32, 'SWAT Kats: The Radical Squadron', 'SWAT Kats: The Radical Squadron', 'SWAT Kats: The Radical Squadron', 'A série conta a história de T-Bone e de Razor, dois pilotos da força militar “Enforcers” (Os Defensores) que foram expulsos pelo Comandante Ulysses Feral, por terem desobedecido às suas ordens diretas durante a perseguição de um criminoso, Dark Kat, o Gato Sinistro, e que por acidente, na verdade causado pelo proprio Comandante Feral, destruíram o quartel general dos Enforcers.', 'https://image.tmdb.org/t/p/original/uYQuJVMhxedaeqgzCJbuE21N2Mq.jpg', 1, NULL, '02:00:00', 4, 1, 2, 26);

-- --------------------------------------------------------

--
-- Estrutura para tabela `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
