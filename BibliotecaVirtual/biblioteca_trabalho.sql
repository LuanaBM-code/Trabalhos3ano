-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jan-2023 às 21:13
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
-- Banco de dados: `biblioteca_trabalho`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `Nome`) VALUES
(1, 'Abdi Nazemian'),
(2, 'Abigail Dean'),
(3, 'Agustina Bazterrica'),
(4, 'Alexandria Bellefleur'),
(5, 'Alice Oseman'),
(6, 'Alison Cochrun'),
(7, 'Allison Pataki'),
(8, 'Ana C. Alves'),
(9, 'André Aciman'),
(10, 'Anne Frank'),
(11, 'António Barreto'),
(12, 'Arquelana'),
(13, 'Ashley Herring Blake'),
(14, 'Bolu Babalola'),
(15, 'Brian Zepka'),
(16, 'Caíto Mainier'),
(17, 'Caleb Carr'),
(18, 'Casey McQuiston'),
(19, 'Clara Alves'),
(20, 'Clare Lydon'),
(21, 'Colleen Hoover'),
(22, 'Daniel Takata Gomes'),
(23, 'David Graeber'),
(24, 'Dhonielle Clayton'),
(25, 'Diogo Lara'),
(26, 'DjiEm'),
(27, 'Doug Magee'),
(28, 'Doug Stanton'),
(29, 'Elayne Baeta'),
(30, 'Elena Armas'),
(31, 'Emily Henry'),
(32, 'Estelle Laure'),
(33, 'Evandson Sousa'),
(34, 'Fabrício de Andrade Felício'),
(35, 'Frederico Elboni'),
(36, 'Gabriel Nascimento'),
(37, 'Gary Chapman'),
(38, 'Isaac Rosa'),
(39, 'Isabel Meziat'),
(40, 'Izabela Wagner'),
(41, 'James Joyce'),
(42, 'Jb Campos'),
(43, 'Jennifer Egan'),
(44, 'Jessica Batista'),
(45, 'Jessica Goodman'),
(46, 'João Victor Pires'),
(47, 'José Saramago'),
(48, 'Juan Villoro'),
(49, 'Juliana Dantas'),
(50, 'Kacen Callender'),
(51, 'Kelly Quindlen'),
(52, 'Laura Schroff'),
(53, 'Laurent Binet'),
(54, 'Leah Johnson'),
(55, 'Leonid Andreiev'),
(56, 'Lília Uzêda'),
(57, 'Lilian Jackson Braun'),
(58, 'Lima Barreto'),
(59, 'Lloyd Jones'),
(60, 'Lois McMaster Bujold'),
(61, 'Lolita Pille'),
(62, 'Louis Begley'),
(63, 'Lúcia Machado de Almeida'),
(64, 'Lynn Sholes'),
(65, 'Margaret George'),
(66, 'Maria Dezonne Pacheco Fernandes'),
(67, 'Maria Freitas'),
(68, 'Martin E. P. Seligman'),
(69, 'Mia Sheridan'),
(70, 'Michael Arruda'),
(71, 'Monja Coen'),
(72, 'Natasha Bowen'),
(73, 'Nathalie Somers'),
(74, 'Nina Melga'),
(75, 'Norberto Bobbio'),
(76, 'Patrick Modiano'),
(77, 'Pedro Rhuas'),
(78, 'Rachel Vincent'),
(79, 'Raíssa Selvaticci'),
(80, 'Ray Tavares'),
(81, 'Ricardo Molina'),
(82, 'Robbie Couch'),
(83, 'Robert Gerwarth'),
(84, 'Robert Greene'),
(85, 'Rosemary Sullivan'),
(86, 'Sam Eastland'),
(87, 'Scott McEwen'),
(88, 'Sergio Capparelli'),
(89, 'Sophie Gonzales'),
(90, 'Startup da Real'),
(91, 'Stephen King'),
(92, 'Taylor Jenkins Reid'),
(93, 'Thomas Sowell'),
(94, 'Trajano Vieira'),
(95, 'Vera Lúcia Marinzeck de Carvalho'),
(96, 'Victoria Mendes'),
(97, 'Vitor Martins'),
(98, 'Vladimir Ilitch Lênin'),
(99, 'José Falero'),
(100, 'Itamar Vieira Junior'),
(101, 'Jorge Amado'),
(102, 'Stênio Gardel'),
(103, 'Frédéric Delavier');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `Titulo` varchar(200) NOT NULL,
  `Genero` varchar(100) NOT NULL,
  `Ano` int(4) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL,
  `Pdf` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Email`, `Senha`, `admin`) VALUES
(1, 'admin@gmail.com', '555', 1),
(5, 'testando@gmail.com', '1234', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idLivro`),
  ADD KEY `idautor` (`idAutor`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
