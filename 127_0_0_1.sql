-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:37
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
  `avatar` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar`, `token`, `tempo_de_vida`) VALUES
(1, 'Nicollas Patrick', 'Nixollassps', 'souza.nih@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 13:38:40', '', '', '2019-09-12 19:33:18'),
(2, 'Wanda Maximoff', 'Scarlet Witch', 'SW@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:07:30', 'https://i.ytimg.com/vi/izgx5Ln1i7c/maxresdefault.jpg', '', '2019-09-12 19:33:18'),
(6, 'Nicollas P', 'NicoGato', 'nico@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 14:41:21', 'https://pa1.narvii.com/7132/f79a69dd373541b479afc14ae1dd594265e805edr1-312-132_128.gif', '', '2019-09-12 19:33:18'),
(7, 'Bart Simpsons', 'barts', 'bart@gmail.com', 'bf8759494480995e23af85ae51c170512c6e99f2', '2019-09-12 16:35:47', 'https://i.pinimg.com/originals/00/69/85/0069850a178ceae7eab44095156cab99.png', '', '2019-09-12 19:35:47');

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
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
