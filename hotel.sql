-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Jun-2018 às 03:03
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `apartamento`
--

CREATE TABLE `apartamento` (
  `idApartamento` bigint(20) NOT NULL,
  `andarQuarto` varchar(255) DEFAULT NULL,
  `disponibilidade` bit(1) NOT NULL,
  `numeroQuarto` varchar(255) DEFAULT NULL,
  `idPredio` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `apartamento`
--

INSERT INTO `apartamento` (`idApartamento`, `andarQuarto`, `disponibilidade`, `numeroQuarto`, `idPredio`) VALUES
(1, '1', b'1', '11', 2),
(3, '2', b'1', '21', 1),
(4, '3', b'1', '31', 1),
(5, '1', b'1', '12', 1),
(6, '1', b'1', '11', 3),
(7, '2', b'1', '21', 3),
(8, '3', b'1', '31', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `consumo`
--

CREATE TABLE `consumo` (
  `idConsumo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consumo_produto`
--

CREATE TABLE `consumo_produto` (
  `Consumo_idConsumo` bigint(20) NOT NULL,
  `produto_idProduto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionamento`
--

CREATE TABLE `estacionamento` (
  `idVaga` bigint(20) NOT NULL,
  `dataEntrada` datetime DEFAULT NULL,
  `dataSaida` datetime DEFAULT NULL,
  `disponivel` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estacionamento`
--

INSERT INTO `estacionamento` (`idVaga`, `dataEntrada`, `dataSaida`, `disponivel`) VALUES
(1, NULL, NULL, b'1'),
(2, NULL, NULL, b'1'),
(3, NULL, NULL, b'1'),
(4, NULL, NULL, b'1'),
(5, NULL, NULL, b'1'),
(6, NULL, NULL, b'1'),
(7, NULL, NULL, b'1'),
(8, NULL, NULL, b'1'),
(9, NULL, NULL, b'1'),
(10, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `email` varchar(255) DEFAULT NULL,
  `nivelAcesso` int(11) NOT NULL,
  `salario` double NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `idFuncionario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`email`, `nivelAcesso`, `salario`, `senha`, `idFuncionario`) VALUES
('america@hotmail.com', 1, 5000, '231', 2),
('kevic@ig.com', 1, 5000, '123', 3),
('maria@email.com', 2, 1000, '123', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerente`
--

CREATE TABLE `gerente` (
  `idGerente` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gerente`
--

INSERT INTO `gerente` (`idGerente`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `idHospedagem` bigint(20) NOT NULL,
  `dataEntrada` datetime DEFAULT NULL,
  `dataSaida` datetime DEFAULT NULL,
  `valorTotal` double NOT NULL,
  `idReserva` bigint(20) NOT NULL,
  `idConsumo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospede`
--

CREATE TABLE `hospede` (
  `observacao` varchar(255) DEFAULT NULL,
  `idHospede` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hospede`
--

INSERT INTO `hospede` (`observacao`, `idHospede`) VALUES
('nenhuma', 5),
('é filho do dono', 6),
('portador de deficiencia fisica', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idPessoa` bigint(20) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idPessoa`, `cpf`, `dataNascimento`, `endereco`, `nome`) VALUES
(2, '111111111', NULL, 'quebrada', 'kelly'),
(3, '5555', '1963-07-09', 'vila milton', 'maurao'),
(5, '11111', '2009-05-13', 'Vila Galvao', 'marcika'),
(6, '111111111', '1988-11-05', 'vila milton', 'joao'),
(7, '242424', '1943-02-01', 'Pimentas', 'evaldo'),
(8, '24696924', '1970-12-12', 'Vila Rio', 'maria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `predio`
--

CREATE TABLE `predio` (
  `idPredio` bigint(20) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `nomePredio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `predio`
--

INSERT INTO `predio` (`idPredio`, `categoria`, `nomePredio`) VALUES
(1, 'vip', 'Predio A'),
(2, 'comum', 'Predio B'),
(3, 'economica', 'Predio C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` bigint(20) NOT NULL,
  `nomeProduto` varchar(255) DEFAULT NULL,
  `valorProduto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nomeProduto`, `valorProduto`) VALUES
(1, 'Coca cola Lata', 5),
(2, 'Salgadinho', 3),
(3, 'Mini pizza', 5),
(4, 'Cerveja Heineken', 7),
(5, 'Pacote de balas', 2),
(6, 'Red Label', 70),
(7, 'Pizza', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recepcionista`
--

CREATE TABLE `recepcionista` (
  `idRecepcionista` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `recepcionista`
--

INSERT INTO `recepcionista` (`idRecepcionista`) VALUES
(8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` bigint(20) NOT NULL,
  `status` bit(1) NOT NULL,
  `idApartamento` bigint(20) NOT NULL,
  `idVaga` bigint(20) DEFAULT NULL,
  `idHospede` bigint(20) NOT NULL,
  `idRecepcionista` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`idReserva`, `status`, `idApartamento`, `idVaga`, `idHospede`, `idRecepcionista`) VALUES
(1, b'1', 6, 4, 5, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartamento`
--
ALTER TABLE `apartamento`
  ADD PRIMARY KEY (`idApartamento`),
  ADD KEY `FK_4tl0w9942frx2w6wg5t7twtuf` (`idPredio`);

--
-- Indexes for table `consumo`
--
ALTER TABLE `consumo`
  ADD PRIMARY KEY (`idConsumo`);

--
-- Indexes for table `consumo_produto`
--
ALTER TABLE `consumo_produto`
  ADD PRIMARY KEY (`Consumo_idConsumo`,`produto_idProduto`),
  ADD UNIQUE KEY `UK_jexhcy5u9pi6nmec42mx03vlm` (`produto_idProduto`);

--
-- Indexes for table `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD PRIMARY KEY (`idVaga`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Indexes for table `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`idGerente`);

--
-- Indexes for table `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`idHospedagem`),
  ADD KEY `FK_q09mrg36dk4se0lccs7cl26ug` (`idReserva`),
  ADD KEY `FK_8ooxwwqb5h9ft31s9seh7qhg8` (`idConsumo`);

--
-- Indexes for table `hospede`
--
ALTER TABLE `hospede`
  ADD PRIMARY KEY (`idHospede`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idPessoa`);

--
-- Indexes for table `predio`
--
ALTER TABLE `predio`
  ADD PRIMARY KEY (`idPredio`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Indexes for table `recepcionista`
--
ALTER TABLE `recepcionista`
  ADD PRIMARY KEY (`idRecepcionista`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `FK_a35qobkvlyeq3gqrp3g8qcw09` (`idApartamento`),
  ADD KEY `FK_q9xk5kv29tftfj55p1j8awjxq` (`idVaga`),
  ADD KEY `FK_kvbspd7nooyk4ykcjfwrpe5ef` (`idHospede`),
  ADD KEY `FK_bn52iwjr8gustg00rtnnfyw46` (`idRecepcionista`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartamento`
--
ALTER TABLE `apartamento`
  MODIFY `idApartamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `consumo`
--
ALTER TABLE `consumo`
  MODIFY `idConsumo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estacionamento`
--
ALTER TABLE `estacionamento`
  MODIFY `idVaga` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `idHospedagem` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idPessoa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `predio`
--
ALTER TABLE `predio`
  MODIFY `idPredio` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `apartamento`
--
ALTER TABLE `apartamento`
  ADD CONSTRAINT `FK_4tl0w9942frx2w6wg5t7twtuf` FOREIGN KEY (`idPredio`) REFERENCES `predio` (`idPredio`);

--
-- Limitadores para a tabela `consumo_produto`
--
ALTER TABLE `consumo_produto`
  ADD CONSTRAINT `FK_jb94mnh2ix0p424kryohkgf3o` FOREIGN KEY (`Consumo_idConsumo`) REFERENCES `consumo` (`idConsumo`),
  ADD CONSTRAINT `FK_jexhcy5u9pi6nmec42mx03vlm` FOREIGN KEY (`produto_idProduto`) REFERENCES `produto` (`idProduto`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `FK_sd5r67gcgvda6phqsll2jik9p` FOREIGN KEY (`idFuncionario`) REFERENCES `pessoa` (`idPessoa`);

--
-- Limitadores para a tabela `gerente`
--
ALTER TABLE `gerente`
  ADD CONSTRAINT `FK_jbpff9l19o7it79e7jacefkba` FOREIGN KEY (`idGerente`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `FK_8ooxwwqb5h9ft31s9seh7qhg8` FOREIGN KEY (`idConsumo`) REFERENCES `consumo` (`idConsumo`),
  ADD CONSTRAINT `FK_q09mrg36dk4se0lccs7cl26ug` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`);

--
-- Limitadores para a tabela `hospede`
--
ALTER TABLE `hospede`
  ADD CONSTRAINT `FK_c2mdxrxy61doj61v8csq2kqso` FOREIGN KEY (`idHospede`) REFERENCES `pessoa` (`idPessoa`);

--
-- Limitadores para a tabela `recepcionista`
--
ALTER TABLE `recepcionista`
  ADD CONSTRAINT `FK_ey73vos9bidw5420ix0i8u97n` FOREIGN KEY (`idRecepcionista`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FK_a35qobkvlyeq3gqrp3g8qcw09` FOREIGN KEY (`idApartamento`) REFERENCES `apartamento` (`idApartamento`),
  ADD CONSTRAINT `FK_bn52iwjr8gustg00rtnnfyw46` FOREIGN KEY (`idRecepcionista`) REFERENCES `recepcionista` (`idRecepcionista`),
  ADD CONSTRAINT `FK_kvbspd7nooyk4ykcjfwrpe5ef` FOREIGN KEY (`idHospede`) REFERENCES `hospede` (`idHospede`),
  ADD CONSTRAINT `FK_q9xk5kv29tftfj55p1j8awjxq` FOREIGN KEY (`idVaga`) REFERENCES `estacionamento` (`idVaga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
