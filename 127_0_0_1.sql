-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Set-2019 às 16:44
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemade_login`
--
DROP DATABASE IF EXISTS `sistemade_login`;
CREATE DATABASE IF NOT EXISTS `sistemade_login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `sistemade_login`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar`) VALUES
(1, 'Nicollas Patrick', 'Nixollassps', 'souza.nih@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 13:38:40', ''),
(2, 'Wanda Maximoff', 'Scarlet Witch', 'SW@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:07:30', 'https://i.ytimg.com/vi/izgx5Ln1i7c/maxresdefault.jpg'),
(3, 'Wanda Maximoff', 'Wandinha Fodona', 'wm@soufoda.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:22:33', 'https://www.screengeek.net/wp-content/uploads/2018/05/avengers-infinity-war-scarlet-witch.jpg'),
(4, 'Wanda Maximoff', 'Wanda', 'WandaEscarlate@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:24:27', 'https://www.screengeek.net/wp-content/uploads/2018/05/avengers-infinity-war-scarlet-witch.jpg'),
(5, 'Wanda Maximoff', 'ScarletWanda', 'swm@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2019-09-06 16:34:32', 'https://a.wattpad.com/useravatar/-TaintedTragedy-.256.113099.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
