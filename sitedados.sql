-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Mar-2023 às 03:09
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sitedados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprototipo`
--

CREATE TABLE `tbprototipo` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `idade` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbprototipo`
--

INSERT INTO `tbprototipo` (`id`, `nome`, `genero`, `cor`, `idade`) VALUES
(1, 'Samuel', 'Masculino', 'Pardo', 17),
(3, 'Gab', 'Não Binário', 'Branco', 16),
(4, 'Gab', 'Não Binário', 'Branco', 16),
(5, 'Gab', 'Não Binário', 'Branco', 16);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbprototipo`
--
ALTER TABLE `tbprototipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbprototipo`
--
ALTER TABLE `tbprototipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
