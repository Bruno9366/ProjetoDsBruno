SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE DATABASE IF NOT EXISTS `labexame` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `labexame`;



DROP TABLE IF EXISTS `consulta`;
CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `nome_paciente` varchar(100) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `valor_consulta` double(8,2) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `exame`;
CREATE TABLE `exame` (
  `id_exame` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `nome_exame` varchar(100) NOT NULL,
  `data_exame` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nome_paciente` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `resultado_exame`;
CREATE TABLE `resultado_exame` (
  `id_resultado` int(11) NOT NULL,
  `id_exame` int(11) NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `data_liberacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`);


ALTER TABLE `exame`
  ADD PRIMARY KEY (`id_exame`);


ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);


ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);


ALTER TABLE `resultado_exame`
  ADD PRIMARY KEY (`id_resultado`);
COMMIT;