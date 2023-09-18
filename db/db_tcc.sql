-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2023 às 19:23
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

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
(3, 34, 33);

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
(19, 33, 7, 1);

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
(1, 33, 'Teste Curso', 'resumo teste', 2, '56'),
(3, 33, 'teste curso 2', 'isso é so um teste do resumo', 3, '54'),
(4, 33, 'curso teste 3', 'curso teste 3', 4, '54'),
(5, 33, 'Macacão Rosa', 'Meio ambiente é o conceito que estabelece a relação entre os seres vivos e os diferentes elementos que formam o espaço ambiental do planeta.  O meio ambiente é composto por elementos naturais e humanos que interagem entre si no espaço.  A importância do meio ambiente está ligada à preservação das características que possibilitam a manutenção da vida no planeta.  São exemplos de graves problemas que impactam o meio ambiente do planeta a ocorrência de desmatamentos e queimadas.  O conceito de preservação envolve a manutenção das características ambientais do meio de forma absoluta.  Já conservação é um conceito que envolve o uso sustentável dos recursos ambientais dispostos na natureza.  As conferências internacionais sobre o meio ambiente são grandes eventos mundiais que discutem o cenário ambiental global.  São termos ligados ao conceito de meio ambiente: natureza, espaço, ambiente e ecossistema.  O meio ambiente no Brasil é muito diversificado, mas bastante degradado, principalmente em razão das atividades h', 3, '54'),
(6, 37, ' meio ambiente', 'Meio ambiente é o conceito que estabelece a relação entre os seres vivos e os diferentes elementos que formam o espaço ambiental do planeta.  O meio ambiente é composto por elementos naturais e humanos que interagem entre si no espaço.  A importância do meio ambiente está ligada à preservação das características que possibilitam a manutenção da vida no planeta.  São exemplos de graves problemas que impactam o meio ambiente do planeta a ocorrência de desmatamentos e queimadas.  O conceito de preservação envolve a manutenção das características ambientais do meio de forma absoluta.  Já conservação é um conceito que envolve o uso sustentável dos recursos ambientais dispostos na natureza.  As conferências internacionais sobre o meio ambiente são grandes eventos mundiais que discutem o cenário ambiental global.  São termos ligados ao conceito de meio ambiente: natureza, espaço, ambiente e ecossistema.  O meio ambiente no Brasil é muito diversificado, mas bastante degradado, principalmente em razão das atividades h', 4, '54'),
(7, 33, ' meio ambiente', 'Meio ambiente é o conceito que estabelece a relação entre os seres vivos e os diferentes elementos que formam o espaço ambiental do planeta.  O meio ambiente é composto por elementos naturais e humanos que interagem entre si no espaço.  A importância do meio ambiente está ligada à preservação das características que possibilitam a manutenção da vida no planeta.  São exemplos de graves problemas que impactam o meio ambiente do planeta a ocorrência de desmatamentos e queimadas.  O conceito de preservação envolve a manutenção das características ambientais do meio de forma absoluta.  Já conservação é um conceito que envolve o uso sustentável dos recursos ambientais dispostos na natureza.  As conferências internacionais sobre o meio ambiente são grandes eventos mundiais que discutem o cenário ambiental global.  São termos ligados ao conceito de meio ambiente: natureza, espaço, ambiente e ecossistema.  O meio ambiente no Brasil é muito diversificado, mas bastante degradado, principalmente em razão das atividades h', 3, '');

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
(1, 3, 'img/icons/meioAmbiente.png', 'img/icons/estud.png', 'img/icons/jogo.png', 'Aprenda Sobre Educação Ambiental', 'Faça Cursos Online', 'Jogue Enquanto Aprende', 'img/icons/logoJogoESite.png', 'img/icons/cursos.png', 'img/icons/img2.png', 'Educação Ambiental', 'Cursos', 'Jogos', 'Nosso site será dedicado principalmente à abordagem de conteúdos ambientais. Nossa missão é focar no engajamento dos jovens, e para isso, exploraremos uma abordagem inovadora, incorporando elementos da gamificação como uma das ferramentas-chave para tornar o aprendizado sobre questões ambientais uma experiência envolvente e empolgante. Através de uma variedade de recursos interativos e desafios divertidos, pretendemos criar um ambiente online que inspire e motive os jovens a se envolverem ativamente na proteção do nosso planeta.', 'Nosso site terá como principal objetivo disponibilizar uma ampla variedade de cursos voltados para o ensino da educação ambiental. Além disso, oferecerá uma plataforma interativa que permitirá aos usuários a oportunidade de compartilhar seus próprios conteúdos, com o nobre propósito de disseminar conhecimentos e informações relacionados ao meio ambiente. Através dessa abordagem inclusiva, pretendemos fomentar uma comunidade engajada e comprometida com a conscientização ambiental.', 'O nosso site é uma plataforma que se destaca por oferecer uma ampla variedade de jogos projetados especificamente para promover a educação ambiental. Esses jogos foram cuidadosamente desenvolvidos com características distintas e envolventes, que têm o poder de capturar a atenção e despertar o interesse dos jovens. Acreditamos firmemente que a aprendizagem através da diversão é uma abordagem eficaz e impactante para sensibilizar as gerações mais novas sobre questões ambientais críticas. Portanto, estamos comprometidos em fornecer experiências educacionais emocionantes que não apenas informem, mas também inspirem os jovens a se tornarem defensores ativos do nosso precioso meio ambiente.');

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
(80, 34, 3, 'testttttt');

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
(2, 33, 'TCC exemplo', 'trabalho de conclusao de curso voltado para a educação de jovens em questoes ambientais', 'img/pdfs/tccExemplo.pdf'),
(4, 33, ' Teste', 'gfgfgfg', 'img/pdfs/Atividade educação ambiental.pdf'),
(5, 33, 'Macacão ', 'um macarrao', 'img/pdfs/PedroHenriqueBarros.pdf');

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
(1, 1, 1, 1, 'testePerg1', 'a', 'b', 'c', 'd', 'a', 'testePerg2', 'a', 'b', 'c', 'd', 'b', 'testePerg3', 'a', 'b', 'c', 'd', 'c', 'testePerg4', 'a', 'b', 'c', 'd', 'd'),
(2, 2, 2, 1, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(3, 6, 1, 4, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b'),
(4, 7, 2, 4, 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c');

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
(275, 33, 4, NULL);

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
(1, 1, 1, 'teste1', 'teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1teste1'),
(2, 1, 2, 'teste2', 'teste2teste2teste2teste2teste2teste2'),
(3, 3, 1, ' semana 1 teste', ''),
(4, 3, 2, ' semana 2 teste', ''),
(5, 3, 3, ' semana 3 teste', ''),
(6, 4, 1, ' semana 1 teste', ''),
(7, 4, 2, ' semana 2 teste', ''),
(8, 4, 3, ' semana 3 teste', ''),
(9, 4, 4, ' semana 4 teste', 'teste conteudo 4'),
(10, 5, 1, ' semana 1 teste', 'teste conteudo 4'),
(11, 6, 1, ' semana 1 teste', 'teste conteudo 4'),
(12, 7, 1, ' semana 2 teste', 'teste conteudo 4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_teste`
--

CREATE TABLE `tb_teste` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_teste`
--

INSERT INTO `tb_teste` (`id`) VALUES
(1),
(2),
(3),
(4),
(5);

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
(4, 37, 'Teste Edicao', 'È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um te', ' È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,È um teste,');
INSERT INTO `tb_textos` (`id`, `id_usuario`, `titulo`, `resumo`, `texto`) VALUES
(7, 33, 'cscdfgdg', 'gfgfgfg', ' dsdsdsdsdzs'),
(11, 33, 'dfwfafuiiuu', 'fffwf', ' fawfawfawfaw');

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
(33, 'Barro', 'Pedro Henrique Barros', 'IFG-Instituto Federal do Goiás', 'Professor do Curso de Analista e Desenvolvedor de Sistemas', '2003-01-23', 'pedro@gmail.com', '123', 'prof', 'img/perfis/eu.jpeg', 'img/perfis/fundo linkedin.jpg'),
(34, 'Aluno', 'Aluno da silva', 'IFG-Instituto Federal do Goiás', ' Estudante do 5° Periodo do Curso de Analista e Desenvolvedor de Sistemas', '2002-07-25', 'aluno@gmail.com', '123', 'aluno', 'img/perfis/ProfessorImg.jpeg', 'img/perfis/professorImgFundo.jpg'),
(37, 'ProfessorTeste', 'Professor Testador Junior da Silva', 'IFG-Instituto Federal do Goiás', 'Teste de Descrição', '1999-03-23', 'professor@gmail.com', '123', 'prof', 'img/perfis/ProfessorImg.jpeg', 'img/perfis/professorImgFundo.jpg');

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
-- Índices para tabela `tb_teste`
--
ALTER TABLE `tb_teste`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_cursando`
--
ALTER TABLE `tb_cursando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_inicio`
--
ALTER TABLE `tb_inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_mensagens`
--
ALTER TABLE `tb_mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `tb_pdf`
--
ALTER TABLE `tb_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_questionarios`
--
ALTER TABLE `tb_questionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_salvos`
--
ALTER TABLE `tb_salvos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT de tabela `tb_semanas`
--
ALTER TABLE `tb_semanas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_teste`
--
ALTER TABLE `tb_teste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_textos`
--
ALTER TABLE `tb_textos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
