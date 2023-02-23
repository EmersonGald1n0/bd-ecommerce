CREATE TABLE `cliente` (
  `id_cliente` int PRIMARY KEY AUTO_INCREMENT,
  `cpf` varchar(11),
  `nome_social` varchar(250),
  `rg` varchar(9),
  `dt_nascimento` date,
  `genero` char
);

CREATE TABLE `login` (
  `id_login` int PRIMARY KEY AUTO_INCREMENT,
  `username` char,
  `cpf` varchar(11),
  `senha` char
);

CREATE TABLE `telefone_cliente` (
  `id_telefone` int PRIMARY KEY AUTO_INCREMENT,
  `nr_ddi` numeric(3),
  `nr_ddd` numeric(3),
  `nr_telefone` numeric(10),
  `tp_telefone` varchar(20),
  `st_telefone` varchar(15)
);

CREATE TABLE `email_cliente` (
  `id_email` int PRIMARY KEY AUTO_INCREMENT,
  `ds_email` varchar(100),
  `tipo_email` varchar(20),
  `st_email` varchar(15)
);

CREATE TABLE `endereco_cliente` (
  `id_end` int PRIMARY KEY AUTO_INCREMENT,
  `cep` char,
  `logradouro` varchar(255),
  `bairro` varchar(255),
  `numero` int,
  `cidade` varchar(60),
  `estado` varchar(60),
  `uf` char(2),
  `complemento` varchar(60),
  `p_referencia` varchar(60)
);

CREATE TABLE `plano_saude` (
  `id_plano` int PRIMARY KEY AUTO_INCREMENT,
  `nome_plano` varchar(60),
  `cnpj` int(14),
  `numero_plano` int,
  `telefone` int,
  `dt_inicio` date,
  `dt_fim` date
);

CREATE TABLE `produto` (
  `id_produto` int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE `pedido` (
  `id_pedido` int PRIMARY KEY AUTO_INCREMENT,
  `num_pedido` int
);

CREATE TABLE `forma_pagamento` (
  `id_fpagamento` int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE `carrinho` (
  `id_carrinho` int PRIMARY KEY AUTO_INCREMENT
);
