-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10/05/2025 às 22:13
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `financeiro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas`
--

CREATE TABLE `contas` (
  `id` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `tipo` enum('Receber','Pagar') NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `cliente_fornecedor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contas`
--

INSERT INTO `contas` (`id`, `data_vencimento`, `tipo`, `valor`, `cliente_fornecedor`) VALUES
(1, '2025-05-01', 'Receber', 1200.00, 'Cliente A'),
(2, '2025-05-05', 'Pagar', 800.00, 'Fornecedor X'),
(3, '2025-05-10', 'Receber', 1500.00, 'Cliente B'),
(4, '2025-05-12', 'Pagar', 600.00, 'Fornecedor Y'),
(5, '2025-06-01', 'Receber', 2000.00, 'Cliente C'),
(7, '2025-06-05', 'Receber', 1750.00, 'Cliente D'),
(8, '2025-06-07', 'Pagar', 1100.00, 'Fornecedor X'),
(9, '2025-06-10', 'Receber', 1420.00, 'Cliente E'),
(10, '2025-06-12', 'Pagar', 970.00, 'Fornecedor Y'),
(11, '2025-06-15', 'Receber', 2100.00, 'Cliente F'),
(12, '2025-06-17', 'Pagar', 1200.00, 'Fornecedor W'),
(13, '2025-06-20', 'Receber', 1550.00, 'Cliente G'),
(14, '2025-06-22', 'Pagar', 890.00, 'Fornecedor V'),
(15, '2025-06-25', 'Receber', 1820.00, 'Cliente H'),
(16, '2025-06-27', 'Pagar', 770.00, 'Fornecedor U'),
(17, '2025-07-01', 'Receber', 1650.00, 'Cliente I'),
(18, '2025-07-03', 'Pagar', 950.00, 'Fornecedor T'),
(19, '2025-07-05', 'Receber', 1350.00, 'Cliente J'),
(20, '2025-07-08', 'Pagar', 1100.00, 'Fornecedor S'),
(21, '2025-07-10', 'Receber', 1920.00, 'Cliente K'),
(22, '2025-07-12', 'Pagar', 1040.00, 'Fornecedor R'),
(23, '2025-07-15', 'Receber', 1680.00, 'Cliente L'),
(24, '2025-07-17', 'Pagar', 930.00, 'Fornecedor Q'),
(25, '2025-07-20', 'Receber', 1550.00, 'Cliente M'),
(26, '2025-07-22', 'Pagar', 890.00, 'Fornecedor P'),
(27, '2025-08-01', 'Receber', 1750.00, 'Cliente N'),
(28, '2025-08-03', 'Pagar', 1200.00, 'Fornecedor O'),
(29, '2025-08-05', 'Receber', 1400.00, 'Cliente O'),
(30, '2025-08-08', 'Pagar', 950.00, 'Fornecedor N'),
(31, '2025-08-10', 'Receber', 2000.00, 'Cliente P'),
(32, '2025-08-12', 'Pagar', 1120.00, 'Fornecedor M'),
(33, '2025-08-15', 'Receber', 1550.00, 'Cliente Q'),
(34, '2025-08-17', 'Pagar', 880.00, 'Fornecedor L'),
(35, '2025-08-20', 'Receber', 1720.00, 'Cliente R'),
(36, '2025-08-22', 'Pagar', 1020.00, 'Fornecedor K'),
(37, '2025-09-01', 'Receber', 1600.00, 'Cliente S'),
(38, '2025-09-03', 'Pagar', 1090.00, 'Fornecedor J'),
(39, '2025-09-05', 'Receber', 1480.00, 'Cliente T'),
(40, '2025-09-08', 'Pagar', 940.00, 'Fornecedor I'),
(41, '2025-09-10', 'Receber', 1950.00, 'Cliente U'),
(42, '2025-09-12', 'Pagar', 1180.00, 'Fornecedor H'),
(43, '2025-09-15', 'Receber', 1780.00, 'Cliente V'),
(44, '2025-09-17', 'Pagar', 1010.00, 'Fornecedor G'),
(45, '2025-09-20', 'Receber', 1690.00, 'Cliente W'),
(46, '2025-09-22', 'Pagar', 880.00, 'Fornecedor F'),
(47, '2025-10-01', 'Receber', 1850.00, 'Cliente X'),
(48, '2025-10-03', 'Pagar', 1000.00, 'Fornecedor E'),
(49, '2025-10-05', 'Receber', 1620.00, 'Cliente Y'),
(50, '2025-10-08', 'Pagar', 920.00, 'Fornecedor D'),
(51, '2025-10-10', 'Receber', 2000.00, 'Cliente Z'),
(52, '2025-10-12', 'Pagar', 1100.00, 'Fornecedor C'),
(53, '2025-10-15', 'Receber', 1570.00, 'Cliente Alpha'),
(54, '2025-10-17', 'Pagar', 880.00, 'Fornecedor Beta'),
(55, '2025-10-20', 'Receber', 1700.00, 'Cliente Omega'),
(56, '2025-10-22', 'Pagar', 950.00, 'Fornecedor Sigma');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
