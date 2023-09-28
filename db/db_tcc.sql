-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Set-2023 às 22:07
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_chats`
--

CREATE TABLE `tb_chats` (
  `id` int(11) NOT NULL,
  `id_usuario1` int(11) DEFAULT NULL,
  `id_usuario2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_chats`
--

INSERT INTO `tb_chats` (`id`, `id_usuario1`, `id_usuario2`) VALUES
(1, 33, 37),
(2, 34, 37),
(3, 34, 33),
(8, 39, 37),
(9, 39, 33),
(10, 39, 38),
(11, 40, 37),
(12, 40, 33),
(13, 40, 38),
(14, 40, 39);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cursando`
--

CREATE TABLE `tb_cursando` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `semana` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_cursando`
--

INSERT INTO `tb_cursando` (`id`, `id_usuario`, `id_curso`, `semana`) VALUES
(2, 37, 1, 1),
(9, 34, 1, 3),
(10, 33, 1, 3),
(11, 33, 3, 1),
(12, 37, 6, 1),
(13, 33, 4, 1),
(14, 34, 3, 1),
(15, 34, 4, 1),
(17, 33, 5, 1),
(18, 33, 6, 1),
(19, 33, 7, 1),
(20, 39, 1, 1),
(21, 39, 11, 1),
(22, 40, 1, 1),
(23, 40, 3, 1),
(24, 40, 4, 1),
(25, 40, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_curso`
--

CREATE TABLE `tb_curso` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `resumo` text NOT NULL,
  `semanas` int(11) NOT NULL,
  `horas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_curso`
--

INSERT INTO `tb_curso` (`id`, `id_usuario`, `titulo`, `resumo`, `semanas`, `horas`) VALUES
(1, 33, 'Introdução à Coleta Seletiva', 'A coleta seletiva é um sistema de gestão de resíduos sólidos que desafia a abordagem tradicional de descartar tudo junto no lixo. Em vez disso, ela promove a separação e o descarte responsável de materiais recicláveis, como papel, vidro, plástico e metal, dos resíduos orgânicos e não recicláveis.', 6, '56'),
(3, 33, 'Sustentabilidade no Dia a Dia: Práticas para um Mundo Melhor', 'Cada indivíduo pode adotar práticas sustentáveis em sua vida cotidiana, como reduzir o consumo de energia, reciclar e conservar recursos naturais, contribuindo assim para um ambiente mais saudável.', 2, '30'),
(4, 33, 'Biodiversidade e Conservação: Protegendo a Vida na Terra', 'Como a diversidade de espécies e ecossistemas é fundamental para a saúde do planeta. Discute também as ameaças à biodiversidade e estratégias de conservação.', 2, '54'),
(5, 33, 'Mudanças Climáticas: Compreendendo e Agindo', 'Este tópico explora as mudanças climáticas, suas causas e impactos, e enfatiza a importância da ação global para mitigar as mudanças climáticas. Ele oferece informações sobre como reduzir a pegada de carbono e promover a sustentabilidade.', 3, '54'),
(6, 37, 'Educação Ambiental nas Escolas', 'A importância da educação ambiental nas escolas e como ela pode moldar a consciência ambiental das crianças. Ele oferece ideias e estratégias para incorporar a educação ambiental ao currículo escolar.', 4, '54'),
(7, 33, 'Escolhas Responsáveis para um Futuro Sustentável', 'O impacto do consumo humano no meio ambiente, este tópico incentiva a reflexão sobre escolhas de consumo conscientes, como a compra de produtos ecológicos e a redução do desperdício', 3, '30'),
(11, 38, 'Agricultura Sustentável', 'a agricultura e a produção de alimentos, este tópico explora práticas agrícolas sustentáveis, agricultura orgânica e seu papel na segurança alimentar global e na proteção ambiental.', 3, '54'),
(12, 39, 'Alternativas ao Transporte Poluente', 'como a mobilidade urbana pode ser mais sustentável, promovendo alternativas ao transporte poluente, como o uso de transporte público, bicicletas e veículos elétricos.', 3, '54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_inicio`
--

CREATE TABLE `tb_inicio` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `imgCarroseu1` varchar(500) NOT NULL,
  `imgCarroseu2` varchar(500) NOT NULL,
  `imgCarroseu3` varchar(500) NOT NULL,
  `textCarroseu1` text NOT NULL,
  `textCarroseu2` text NOT NULL,
  `textCarroseu3` text NOT NULL,
  `imgCirculo1` varchar(500) NOT NULL,
  `imgCirculo2` varchar(500) NOT NULL,
  `imgCirculo3` varchar(500) NOT NULL,
  `textCirculo1` text NOT NULL,
  `textCirculo2` text NOT NULL,
  `textCirculo3` text NOT NULL,
  `textCompletoCirculo1` text NOT NULL,
  `textCompletoCirculo2` text NOT NULL,
  `textCompletoCirculo3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_inicio`
--

INSERT INTO `tb_inicio` (`id`, `id_usuario`, `imgCarroseu1`, `imgCarroseu2`, `imgCarroseu3`, `textCarroseu1`, `textCarroseu2`, `textCarroseu3`, `imgCirculo1`, `imgCirculo2`, `imgCirculo3`, `textCirculo1`, `textCirculo2`, `textCirculo3`, `textCompletoCirculo1`, `textCompletoCirculo2`, `textCompletoCirculo3`) VALUES
(1, 3, 'img/icons/meioAmbiente.png', 'img/icons/estude.png', 'img/icons/jogue.png', 'Aprenda Sobre Educação Ambiental', 'Faça Cursos Online', 'Jogue Enquanto Aprende', 'img/icons/logoJogoESite.png', 'img/icons/cursos.png', 'img/icons/img2.png', 'Educação Ambiental', 'Cursos', 'Jogos', 'Nosso site será dedicado principalmente à abordagem de conteúdos ambientais. Nossa missão é focar no engajamento dos jovens, e para isso, exploraremos uma abordagem inovadora, incorporando elementos da gamificação como uma das ferramentas-chave para tornar o aprendizado sobre questões ambientais uma experiência envolvente e empolgante. Através de uma variedade de recursos interativos e desafios divertidos, pretendemos criar um ambiente online que inspire e motive os jovens a se envolverem ativamente na proteção do nosso planeta.', 'Nosso site terá como principal objetivo disponibilizar uma ampla variedade de cursos voltados para o ensino da educação ambiental. Além disso, oferecerá uma plataforma interativa que permitirá aos usuários a oportunidade de compartilhar seus próprios conteúdos, com o nobre propósito de disseminar conhecimentos e informações relacionados ao meio ambiente. Através dessa abordagem inclusiva, pretendemos fomentar uma comunidade engajada e comprometida com a conscientização ambiental.', 'O nosso site é uma plataforma que se destaca por oferecer uma ampla variedade de jogos projetados especificamente para promover a educação ambiental. Esses jogos foram cuidadosamente desenvolvidos com características distintas e envolventes, que têm o poder de capturar a atenção e despertar o interesse dos jovens. Acreditamos firmemente que a aprendizagem através da diversão é uma abordagem eficaz e impactante para sensibilizar as gerações mais novas sobre questões ambientais críticas. Portanto, estamos comprometidos em fornecer experiências educacionais emocionantes que não apenas informem, mas também inspirem os jovens a se tornarem defensores ativos do nosso precioso meio ambiente.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_mensagens`
--

CREATE TABLE `tb_mensagens` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_chat` int(11) NOT NULL,
  `mensagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_mensagens`
--

INSERT INTO `tb_mensagens` (`id`, `id_usuario`, `id_chat`, `mensagem`) VALUES
(1, 34, 3, 'teste.'),
(2, 33, 3, 'teste 2.'),
(3, 34, 3, 'teste 3'),
(4, 33, 3, 'teste 4'),
(7, 33, 3, 'teste 5'),
(15, 33, 3, 'teste 3'),
(16, 33, 3, 'teste 5'),
(18, 33, 3, 'testttttt'),
(19, 33, 3, 'oi'),
(21, 33, 1, 'oi'),
(22, 33, 1, 'teste 4'),
(23, 34, 2, 'testttttt'),
(24, 34, 2, 'oi'),
(25, 33, 1, 'teste 5'),
(27, 37, 2, 'oi'),
(28, 37, 1, 'oi'),
(29, 33, 1, 'teste 5'),
(31, 37, 1, 'teste 5'),
(32, 37, 1, 'teste 3'),
(33, 37, 1, 'teste 3'),
(34, 34, 3, 'dwafawfawefgawegefvfffefefefefefefefes'),
(35, 34, 3, 'teste 4'),
(36, 34, 3, 'teste 4'),
(37, 34, 3, 'teste 3'),
(38, 34, 3, 'testttttt'),
(39, 34, 3, 'testttttt'),
(40, 34, 3, 'teste 4'),
(41, 34, 3, 'testttttt'),
(42, 34, 3, 'teste 4'),
(43, 34, 3, 'testttttt'),
(44, 34, 3, 'teste 3'),
(45, 34, 3, 'oi'),
(46, 34, 3, 'testttttt'),
(47, 34, 3, 'teste 4'),
(48, 34, 3, 'oi'),
(49, 34, 3, 'teste 5'),
(50, 34, 3, 'teste 4'),
(51, 34, 3, 'testttttt'),
(52, 34, 3, 'teste 3'),
(53, 34, 3, 'oi'),
(54, 34, 3, 'teste 4'),
(55, 34, 3, 'teste 5'),
(56, 34, 3, 'teste 3'),
(57, 34, 3, 'testttttt'),
(58, 34, 3, 'oi'),
(59, 34, 3, 'oi'),
(60, 34, 3, 'oi'),
(61, 34, 3, 'oi'),
(62, 34, 3, 'oi'),
(63, 34, 3, 'teste 5'),
(64, 34, 3, 'teste 3'),
(65, 34, 3, 'teste 4'),
(66, 34, 3, 'teste 3'),
(67, 34, 3, 'teste 5'),
(68, 34, 2, 'cu'),
(69, 34, 2, 'testttttt'),
(70, 34, 2, 'cu'),
(71, 37, 1, 'teste 5'),
(72, 37, 1, 'cu'),
(73, 33, 1, 'cu'),
(74, 34, 2, 'testttttt'),
(75, 34, 2, 'oi'),
(76, 34, 2, 'teste 3'),
(77, 33, 3, 'teste 4'),
(78, 33, 1, 'teste 3'),
(79, 34, 2, 'teste 4'),
(80, 34, 3, 'testttttt'),
(81, 39, 8, 'Olá'),
(82, 39, 9, 'Olá'),
(83, 39, 10, 'Olá'),
(84, 40, 11, 'Olá'),
(85, 40, 12, 'Olá'),
(86, 40, 13, 'Olá'),
(87, 40, 14, 'Olá');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pdf`
--

CREATE TABLE `tb_pdf` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `pdf` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_pdf`
--

INSERT INTO `tb_pdf` (`id`, `id_usuario`, `titulo`, `resumo`, `pdf`) VALUES
(2, 33, 'DIREITOS HUMANOS IREITOS HUMANOS  E MEIO AMBIENTE', 'tAno após ano, temos enfrentado um enorme desafio: o de  apresentar a vocês, leitores, estas cinco obras, em cinco línguas  (português, espanhol, francês, inglês e italiano), que versam sobre  as temáticas centrais dos cursos brasileiros interdisciplinares em  direitos humanos, realizados em Fortaleza, Ceará (Brasil), sob a  organização do Instituto Brasileiro de Direitos Humanos (IBDH) e  do Instituto Interamericano de Direitos Humanos (IIDH, através  de seu Escritório Regional e Montevidéu), em associação com o  Centro de Estudos e Treinamento da Procuradoria Geral do Estado  do Ceará e com o apoio de numerosas instituições locais, nacionais  e internacionais.rabalho de conclusao de curso voltado para a educação de jovens em questoes ambientais', 'img/pdfs/meioAmbiente2.pdf'),
(4, 33, 'Meio Ambiente e Sustentabilidade', 'A problemática da sustentabilidade assume, neste final de século, um papel central na reflexão em torno das dimensões do desenvolvimento e das alternativas que se configuram. O quadro socioambiental que caracteriza as sociedades contemporâneas revela que o impacto dos humanos sobre o meio ambiente estão se tornando cada vez mais complexos, tanto em termos quantitativos quanto qualitativos. O conceito de desenvolvimento sustentável surge para enfrentar a crise ecológica, sendo que, pelo menos, duas correntes alimentaram esse processo', 'img/pdfs/meioAmbiente3.pdf'),
(5, 33, 'EDUCAÇÃOAMBIENTAL ( REEDUCACIOLOGIA ) ', 'A educação ambiental é ato ou efeito da aplicação de métodos próprios para assegurar a aprendizagem sistêmica envolvendo conhecimentos, habilidades, posturas e comportamentos responsáveis na convivência sustentável, socialmente justa e economicamente viável  com o ambiente planetário.', 'img/pdfs/meioAmbiente4.pdf'),
(6, 37, 'Educação ambiental como política pública', 'A educação ambiental surge como uma das possíveis estratégias para o enfrentamento da crise civilizatória de dupla ordem, cultural e social. Sua perspectiva crítica e emancipatória visa à deflagração de processos nos quais a busca individual e coletiva por mudanças culturais e sociais estão dialeticamente indissociadas. A articulação de princípios de Estado e comunidade, sob a égide da comunidade, coloca o Estado como parceiro desta no processo de transformação do status quo situado, segundo Boaventura de Souza Santos, como um “novíssimo movimento social”.', ' img/pdfs/meioAmbiente5.pdf'),
(7, 38, 'A Gamificação como Estratégia de Engajamento  e Motivação na Educação', 'A Gamificação como Estratégia de Engajamento  e Motivação na Educação', ' img/pdfs/gamificacao1.pdf'),
(8, 39, 'Gamificação na Educação', 'Gamificação na Educação', ' img/pdfs/gamificacao2.pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_questionarios`
--

CREATE TABLE `tb_questionarios` (
  `id` int(11) NOT NULL,
  `id_semana` int(11) NOT NULL,
  `semana` int(11) DEFAULT NULL,
  `id_curso` int(11) NOT NULL,
  `perg1` text NOT NULL,
  `a1` varchar(500) NOT NULL,
  `b1` varchar(500) NOT NULL,
  `c1` varchar(500) NOT NULL,
  `d1` varchar(500) NOT NULL,
  `resp1` varchar(255) NOT NULL,
  `perg2` text NOT NULL,
  `a2` varchar(500) NOT NULL,
  `b2` varchar(500) NOT NULL,
  `c2` varchar(500) NOT NULL,
  `d2` varchar(500) NOT NULL,
  `resp2` varchar(255) NOT NULL,
  `perg3` text NOT NULL,
  `a3` varchar(500) NOT NULL,
  `b3` varchar(500) NOT NULL,
  `c3` varchar(500) NOT NULL,
  `d3` varchar(500) NOT NULL,
  `resp3` varchar(255) NOT NULL,
  `perg4` text NOT NULL,
  `a4` varchar(500) NOT NULL,
  `b4` varchar(500) NOT NULL,
  `c4` varchar(500) NOT NULL,
  `d4` varchar(500) NOT NULL,
  `resp4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_questionarios`
--

INSERT INTO `tb_questionarios` (`id`, `id_semana`, `semana`, `id_curso`, `perg1`, `a1`, `b1`, `c1`, `d1`, `resp1`, `perg2`, `a2`, `b2`, `c2`, `d2`, `resp2`, `perg3`, `a3`, `b3`, `c3`, `d3`, `resp3`, `perg4`, `a4`, `b4`, `c4`, `d4`, `resp4`) VALUES
(1, 1, 1, 1, 'O que significa coleta seletiva de lixo?', 'Um método de descartar todo o lixo junto.', 'Um sistema de separação de materiais recicláveis e não recicláveis.', 'Um processo de transformação de lixo em energia.', 'Uma técnica para compostagem de resíduos.', 'b', 'Quais são os principais materiais recicláveis envolvidos na coleta seletiva?', 'Plástico e vidro.', 'Vidro e metal.', 'Papel e madeira.', 'Papel, vidro, plástico e metal.', 'd', 'Qual é o objetivo principal da coleta seletiva?', 'Reduzir a quantidade de materiais recicláveis.', 'Misturar materiais recicláveis com lixo orgânico.', 'Destinar adequadamente materiais recicláveis.', 'Promover o desperdício de recursos naturais.', 'c', 'Como a coleta seletiva difere da disposição comum de lixo?', 'Ela não faz nenhuma diferença.', 'Ela mistura todos os tipos de resíduos.', 'Ela separa materiais recicláveis dos não recicláveis.\r\n', 'Ela incinera todos os resíduos.', 'c'),
(2, 2, 2, 1, 'Quais são os benefícios ambientais da coleta seletiva?', 'Aumento da poluição do ar.\r\n', 'Redução de resíduos em aterros sanitários.\r\n', 'Maior extração de recursos naturais.\r\n', 'Aumento da contaminação do solo.', 'b', 'Como a coleta seletiva ajuda a economizar recursos naturais?', 'Descartando materiais recicláveis.\r\n', 'Reduzindo o consumo de energia.\r\n', 'Aumentando a extração de recursos.', 'Aumentando a produção de novos materiais.', 'b', 'Quais quais desses não são os impactos negativos que a coleta seletiva pode ajudar a minimizar?', 'Desmatamento.', 'Poluição do solo.\r\n', 'Aquecimento global.\r\n', 'Contaminação da água.', 'a', 'Por que é fundamental reduzir a quantidade de lixo em aterros sanitários?', 'Para economizar dinheiro público.\r\n', 'Para aumentar a extração de recursos naturais.\r\n', 'Para promover a poluição ambiental.', 'Para evitar o esgotamento de espaço em aterros.', 'd'),
(3, 6, 1, 4, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b'),
(4, 7, 2, 4, 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c'),
(5, 13, 3, 1, 'Como você pode identificar materiais recicláveis em seu ambiente?\r\n', 'Pelos símbolos de reciclagem presentes ', 'Pelo cheiro dos materiais.\r\n', 'Pela cor dos materiais.\r\n', 'Pelas etiquetas de preço dos produtos.\r\n', 'a', 'Quais são os símbolos de reciclagem comuns e o que eles representam?\r\n', 'Símbolo de reciclagem comum representa materiais não recicláveis.\r\n', 'Símbolo de reciclagem comum representa materiais orgânicos.\r\n', 'Símbolo de reciclagem comum representa materiais recicláveis.\r\n', 'Símbolo de reciclagem comum representa materiais radioativos.', 'c', 'Por que é importante conhecer as políticas locais de reciclagem?', 'Para saber onde encontrar alimentos orgânicos.\r\n', 'Para evitar reciclar materiais recicláveis.\r\n', 'Para entender como separar os materiais corretamente.', 'Para descartar tudo no mesmo recipiente.', 'c', 'Quais são os materiais recicláveis comuns que podem variar de região para região?', 'Papel, vidro, plástico e metal.', 'Papel e vidro apenas.\r\n', 'Plástico e metal apenas.\r\n', 'Materiais orgânicos.', 'a'),
(6, 14, 4, 1, 'Por que é importante separar o lixo em casa antes de descartá-lo?', 'Para economizar espaço no lixo.\r\n', 'Para facilitar a coleta seletiva.\r\n', 'Não é importante separar o lixo em casa.\r\n', 'Para evitar o descarte de tudo junto.', 'b', 'Quais são os materiais que devem ser separados para reciclagem?', 'Apenas vidro.\r\n', 'Apenas papel.\r\n', 'Todos os materiais, incluindo papel, vidro, ', 'Apenas materiais orgânicos.', 'c', 'Qual é o propósito de lavar os materiais recicláveis antes de descartá-los?', 'Para aumentar o peso dos materiais.\r\n', 'Para torná-los mais bonitos.\r\n', 'Para evitar a contaminação dos materiais recicláveis.\r\n', 'Para tornar os materiais não recicláveis.', 'c', 'Quais são os métodos eficazes para organizar a separação do lixo em casa?', 'Colocar todos os materiais no mesmo recipiente.\r\n', 'Usar sacos plásticos para todos os materiais.\r\n', 'Usar recipientes separados para diferentes tipos de materiais.\r\n', 'Ignorar a separação do lixo em casa.', 'c'),
(7, 14, 5, 1, 'Onde você pode entregar materiais recicláveis?', 'Em qualquer aterro sanitário.\r\n', 'Em qualquer rio ou lago.\r\n', 'Em pontos de coleta seletiva designados.\r\n', 'No quintal de sua casa.', 'c', 'Quais são os tipos de recipientes usados para coleta seletiva?\r\n', 'Recipientes verdes apenas.\r\n', 'Recipientes vermelhos apenas.\r\n', 'Sacos plásticos.', 'Recipientes específicos para cada tipo de material reciclável.\r\n', 'd', 'O que você deve fazer para garantir que os materiais recicláveis sejam entregues corretamente?\r\n', 'Misturar materiais recicláveis com materiais não recicláveis.\r\n', 'Seguir as diretrizes locais de coleta seletiva.\r\n', 'Entregar materiais recicláveis a qualquer momento.\r\n', 'Queimar os materiais recicláveis.', 'b', 'Por que é importante seguir as diretrizes locais de coleta seletiva?', 'Para garantir que os materiais recicláveis sejam processados de forma adequada.\r\n', 'Para evitar que os materiais recicláveis sejam coletados.\r\n', 'Não é importante seguir as diretrizes locais.\r\n', 'Para atrasar o processo de reciclagem.', 'a'),
(9, 16, 6, 1, 'Como a coleta seletiva contribui para a redução de resíduos em aterros sanitários?\r\n', 'Separa os materiais recicláveis dos não recicláveis.\r\n', 'Comprime o lixo em aterros sanitários.\r\n', 'Cria novos aterros sanitários.\r\n', 'Exporta resíduos para outros países.', 'a', 'Como a coleta seletiva ajuda a economizar recursos naturais?', 'Reduz a extração de recursos, como madeira e minerais.\r\n', 'Aumenta a extração de recursos para a reciclagem.\r\n', 'Não tem impacto sobre a extração de recursos.', 'Aumenta a extração de recursos não renováveis.', 'a', 'De que forma a coleta seletiva economiza dinheiro público?\r\n', 'Aumenta os custos de tratamento de resíduos.\r\n', 'Não tem impacto nos gastos públicos.\r\n', 'Aumenta os custos de transporte de resíduos.', 'Reduz os custos de gerenciamento de resíduos.', 'd', 'Como a coleta seletiva promove a conscientização ambiental?', 'Cria barreiras para a conscientização ambiental.', 'Educa a população sobre os benefícios da reciclagem.\r\n', 'Desencoraja a conscientização ambiental.\r\n', 'Não tem influência na conscientização.\r\n', 'b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_salvos`
--

CREATE TABLE `tb_salvos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_texto` int(11) DEFAULT NULL,
  `id_pdf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_salvos`
--

INSERT INTO `tb_salvos` (`id`, `id_usuario`, `id_texto`, `id_pdf`) VALUES
(264, 37, 4, NULL),
(265, 37, 7, NULL),
(266, 37, 11, NULL),
(267, 37, NULL, 2),
(268, 34, 4, NULL),
(269, 34, 7, NULL),
(271, 33, 7, NULL),
(277, 33, 11, NULL),
(278, 39, 4, NULL),
(279, 39, 7, NULL),
(280, 39, 15, NULL),
(281, 40, 4, NULL),
(283, 40, 7, NULL),
(284, 40, 15, NULL),
(285, 40, 16, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_semanas`
--

CREATE TABLE `tb_semanas` (
  `id` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `semana` int(11) NOT NULL,
  `nomeMateria` varchar(500) NOT NULL,
  `conteudo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_semanas`
--

INSERT INTO `tb_semanas` (`id`, `id_curso`, `semana`, `nomeMateria`, `conteudo`) VALUES
(1, 1, 1, ' O que é Coleta Seletiva?', 'A coleta seletiva é um sistema de recolhimento de resíduos sólidos que separa e destina corretamente materiais recicláveis, evitando que eles sejam misturados com o lixo orgânico e não reciclável.\r\nMateriais comuns recicláveis incluem papel, vidro, plástico e metal.'),
(2, 1, 2, 'Por que é Importante?', 'A coleta seletiva ajuda a reduzir a quantidade de lixo em aterros sanitários, economizando espaço e recursos naturais.\r\nEla promove a reutilização de materiais, economizando energia e recursos na produção de novos produtos.\r\nReduz a poluição do solo, ar e água, além de minimizar os impactos ambientais negativos.'),
(3, 3, 1, ' semana 1 teste', ''),
(4, 3, 2, ' semana 2 teste', ''),
(5, 3, 3, ' semana 3 teste', ''),
(6, 4, 1, ' semana 1 teste', ''),
(7, 4, 2, ' semana 2 teste', ''),
(8, 4, 3, ' semana 3 teste', ''),
(9, 4, 4, ' semana 4 teste', 'teste conteudo 4'),
(10, 5, 1, ' semana 1 teste', 'teste conteudo 4'),
(11, 6, 1, ' semana 1 teste', 'teste conteudo 4'),
(12, 7, 1, ' semana 2 teste', 'teste conteudo 4'),
(13, 1, 3, 'Identificando Materiais Recicláveis', 'É importante saber quais materiais podem ser reciclados na sua região. Isso pode variar de acordo com as políticas locais e disponibilidade de instalações de reciclagem.\r\nOs símbolos de reciclagem nas embalagens podem ajudar a identificar materiais recicláveis.'),
(14, 1, 4, 'Separando o Lixo em Casa', 'Em casa, separe o lixo em diferentes recipientes ou sacos para materiais recicláveis (papel, vidro, plástico e metal) e lixo orgânico.\r\nLave os materiais recicláveis antes de descartá-los para evitar contaminação.'),
(15, 1, 5, 'Entregando os Materiais Recicláveis', 'Leve os materiais recicláveis para os pontos de coleta seletiva designados ou coloque-os nas lixeiras específicas para reciclagem.\r\nSiga as diretrizes locais para a coleta seletiva, como horários e locais de coleta.'),
(16, 1, 6, 'Benefícios', 'Benefícios Ambientais: Reduz a quantidade de resíduos sólidos em aterros sanitários.\r\nDiminui a extração de recursos naturais, como madeira e minerais.\r\nAjuda a preservar habitats naturais e a biodiversidade.\r\nBenefícios Econômicos: Cria empregos na indústria da reciclagem.\r\nEconomiza dinheiro público ao reduzir custos de gerenciamento de resíduos.\r\nBenefícios Sociais:Promove a conscientização ambiental e a educação.\r\nContribui para uma comunidade mais limpa e saudável.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_textos`
--

CREATE TABLE `tb_textos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `resumo` varchar(700) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_textos`
--

INSERT INTO `tb_textos` (`id`, `id_usuario`, `titulo`, `resumo`, `texto`) VALUES
(4, 37, 'Consumo Sustentável', 'Comprar produtos locais, orgânicos e duráveis é uma maneira eficaz de reduzir nossa pegada ecológica. Esse tipo de consumo ajuda a apoiar a produção local, reduz o desperdício de embalagens e promove a sustentabilidade a longo prazo.', 'Comprar produtos locais, orgânicos e duráveis é uma maneira eficaz de reduzir nossa pegada ecológica. Esse tipo de consumo consciente não apenas beneficia o meio ambiente, mas também fortalece as economias locais e reduz a quantidade de resíduos que geramos. Produtos locais muitas vezes requerem menos transporte, o que significa menos emissões de gases de efeito estufa associadas ao transporte de mercadorias de longas distâncias. Além disso, a preferência por produtos orgânicos apoia práticas agrícolas mais sustentáveis, que não usam produtos químicos prejudiciais ao meio ambiente e à saúde humana.  A escolha de produtos duráveis em vez de descartáveis ajuda a reduzir a quantidade de lixo que vai parar em aterros sanitários. Isso é especialmente importante quando se trata de produtos de plástico, que podem levar centenas de anos para se decompor na natureza.'),
(7, 33, 'Reciclagem de Plástico', 'A reciclagem de plástico desempenha um papel fundamental na redução da poluição ambiental. Ao reciclarmos plástico, estamos contribuindo para a diminuição dos resíduos sólidos e a preservação dos recursos naturais finitos, como o petróleo, usado na fabricação do plástico. Além disso, a reciclagem ajuda a proteger a vida marinha, já que muitos animais marinhos são afetados pela ingestão de plástico.', 'A reciclagem de plástico desempenha um papel fundamental na redução da poluição ambiental. Quando reciclamos plástico, estamos contribuindo para a diminuição dos resíduos sólidos que se acumulam em aterros sanitários e lixões. Além disso, a reciclagem também ajuda a preservar os recursos naturais finitos, como o petróleo, que é a matéria-prima principal para a fabricação de plástico. Ao economizar esses recursos, podemos reduzir a pressão sobre o meio ambiente e as reservas de petróleo. Além disso, a reciclagem de plástico desempenha um papel crucial na proteção da vida marinha. Muitos animais marinhos, como tartarugas e aves marinhas, ingerem plástico que flutua nos oceanos. Isso pode levar a sérios danos à saúde dessas criaturas e, em alguns casos, à morte. Ao reciclar plástico e evitar que ele entre nos oceanos, estamos contribuindo para a preservação dessas espécies e a saúde dos ecossistemas marinhos'),
(11, 33, 'Desmatamento', 'O desmatamento descontrolado é uma das maiores ameaças à biodiversidade global. As florestas desempenham um papel vital na absorção de dióxido de carbono da atmosfera, contribuindo para a estabilidade do clima. Além disso, são o habitat de inúmeras espécies de plantas e animais, cuja sobrevivência está diretamente ligada à preservação das florestas.', 'O desmatamento descontrolado é uma das maiores ameaças à biodiversidade global. As florestas desempenham um papel vital na absorção de dióxido de carbono da atmosfera, ajudando a regular o clima global. Além disso, as florestas são o habitat de inúmeras espécies de plantas e animais, muitas das quais são endêmicas e não são encontradas em nenhum outro lugar do mundo. A destruição das florestas coloca em risco a sobrevivência dessas espécies. Além disso, as florestas desempenham um papel essencial na manutenção da qualidade da água, uma vez que atuam como filtros naturais. Quando as florestas são desmatadas, os solos podem erodir, levando à poluição dos rios e à degradação dos ecossistemas aquáticos. Portanto, a preservação das florestas é fundamental para a estabilidade do clima, a conservação da biodiversidade e a qualidade da água que consumimos.'),
(14, 33, 'Educação Ambiental nas Escolas', 'A introdução da educação ambiental desde cedo nas escolas desempenha um papel crucial na formação de cidadãos conscientes e responsáveis. Isso envolve ensinar os alunos sobre a importância da conservação, sustentabilidade e práticas ambientalmente amigáveis.', 'A introdução da educação ambiental desde cedo nas escolas desempenha um papel crucial na formação de cidadãos conscientes e responsáveis. Isso envolve ensinar os alunos sobre a importância da conservação, sustentabilidade e práticas ambientalmente amigáveis desde tenra idade. Através da educação ambiental, as crianças podem desenvolver uma compreensão profunda dos desafios que nosso planeta enfrenta e aprender como tomar medidas para proteger o meio ambiente. Além disso, a educação ambiental nas escolas pode inspirar as futuras gerações a se tornarem defensores ativos do meio ambiente. À medida que os alunos aprendem sobre questões como mudanças climáticas, biodiversidade, conservação de recursos naturais e poluição, eles estão mais bem preparados para tomar decisões informadas e adotar comportamentos sustentáveis ao longo de suas vidas.'),
(15, 38, 'Hortas Escolares', 'Hortas escolares proporcionam uma oportunidade prática para as crianças aprenderem sobre agricultura sustentável, nutrição e a importância de alimentos locais e frescos. Elas permitem que os alunos tenham uma conexão direta com o processo de cultivo de alimentos e entendam a origem dos produtos que consomem.', ' Hortas escolares proporcionam uma oportunidade prática para as crianças aprenderem sobre agricultura sustentável, nutrição e a importância de alimentos locais e frescos. Elas permitem que os alunos tenham uma conexão direta com o processo de cultivo de alimentos e entendam a origem dos produtos que consomem. Além de ensinar habilidades práticas, as hortas escolares também promovem valores ambientais e sociais. Os alunos aprendem sobre a importância da biodiversidade, do uso responsável dos recursos naturais e do respeito pela natureza.  As hortas escolares também podem desempenhar um papel na promoção da alimentação saudável, uma vez que os alunos têm a oportunidade de cultivar e consumir alimentos frescos e orgânicos. Essas experiências educacionais podem influenciar as escolhas alimentares das crianças e contribuir para um estilo de vida mais saudável.'),
(16, 39, 'Reflorestamento Urbano', 'Plantar árvores em áreas urbanas não apenas melhora a qualidade do ar, mas também oferece sombra e beleza às cidades, tornando-as mais agradáveis para seus habitantes. As árvores desempenham um papel fundamental na absorção de dióxido de carbono (CO2) e na redução das temperaturas urbanas.', ' Plantar árvores em áreas urbanas não apenas melhora a qualidade do ar, mas também oferece sombra e beleza às cidades, tornando-as mais agradáveis para seus habitantes. As árvores desempenham um papel fundamental na absorção de dióxido de carbono (CO2) e na redução das temperaturas urbanas. À medida que as cidades crescem, o reflorestamento urbano se torna uma estratégia importante para enfrentar os desafios da poluição do ar, do aumento das temperaturas e da degradação ambiental. As árvores também fornecem habitat para a vida selvagem urbana, melhoram a qualidade da água e contribuem para um ambiente mais saudável e sustentável.  Promover o reflorestamento urbano envolve iniciativas de plantio de árvores em espaços públicos, como parques, avenidas e praças, bem como a conscientização pública sobre os benefícios das árvores nas áreas urbanas.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_completo` text DEFAULT NULL,
  `instituto` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `tipo` text DEFAULT NULL,
  `img_capa` varchar(255) DEFAULT NULL,
  `img_fundo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nome`, `nome_completo`, `instituto`, `descricao`, `data_nascimento`, `email`, `senha`, `tipo`, `img_capa`, `img_fundo`) VALUES
(3, 'adm', '', '', '', '0000-00-00', 'adm@adm', '123', 'adm', NULL, NULL),
(33, 'Pedro', 'Pedro da Silva', 'IFG-Instituto Federal do Goiás', 'Professor de Educação Ambiental', '1999-02-23', 'pedro@gmail.com', '123', 'prof', 'img/perfis/login.png', 'img/perfis/imgFundo.jpg'),
(34, 'Juliana', 'Juliana da silva', 'IFG-Instituto Federal do Goiás', ' Estudante do ensino médio', '2002-07-25', 'aluno@gmail.com', '123', 'aluno', 'img/perfis/login.png', 'img/perfis/imgFundo.jpg'),
(37, 'Jorge', 'Jorge da Silva', 'IFG-Instituto Federal do Goiás', 'Professor de Educação Ambiental', '1996-05-12', 'professor@gmail.com', '123', 'prof', 'img/perfis/login.png', 'img/perfis/imgFundo.jpg'),
(38, 'Juana', 'Juana Orvalho', 'IFG-Instituto Federal do Goiás', ' Professor de Educação Ambiental', '2000-09-28', 'joana@gmail.com', '123', 'prof', 'img/perfis/login.png', 'img/perfis/imgFundo.jpg'),
(39, 'Paula', 'Paula Rodrigues', 'IFG-Instituto Federal do Goiás', ' Professor de Educação Ambiental', '1998-08-28', 'paula@gmail.com', '123', 'prof', 'img/perfis/login.png', 'img/perfis/imgFundo.jpg'),
(40, 'Junior', 'Junior da Silva', 'IFG-Instituto Federal do Goiás', ' Estudante do ensino médio', '2006-09-28', 'junior@gmail.com', '123', 'aluno', 'img/perfis/login.png', 'img/perfis/imgFundo.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_chats`
--
ALTER TABLE `tb_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_usuario1_chats` (`id_usuario1`),
  ADD KEY `fk_id_usuario2_chats` (`id_usuario2`);

--
-- Índices para tabela `tb_cursando`
--
ALTER TABLE `tb_cursando`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cursando_id_usuario` (`id_usuario`),
  ADD KEY `fk_cursando_id_curso` (`id_curso`);

--
-- Índices para tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `tb_inicio`
--
ALTER TABLE `tb_inicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inicio_id_usuario` (`id_usuario`);

--
-- Índices para tabela `tb_mensagens`
--
ALTER TABLE `tb_mensagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chat` (`id_chat`),
  ADD KEY `fk_usuario_chat` (`id_usuario`);

--
-- Índices para tabela `tb_pdf`
--
ALTER TABLE `tb_pdf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pdf_id_usuario` (`id_usuario`);

--
-- Índices para tabela `tb_questionarios`
--
ALTER TABLE `tb_questionarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_curso_questionarios` (`id_curso`),
  ADD KEY `fk_id_semana_questionarios` (`id_semana`);

--
-- Índices para tabela `tb_salvos`
--
ALTER TABLE `tb_salvos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_salvar_id_usuario` (`id_usuario`),
  ADD KEY `fk_salvar_id_texto` (`id_texto`),
  ADD KEY `fk_salvar_id_pdf` (`id_pdf`);

--
-- Índices para tabela `tb_semanas`
--
ALTER TABLE `tb_semanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_curso` (`id_curso`);

--
-- Índices para tabela `tb_textos`
--
ALTER TABLE `tb_textos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_usuario` (`id_usuario`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_chats`
--
ALTER TABLE `tb_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_cursando`
--
ALTER TABLE `tb_cursando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_inicio`
--
ALTER TABLE `tb_inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_mensagens`
--
ALTER TABLE `tb_mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de tabela `tb_pdf`
--
ALTER TABLE `tb_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_questionarios`
--
ALTER TABLE `tb_questionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_salvos`
--
ALTER TABLE `tb_salvos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT de tabela `tb_semanas`
--
ALTER TABLE `tb_semanas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_textos`
--
ALTER TABLE `tb_textos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_chats`
--
ALTER TABLE `tb_chats`
  ADD CONSTRAINT `fk_id_usuario1_chats` FOREIGN KEY (`id_usuario1`) REFERENCES `tb_usuario` (`id`),
  ADD CONSTRAINT `fk_id_usuario2_chats` FOREIGN KEY (`id_usuario2`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_cursando`
--
ALTER TABLE `tb_cursando`
  ADD CONSTRAINT `fk_cursando_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `tb_curso` (`id`),
  ADD CONSTRAINT `fk_cursando_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  ADD CONSTRAINT `tb_curso_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_inicio`
--
ALTER TABLE `tb_inicio`
  ADD CONSTRAINT `fk_inicio_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_mensagens`
--
ALTER TABLE `tb_mensagens`
  ADD CONSTRAINT `fk_chat` FOREIGN KEY (`id_chat`) REFERENCES `tb_chats` (`id`),
  ADD CONSTRAINT `fk_usuario_chat` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_pdf`
--
ALTER TABLE `tb_pdf`
  ADD CONSTRAINT `fk_pdf_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_questionarios`
--
ALTER TABLE `tb_questionarios`
  ADD CONSTRAINT `fk_id_curso_questionarios` FOREIGN KEY (`id_curso`) REFERENCES `tb_curso` (`id`),
  ADD CONSTRAINT `fk_id_semana_questionarios` FOREIGN KEY (`id_semana`) REFERENCES `tb_semanas` (`id`);

--
-- Limitadores para a tabela `tb_salvos`
--
ALTER TABLE `tb_salvos`
  ADD CONSTRAINT `fk_salvar_id_pdf` FOREIGN KEY (`id_pdf`) REFERENCES `tb_pdf` (`id`),
  ADD CONSTRAINT `fk_salvar_id_texto` FOREIGN KEY (`id_texto`) REFERENCES `tb_textos` (`id`),
  ADD CONSTRAINT `fk_salvar_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_semanas`
--
ALTER TABLE `tb_semanas`
  ADD CONSTRAINT `fk_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `tb_curso` (`id`);

--
-- Limitadores para a tabela `tb_textos`
--
ALTER TABLE `tb_textos`
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
