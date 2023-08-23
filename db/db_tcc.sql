-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Ago-2023 às 22:39
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
  `id_usuario` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `semana` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_cursando`
--

INSERT INTO `tb_cursando` (`id`, `id_usuario`, `id_curso`, `semana`, `status`) VALUES
(1, 33, 1, 1, ' andamento'),
(2, 37, 1, 1, ' andamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_curso`
--

CREATE TABLE `tb_curso` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `semanas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tb_curso`
--

INSERT INTO `tb_curso` (`id`, `id_usuario`, `titulo`, `semanas`) VALUES
(1, 33, 'Teste Curso', 2);

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
(30, 37, 1, 'cu'),
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
(71, 37, 1, 'teste 5');

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
(243, 34, 7, NULL),
(249, 33, 7, NULL),
(250, 33, 11, NULL),
(251, 33, 11, NULL),
(253, 34, 4, NULL),
(254, 34, 11, NULL),
(255, 37, 4, NULL),
(256, 37, 7, NULL);

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
(2, 1, 2, 'teste2', 'teste2teste2teste2teste2teste2teste2');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_cursando`
--
ALTER TABLE `tb_cursando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_mensagens`
--
ALTER TABLE `tb_mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `tb_pdf`
--
ALTER TABLE `tb_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_salvos`
--
ALTER TABLE `tb_salvos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT de tabela `tb_semanas`
--
ALTER TABLE `tb_semanas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
