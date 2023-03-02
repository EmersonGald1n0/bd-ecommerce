CREATE SCHEMA `bdfarmacia` DEFAULT CHARACTER SET utf8 ;
USE `bdfarmacia` ;


CREATE TABLE  `bdfarmacia`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome_social` VARCHAR(250) NOT NULL,
  `idade` INT NOT NULL,
  `cpf` VARCHAR(12) NOT NULL,
  `rg` VARCHAR(9) NOT NULL,
  `dt_nascimento` DATE NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `genero` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `rg_UNIQUE` (`rg` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;



CREATE TABLE `bdfarmacia`.`telefone_cliente` (
  `id_telefone` INT NOT NULL AUTO_INCREMENT,
  `nr_ddi` CHAR(3) NOT NULL,
  `nr_ddd` CHAR(3) NOT NULL,
  `nr_telefone` CHAR(10) NOT NULL,
  `tp_telefone` VARCHAR(20) NOT NULL,
  `st_telefone` VARCHAR(15) NOT NULL,
  `cliente_id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_telefone`),
  INDEX `fk_telefone_cliente_cliente1_idx` (`cliente_id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_telefone_cliente_cliente1`
    FOREIGN KEY (`cliente_id_cliente`)
    REFERENCES `bdfarmacia`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `bdfarmacia`.`endereco_cliente` (
  `id_end` INT NOT NULL AUTO_INCREMENT,
  `cep` CHAR(8) NOT NULL,
  `logradouro` VARCHAR(80) NOT NULL,
  `bairro` VARCHAR(60) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `numero` CHAR(10) NULL,
  `p_referencia` VARCHAR(45) NULL,
  `cliente_id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_end`),
  INDEX `fk_endereco_cliente_cliente1_idx` (`cliente_id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_endereco_cliente_cliente1`
    FOREIGN KEY (`cliente_id_cliente`)
    REFERENCES `bdfarmacia`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `bdfarmacia`.`produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `cd_produto` VARCHAR(45) NOT NULL,
  `nm_produto` VARCHAR(255) NOT NULL,
  `qt_estoque` INT NOT NULL,
  `vl_unitario` DECIMAL(10,2) NOT NULL,
  `ds_produto` VARCHAR(45) NULL,
  PRIMARY KEY (`id_produto`),
  UNIQUE INDEX `cd_produto_UNIQUE` (`cd_produto` ASC) VISIBLE)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `bdfarmacia`.`pedido` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `nr_pedido` VARCHAR(45) NOT NULL,
  `dt_pedido` DATE NOT NULL,
  `vl_pedido` DECIMAL(10,2) NOT NULL,
  `vl_frete` DECIMAL(10,2) NOT NULL,
  `end_entrega` VARCHAR(45) NOT NULL,
  `cliente_id_cliente` INT NOT NULL,
  `endereco_cliente_id_end` INT NOT NULL,
  PRIMARY KEY (`id_pedido`),
  UNIQUE INDEX `nr_pedido_UNIQUE` (`nr_pedido` ASC) VISIBLE,
  INDEX `fk_pedido_cliente1_idx` (`cliente_id_cliente` ASC) VISIBLE,
  INDEX `fk_pedido_endereco_cliente1_idx` (`endereco_cliente_id_end` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`cliente_id_cliente`)
    REFERENCES `bdfarmacia`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_endereco_cliente1`
    FOREIGN KEY (`endereco_cliente_id_end`)
    REFERENCES `bdfarmacia`.`endereco_cliente` (`id_end`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `bdfarmacia`.`forma_pagamento` (
  `id_forma_pgto` INT NOT NULL AUTO_INCREMENT,
  `nm_forma_pgto` TEXT NOT NULL,
  `ds_forma_pgto` VARCHAR(45) NOT NULL,
  `pedido_id_pedido` INT NOT NULL,
  `cliente_id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_forma_pgto`),
  INDEX `fk_forma_pagamento_pedido1_idx` (`pedido_id_pedido` ASC) VISIBLE,
  INDEX `fk_forma_pagamento_cliente1_idx` (`cliente_id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_forma_pagamento_pedido1`
    FOREIGN KEY (`pedido_id_pedido`)
    REFERENCES `bdfarmacia`.`pedido` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_forma_pagamento_cliente1`
    FOREIGN KEY (`cliente_id_cliente`)
    REFERENCES `bdfarmacia`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `bdfarmacia`.`pedido_produto` (
  `pedido_id_pedido` INT NOT NULL,
  `produto_id_produto` INT NOT NULL,
  PRIMARY KEY (`pedido_id_pedido`, `produto_id_produto`),
  INDEX `fk_pedido_has_produto_produto1_idx` (`produto_id_produto` ASC) VISIBLE,
  INDEX `fk_pedido_has_produto_pedido1_idx` (`pedido_id_pedido` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_has_produto_pedido1`
    FOREIGN KEY (`pedido_id_pedido`)
    REFERENCES `bdfarmacia`.`pedido` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_has_produto_produto1`
    FOREIGN KEY (`produto_id_produto`)
    REFERENCES `bdfarmacia`.`produto` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
