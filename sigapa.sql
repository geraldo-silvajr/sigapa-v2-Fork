-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Mar-2022 às 01:40
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sigapa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado`
--

CREATE TABLE `associado` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `apelido` varchar(20) DEFAULT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(40) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_inscricao` date DEFAULT NULL,
  `pai` varchar(255) DEFAULT NULL,
  `mae` varchar(255) DEFAULT NULL,
  `conjugue` varchar(255) DEFAULT NULL,
  `filhos` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `associado`
--

INSERT INTO `associado` (`cod`, `tipo`, `status`, `apelido`, `nome_completo`, `cpf`, `rg`, `estado_civil`, `nacionalidade`, `genero`, `data_nascimento`, `data_inscricao`, `pai`, `mae`, `conjugue`, `filhos`, `imagem`) VALUES
(1, 'Permissionário', 1, '111111', '111111111111111111111', '111.111.111-11', '11111111111111111111', '1111111111111111', 'BRASILEIRO', 'Masculino', '1111-11-11', '2022-03-03', '11111111', '111111111111111', '111111111111111111111111111111111', '11111111111111', 'uploads/cooperados/4a9225b12b29f9147289e2c3e871f4c9.jpg'),
(2, 'Permissionário', 1, 'sadsad', 'asdasd', '222.222.222-22', '222222222', 'asdsadas', 'BRASILEIRO', 'Masculino', '1111-11-11', '2022-03-04', 'asdasdsa', 'asdsadsa', 'sadsadsaasd', 'dasdsadas', 'uploads/cooperados/a9c2c4263164a7535e5448cf12dbfcce.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado_carteira`
--

CREATE TABLE `associado_carteira` (
  `cod` int(11) NOT NULL,
  `associado_cod` int(11) NOT NULL,
  `data_inicial` date DEFAULT NULL,
  `data_validade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `associado_carteira`
--

INSERT INTO `associado_carteira` (`cod`, `associado_cod`, `data_inicial`, `data_validade`) VALUES
(2, 1, '2022-03-03', '2023-03-01'),
(3, 2, '2022-03-04', '2023-03-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado_contato`
--

CREATE TABLE `associado_contato` (
  `cod_contato` int(11) NOT NULL,
  `associado_cod` int(11) NOT NULL,
  `celular_1` varchar(20) DEFAULT NULL,
  `celular_2` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `associado_contato`
--

INSERT INTO `associado_contato` (`cod_contato`, `associado_cod`, `celular_1`, `celular_2`, `email`) VALUES
(3, 1, '', '', ''),
(4, 2, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado_endereco`
--

CREATE TABLE `associado_endereco` (
  `cod_endereco` int(11) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `associado_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `associado_endereco`
--

INSERT INTO `associado_endereco` (`cod_endereco`, `logradouro`, `numero`, `bairro`, `complemento`, `cidade`, `estado`, `cep`, `latitude`, `longitude`, `associado_cod`) VALUES
(3, '', '', '', '', 'Itaituba', 'PA', '', 'PA', 'PA', 1),
(4, '', '', '', '', 'Itaituba', 'PA', '', 'PA', 'PA', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado_historico`
--

CREATE TABLE `associado_historico` (
  `cod_historico` int(11) NOT NULL,
  `associado_cod` int(11) NOT NULL,
  `descricao_historico` text DEFAULT NULL,
  `data_historico` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado_mensalidade`
--

CREATE TABLE `associado_mensalidade` (
  `cod_mensalidade` int(11) NOT NULL,
  `associado_cod` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `janeiro` double UNSIGNED DEFAULT NULL,
  `fevereiro` double UNSIGNED DEFAULT NULL,
  `marco` double UNSIGNED DEFAULT NULL,
  `abril` double UNSIGNED DEFAULT NULL,
  `maio` double UNSIGNED DEFAULT NULL,
  `junho` double UNSIGNED DEFAULT NULL,
  `julho` double UNSIGNED DEFAULT NULL,
  `agosto` double UNSIGNED DEFAULT NULL,
  `setembro` double UNSIGNED DEFAULT NULL,
  `outubro` double UNSIGNED DEFAULT NULL,
  `novembro` double UNSIGNED DEFAULT NULL,
  `dezembro` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `associado_producao`
--

CREATE TABLE `associado_producao` (
  `cod_veiculo` int(11) NOT NULL,
  `associado_cod` int(11) NOT NULL,
  `produto` varchar(20) DEFAULT NULL,
  `area_da_producao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sig_cooperativa`
--

CREATE TABLE `sig_cooperativa` (
  `cod` int(11) NOT NULL,
  `nome_siglas` varchar(20) DEFAULT NULL,
  `nome_completo` varchar(200) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(11) DEFAULT NULL,
  `telefone` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url_site` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sig_cooperativa`
--

INSERT INTO `sig_cooperativa` (`cod`, `nome_siglas`, `nome_completo`, `cnpj`, `endereco`, `cep`, `telefone`, `email`, `url_site`) VALUES
(1, 'COOTAX', 'Cooperativa dos Taxistas de Itaituba', '08.223.742/0001-98', 'TRAVESSA JOÃO PESSOA, Nº 215, BAIRRO CENTRO - ITAITUBA - PARÁ - BRASIL - CEP: 68180-650', '68180-650', '(93) 3518-0254', 'cootax.itb@gmail.com', 'www.cootax.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sig_despesa`
--

CREATE TABLE `sig_despesa` (
  `cod` int(11) NOT NULL,
  `cod_cooperativa` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` double UNSIGNED NOT NULL,
  `data` date DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sig_despesa`
--

INSERT INTO `sig_despesa` (`cod`, `cod_cooperativa`, `descricao`, `valor`, `data`, `data_cadastro`) VALUES
(2, 1, '02sadsa', 200, '2022-03-02', '2022-03-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sig_investimento`
--

CREATE TABLE `sig_investimento` (
  `cod` int(11) NOT NULL,
  `cod_cooperativa` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` double UNSIGNED NOT NULL,
  `data` date DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sig_investimento`
--

INSERT INTO `sig_investimento` (`cod`, `cod_cooperativa`, `descricao`, `valor`, `data`, `data_cadastro`) VALUES
(2, 1, 'asdsadas', 50, '2022-03-02', '2022-03-03'),
(3, 1, '50000', 2000, '2022-03-02', '2022-03-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sig_lucro`
--

CREATE TABLE `sig_lucro` (
  `cod` int(11) NOT NULL,
  `cod_cooperativa` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` double UNSIGNED NOT NULL,
  `data` date DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sig_lucro`
--

INSERT INTO `sig_lucro` (`cod`, `cod_cooperativa`, `descricao`, `valor`, `data`, `data_cadastro`) VALUES
(2, 1, 'teasdas', 1000, '2022-03-03', '2022-03-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sig_usuario`
--

CREATE TABLE `sig_usuario` (
  `cod_usuario` int(11) NOT NULL,
  `cod_cooperativa` int(11) NOT NULL,
  `nome_usuario` varchar(20) NOT NULL,
  `sobrenome_usuario` varchar(100) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `email_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(32) NOT NULL,
  `cargo_usuario` varchar(45) NOT NULL,
  `genero_usuario` varchar(10) DEFAULT NULL,
  `nivel_acesso_usuario` int(1) UNSIGNED NOT NULL,
  `status_usuario` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `imagem_usuario` varchar(255) DEFAULT NULL,
  `data_cadastro_usuario` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sig_usuario`
--

INSERT INTO `sig_usuario` (`cod_usuario`, `cod_cooperativa`, `nome_usuario`, `sobrenome_usuario`, `usuario_usuario`, `email_usuario`, `senha_usuario`, `cargo_usuario`, `genero_usuario`, `nivel_acesso_usuario`, `status_usuario`, `imagem_usuario`, `data_cadastro_usuario`) VALUES
(6, 1, 'Usuário', 'Admin', 'admin', 'bugados01@gmail.com', 'c996d7b593437305e45bf727fc545b4a', 'Administrador', 'M', 4, 1, 'uploads/usuarios/user_masculino.png', '2018-04-05'),
(7, 1, 'Joab', 'Torres', 'joab.alencar', 'joabtorres1508@gmail.com', '47cafbff7d1c4463bbe7ba972a2b56e3', 'Participante', 'M', 3, 1, 'uploads/usuarios/28560b3bc12814e80a399460a94723f2.jpg', '2019-04-11');

--
-- Acionadores `sig_usuario`
--
DELIMITER $$
CREATE TRIGGER `tg_remove_usuario` BEFORE DELETE ON `sig_usuario` FOR EACH ROW BEGIN
DELETE FROM sig_cooperado_historico WHERE cod_usuario = OLD.cod_usuario;
END
$$
DELIMITER ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `associado`
--
ALTER TABLE `associado`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `associado_carteira`
--
ALTER TABLE `associado_carteira`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `associado_contato`
--
ALTER TABLE `associado_contato`
  ADD PRIMARY KEY (`cod_contato`);

--
-- Índices para tabela `associado_endereco`
--
ALTER TABLE `associado_endereco`
  ADD PRIMARY KEY (`cod_endereco`);

--
-- Índices para tabela `associado_historico`
--
ALTER TABLE `associado_historico`
  ADD PRIMARY KEY (`cod_historico`);

--
-- Índices para tabela `associado_mensalidade`
--
ALTER TABLE `associado_mensalidade`
  ADD PRIMARY KEY (`cod_mensalidade`);

--
-- Índices para tabela `associado_producao`
--
ALTER TABLE `associado_producao`
  ADD PRIMARY KEY (`cod_veiculo`);

--
-- Índices para tabela `sig_cooperativa`
--
ALTER TABLE `sig_cooperativa`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `sig_despesa`
--
ALTER TABLE `sig_despesa`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `sig_investimento`
--
ALTER TABLE `sig_investimento`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `sig_lucro`
--
ALTER TABLE `sig_lucro`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `sig_usuario`
--
ALTER TABLE `sig_usuario`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD UNIQUE KEY `usuario_usuario_UNIQUE` (`usuario_usuario`),
  ADD UNIQUE KEY `email_usuario_UNIQUE` (`email_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `associado`
--
ALTER TABLE `associado`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `associado_carteira`
--
ALTER TABLE `associado_carteira`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `associado_contato`
--
ALTER TABLE `associado_contato`
  MODIFY `cod_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `associado_endereco`
--
ALTER TABLE `associado_endereco`
  MODIFY `cod_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `associado_historico`
--
ALTER TABLE `associado_historico`
  MODIFY `cod_historico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `associado_mensalidade`
--
ALTER TABLE `associado_mensalidade`
  MODIFY `cod_mensalidade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `associado_producao`
--
ALTER TABLE `associado_producao`
  MODIFY `cod_veiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sig_cooperativa`
--
ALTER TABLE `sig_cooperativa`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sig_despesa`
--
ALTER TABLE `sig_despesa`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sig_investimento`
--
ALTER TABLE `sig_investimento`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sig_lucro`
--
ALTER TABLE `sig_lucro`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sig_usuario`
--
ALTER TABLE `sig_usuario`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
