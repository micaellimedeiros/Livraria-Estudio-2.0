-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Set-2019 às 03:43
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ra18171165`
--
CREATE DATABASE IF NOT EXISTS `ra18171165` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ra18171165`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `formacao` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `nome`, `email`, `formacao`, `foto`) VALUES
(1, 'Jo Boaler', 'joboaler@gmail.com', 'Começou sua carreira como professora secundária de matemática nas escolas secundárias urbanas de Londres, incluindo a Haverstock School, Camden. Após seu início de carreira no ensino médio de matemática, Boaler recebeu um mestrado', '../imagens/autores/autor1.jpg'),
(2, 'Leo Kriger', 'leokriger@gmail.com', 'Possui graduação em Odontologia pela Universidade Federal do Paraná(1965) e mestrado em Odontologia Social pela Universidade Federal do Rio Grande do Sul(1973)', '../imagens/autores/autor2.jpg'),
(3, 'Evandro Teruel', 'evandroteruel@gmail.com', 'Possui graduação em Tecnologia em Processamento de Dados pela FATEC-SP (2002), pós-graduação lato sensu em Projeto e Desenvolvimento de Sistemas para Web pela UNIP-SP (2006), pós-graduação lato sensu em Segurança da Informação pela UNINOVE (2011) e mestra', '../imagens/autores/autor3.jpg'),
(4, 'Eli Parisier', 'eliparisier@gmail.com', 'concluiu Bacharelado em Direito e Ciências Políticas na Simon\'s Rock College.[3] Em 2005 fez o discurso de formatura nesta instituição e recebeu um honorário diploma de ensino médio da Camden-Rockport Hight School.[4] Atualmente ele mora em Brooklyn, Nova', '../imagens/autores/autor4.jpg'),
(5, 'Michael Flynn', 'michaelflynn@gmail.com', 'Graduou-se em engenharia em 1955 pela Manhattan College e concluiu o mestrado cinco anos mais tarde, pela Universidade de Syracuse. Em 1961, concluiu o doutorado pela Universidade de Purdue.', '../imagens/autores/autor5.jpg'),
(6, 'Douglas Comer', 'douglascomer@contato.com.br', 'Douglas Comer graduou-se em matemática e física em 1971 pelo Houghton College e obteve um doutorado em ciência da computação em 1976 pela Pennsylvania State University. ', '../imagens/autores/autor6.jpg\"'),
(7, 'Manuel Castells', 'manuelcastells@contato.com.br', 'Foi nomeado em 1979 professor de Sociologia e Planejamento Regional na Universidade de Berkeley, Califórnia. Em 2001, tornou-se pesquisador da Universidade Aberta da Catalunha em Barcelona. Em 2003, juntou-se à Universidade da Califórnia do Sul, como prof', '../imagens/autores/autor7.jpg\"'),
(8, 'Antonio Siemsen Munhoz', 'munhozsiemsen@contato.com.br', 'Bacharel em engenharia civil (UFPr - Universidade Federal do Paraná / 1978). Aperfeiçoamento em Metodologia do Ensino Superior Superior (FIES / 1998)', '../imagens/autores/autor8.jpg'),
(9, 'Paul Strathern', 'strathern@contato.com.br', 'Estudou filosofia no Trinity College de Dublin.\r\n\r\nStrathern é mais conhecido pela autoria das séries populares Filósofos em 90 minutos e Cientistas em 90 minutos, publicadas em português pela editora brasileira Jorge Zahar Editor.', '../imagens/autores/autor9.jpg'),
(10, 'Karen Armstrong', 'karenarms@contato.com.br', 'é uma autora especialista em temas de religião, em particular sobre judaísmo, cristianismo e islamismo. ', '../imagens/autores/autor10.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

DROP TABLE IF EXISTS `editora`;
CREATE TABLE `editora` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id`, `nome`, `endereco`, `cidade`, `email`, `telefone`, `foto`) VALUES
(1, 'Artes Médicas', 'R. Ernesto Alves, 150', 'Floresta, Porto Alegre - RS', 'artesmedicas@editora.com.br', '12 3245-9654', ''),
(2, 'Zahar', 'Rua Marquês de S. Vicente, 99', 'Rio de Janeiro, RJ', 'zahar@editora.com.br', '18 5467-9231', ''),
(3, 'Saraiva', 'R. Neves de Carvalho, 92', 'Bom Retiro, São Paulo', 'saraiva@editora.com.br', '11 3190-0942', ''),
(4, 'Penso', 'Av. Jerônimo de Ornelas, 670', 'Porto Alegre, Rio Grande do Sul', 'sac@grupoa.com.br', '0800 703 3444', ''),
(5, 'Erica Editora', 'Avenida das Nações Unidas, 7221', 'Pinheiros, São Paulo', 'erica@editora.com.br', '(11) 4457-9556', ''),
(6, 'LTC', 'Travessa Do Ouv., 11, An 6', 'Centro, Rio De Janeiro', 'ltceditora@editora.com.br', '(21) 2221-7106', ''),
(7, 'Bookman', 'Av.Jerônimo de Ornelas, 670', 'Porto Alegre/RS', 'bookman@editora.com.br', ' 0800 703 3444', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

DROP TABLE IF EXISTS `livro`;
CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `totalPaginas` int(11) NOT NULL,
  `edicao` varchar(255) NOT NULL,
  `isbn` varchar(45) NOT NULL,
  `ano` year(4) NOT NULL,
  `fotoCapa` varchar(255) NOT NULL,
  `idEditora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `titulo`, `totalPaginas`, `edicao`, `isbn`, `ano`, `fotoCapa`, `idEditora`) VALUES
(1, 'O que a matemática tem a ver com isso?', 224, '1', '9788584291649', 2019, '../imagens/capas/livro1.jpg', 4),
(2, 'Odontologia baseada em evidências e intervenção mínima', 128, '1', '9788536702575', 2015, '../imagens/capas/livro2.jpg', 1),
(3, 'HTML 5 : guia prático', 336, '2', '9788536519296', 2014, '../imagens/capas/livro3.jpg', 5),
(4, 'O filtro invisível : o que a internet está escondendo de você', 252, '1', '9788537808313', 2012, '../imagens/capas/livro4.jpg', 2),
(5, 'Projeto de sistemas de computador : system-on-chip', 300, '1', '978-85-216-2724-1', 2014, '../imagens/capas/livro5.jpg', 6),
(6, 'Redes de computadores e internet', 584, '6', '9788582603727', 2016, '../imagens/capas/livro6.jpg', 7),
(7, 'A galáxia da Internet : reflexões sobre a Internet, os negócios e a sociedade', 244, '1', '8571107408', 2003, '../imagens/capas/livro7.jpg', 2),
(8, 'Nome: Tecnologia educacionais', 203, '1', '9788547200', 2016, '../imagens/capas/livro8.jpg', 3),
(9, 'Turing e o computador em 90 minutos', 92, '1', '8571105669 ', 2000, '../imagens/capas/livro9.jpg', 2),
(10, 'A Bíblia, uma biografia ', 336, '7', '9788536519296', 2007, '../imagens/capas/livro10.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro_autor`
--

DROP TABLE IF EXISTS `livro_autor`;
CREATE TABLE `livro_autor` (
  `id` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro_autor`
--

INSERT INTO `livro_autor` (`id`, `idLivro`, `idAutor`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `totalPaginas` (`totalPaginas`),
  ADD KEY `idEditora` (`idEditora`);

--
-- Índices para tabela `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `livro_autor`
--
ALTER TABLE `livro_autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id`) REFERENCES `livro_autor` (`id`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`idEditora`) REFERENCES `editora` (`id`);

--
-- Limitadores para a tabela `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD CONSTRAINT `livro_autor_ibfk_1` FOREIGN KEY (`id`) REFERENCES `autor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
