CREATE TABLE `cliente` (
  `id_cliente` int PRIMARY KEY AUTO_INCREMENT,
  `cpf` varchar(11) UNIQUE NOT NULL,
  `nome_social` varchar(250),
  `rg` varchar(9),
  `dt_nascimento` date NOT NULL,
  `email` varchar(100) UNIQUE NOT NULL,
  `senha` varchar(30) NOT NULL,
  `genero` char
);

CREATE TABLE `telefone_cliente` (
  `id_telefone` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_cliente` int,
  `nr_ddi` numeric(3),
  `nr_ddd` numeric(3),
  `nr_telefone` numeric(10),
  `tp_telefone` varchar(20),
  `st_telefone` varchar(15)
);

CREATE TABLE `endereco_cliente` (
  `id_end` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_cliente` int,
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

CREATE TABLE `produto` (
  `id_produto` int PRIMARY KEY AUTO_INCREMENT,
  `cd_produto` int,
  `nm_produto` varchar(100),
  `ds_produto` varchar(100),
  `qt_estoque` int,
  `vl_unitario` numeric
);

CREATE TABLE `pedido` (
  `id_pedido` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_cliente` int,
  `fk_id_produto` int,
  `nr_pedido` int,
  `dt_pedido` date,
  `vl_pedido` numeric
);

CREATE TABLE `forma_pagamento` (
  `id_forma_pgto` int PRIMARY KEY AUTO_INCREMENT,
  `nm_forma_pgto` varchar(60),
  `ds_forma_pgto` varchar(255),
  `st_forma_pgto` char(9)
);

ALTER TABLE `telefone_cliente` ADD FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`);

ALTER TABLE `endereco_cliente` ADD FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`fk_id_produto`) REFERENCES `produto` (`id_produto`);
