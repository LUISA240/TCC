-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Maio-2023 às 20:56
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdtcc`
--
CREATE DATABASE IF NOT EXISTS `bdtcc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdtcc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `amigos`
--

DROP TABLE IF EXISTS `amigos`;
CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_de` varchar(200) NOT NULL,
  `id_para` varchar(200) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `amigos`
--

INSERT INTO `amigos` (`id`, `id_de`, `id_para`, `status`) VALUES
(124, '46', 'Kaykera', 0),
(125, '47', 'nishiz', 0),
(127, '31', 'Kaykera', 0),
(128, '47', 'martinsanaju', 0),
(129, '45', 'nishiz', 0),
(130, '@martinsanaju', '@yasmin', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtidas`
--

DROP TABLE IF EXISTS `curtidas`;
CREATE TABLE IF NOT EXISTS `curtidas` (
  `id_curtida` int NOT NULL AUTO_INCREMENT,
  `id_publi` int NOT NULL,
  `codigo_usuario` int NOT NULL,
  PRIMARY KEY (`id_curtida`),
  KEY `id_publi` (`id_publi`),
  KEY `codigo_usuario` (`codigo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtidas`
--

INSERT INTO `curtidas` (`id_curtida`, `id_publi`, `codigo_usuario`) VALUES
(2, 73, 45),
(4, 73, 45),
(5, 73, 45),
(6, 73, 45),
(7, 73, 45),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(37, 0, 0),
(38, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(287, 78, 40),
(318, 78, 47),
(334, 85, 29),
(337, 79, 45),
(338, 94, 45),
(340, 96, 45),
(341, 98, 45);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
CREATE TABLE IF NOT EXISTS `forgot_password` (
  `email` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `forgot_password`
--

INSERT INTO `forgot_password` (`email`, `token`) VALUES
('$email', '$token');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interesses`
--

DROP TABLE IF EXISTS `interesses`;
CREATE TABLE IF NOT EXISTS `interesses` (
  `id_interesse` int NOT NULL AUTO_INCREMENT,
  `nome_interesse` varchar(100) NOT NULL,
  `codigo_usuario` int NOT NULL,
  PRIMARY KEY (`id_interesse`),
  KEY `codigo_usuario` (`codigo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `interesses`
--

INSERT INTO `interesses` (`id_interesse`, `nome_interesse`, `codigo_usuario`) VALUES
(16, 'esporte;tecnologia', 47),
(17, 'esporte;tecnologia;arte;moda', 47),
(18, 'esporte;tecnologia;moda', 48);

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacoes_salvas`
--

DROP TABLE IF EXISTS `publicacoes_salvas`;
CREATE TABLE IF NOT EXISTS `publicacoes_salvas` (
  `id_salvo` int NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int NOT NULL,
  `id_publi` int NOT NULL,
  PRIMARY KEY (`id_salvo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `publicacoes_salvas`
--

INSERT INTO `publicacoes_salvas` (`id_salvo`, `codigo_usuario`, `id_publi`) VALUES
(1, 29, 85),
(2, 29, 77),
(7, 29, 78),
(8, 29, 83),
(9, 45, 78),
(10, 44, 98);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabcoment`
--

DROP TABLE IF EXISTS `tabcoment`;
CREATE TABLE IF NOT EXISTS `tabcoment` (
  `codcoment` int NOT NULL AUTO_INCREMENT,
  `codpost` int NOT NULL,
  `codusuario` int NOT NULL,
  `comentario` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codcoment`),
  KEY `codigo` (`codpost`),
  KEY `coduser` (`codusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabcoment`
--

INSERT INTO `tabcoment` (`codcoment`, `codpost`, `codusuario`, `comentario`) VALUES
(19, 1, 47, 'zzxzx'),
(35, 78, 45, 'morra'),
(34, 79, 45, '44444'),
(33, 79, 44, 'vc denovo?'),
(32, 78, 44, 'chata'),
(31, 0, 44, 'muito bonita'),
(30, 0, 44, 'aaaaa'),
(36, 78, 44, 'nao'),
(37, 77, 44, 'lindo!!!'),
(38, 79, 29, 'funfou?'),
(39, 85, 29, 'vai se foder!!!'),
(40, 85, 29, 'vai vc!!!'),
(41, 90, 45, 'sadaadssd'),
(42, 94, 45, 'Oi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_cadastro`
--

DROP TABLE IF EXISTS `tabela_cadastro`;
CREATE TABLE IF NOT EXISTS `tabela_cadastro` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datanasc` date NOT NULL,
  `sexo` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_cadastro`
--

INSERT INTO `tabela_cadastro` (`codigo`, `nome`, `username`, `datanasc`, `sexo`, `telefone`, `email`, `senha`, `foto`, `bio`) VALUES
(31, 'Fellype', 'Dias', '0000-00-00', '', '11989898989', 'fellype_luna@gmail.com', '202cb962ac59075b964b07152d234b70', 'img/106b0e8d9067ed7226da7bd54e130057.jpg', 'Descrição.'),
(30, 'Ana Julia ', 'Martins', '0000-00-00', '', '11970120422', 'martinsana0903@gmail.com', '202cb962ac59075b964b07152d234b70', 'img/f6b66efb5f45896aca8f6274d3a67ff7.jpg', '17 anos, SP, Ler.'),
(29, 'Henrique', 'Santana', '0000-00-00', '', '11 91371-8797', 'trabalhadorhonessto@gmail.com', 'a4dbfd6aef3b4045fe61aa0146debdf8', 'img/c2abb17d64ab2d6a1f3cfc8a2e000f34.jpg', 'Eu que arrumei essa porra!'),
(40, 'Ana Julia', 'martinsanaju', '0000-00-00', '', '(11) 97012-0422', 'ana@gmail.com', '202cb962ac59075b964b07152d234b70', 'img/558210330cd9159a597de81170ccf592.jpg', 'descrição'),
(42, 'Arthur Santana', '@arthursantana', '2005-05-03', 'masculino', '(11) 98008-8767', 'thurzinfreefire@gmail.com', '41fcee37263942e9517209fd64a80ff6', 'imgUsuario/fc2b8b2ad85d13c1d84b97a5a2114bda.jpg', '   testando'),
(43, 'Wilson', 'nishiz', '2005-04-28', 'outro', '(11) 98003-1348', 'wilsonnishi16@gmail.com', '941ae901dd5ba30bb74ab5c0b4f4302b', 'imgUsuario/d2234b82c106c19a3c177c666bda1a48.jpg', '            Estou largo.'),
(44, 'Yas', '@yasmin', '2004-11-03', 'outro', '(11) 97865-6267', 'yass@min.com', '202cb962ac59075b964b07152d234b70', 'imgUsuario/0e4ccb5f57892fa0f4c02179f223ea92.jpg', '  Zzz..'),
(45, 'Ana Julia Carvalho', '@martinsanaju', '2005-04-29', 'masculino', '(55) 11970-1204', 'ana@ju.com', '202cb962ac59075b964b07152d234b70', 'imgUsuario/11890d54f68b71bba25c2536d7e5d379.jpg', '            Oi'),
(46, 'Ana Julia Carvalho', '@juju', '2005-04-29', 'feminino', '(55) 11970-1204', 'anajuju@gmail.com', '202cb962ac59075b964b07152d234b70', 'imgUsuario/e79fa38d3729013b6c8a5e0a935ff573.jpg', '            123'),
(47, 'Kayky', 'Kaykera', '2004-07-01', 'masculino', '(11) 95999-0386', 'menezes@gmail.com', '202cb962ac59075b964b07152d234b70', 'imgUsuario/1473489705d1247a030484089e9da00b.jpg', '            asdad');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabpubli`
--

DROP TABLE IF EXISTS `tabpubli`;
CREATE TABLE IF NOT EXISTS `tabpubli` (
  `id_publi` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fotopubli` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `codigo_usuario` int NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `curtidas` int NOT NULL,
  PRIMARY KEY (`id_publi`),
  KEY `codigo_usuario` (`codigo_usuario`),
  KEY `categoria` (`categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabpubli`
--

INSERT INTO `tabpubli` (`id_publi`, `descricao`, `fotopubli`, `codigo_usuario`, `categoria`, `curtidas`) VALUES
(100, '', 'imgPublicacoes/07710b2f88b0f3c220dfdc2ba04d928f.jpg', 44, 'Musica', 0),
(99, '', 'imgPublicacoes/69b7e388e7e5814107b820eb14939add.jpg', 44, 'Esporte', 0),
(97, '', 'imgPublicacoes/19107660dfa361f9625dbd19add926d4.jpg', 45, 'Tecnologia', 0),
(98, 'OIE', 'imgPublicacoes/e71f023fe0e6e0e1c8da487121d969de.jpg', 45, 'Arte', 1),
(96, 'TESTE ARTE', 'imgPublicacoes/bd010aae07dce7e1a7fdf73b7703ebcf.jpg', 45, 'Arte', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
