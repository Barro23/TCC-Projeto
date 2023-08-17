-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Ago-2023 às 02:12
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
(2, 34, NULL, 2),
(3, 34, NULL, 5),
(4, 34, 7, NULL),
(7, 34, 11, NULL);

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
(11, 33, 'dfwfafuiiuu', 'fffwf', ' fawfawfawfaw'),
(12, 33, 'ewt4ygykkgykyk', 'yjgyjgyjgyjgl', ' llllllllllllllllllllllllllllllllllllllllllll');

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
(34, 'Carlinhas', 'Carlos Henrique', 'IFG-Instituto Federal do Goiás', ' Estudante do 5° Periodo do Curso de Analista e Desenvolvedor de Sistemas', '2002-07-25', 'carlos@gmail.com', '123', 'aluno', 'img/perfis/CarlinhosCauboi.png', 'img/perfis/magago.jpg'),
(37, 'ProfessorTeste', 'Professor Testador Junior da Silva', 'IFG-Instituto Federal do Goiás', ' Macacão Rosa longo, feito de algodão.', '6890-03-23', 'professor@123', '123', 'prof', 'img/perfis/spongedance-4.gif', 'img/perfis/eche.jpeg');

--
-- Índices para tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `tb_pdf`
--
ALTER TABLE `tb_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_salvos`
--
ALTER TABLE `tb_salvos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
