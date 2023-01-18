-- MySQL Script generated by MySQL Workbench
-- seg 16 jan 2023 19:15:17
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`estado` (
  `cod_estado` INT NOT NULL,
  `estado` VARCHAR(45) NULL,
  `sigla_estado` VARCHAR(2) NULL,
  PRIMARY KEY (`cod_estado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `cod_cliente` INT NOT NULL,
  `sexo` INT NULL,
  `idade` INT NULL,
  `qtd_filhos` INT NULL,
  `estado_civil` INT NULL,
  `cod_estado` INT NOT NULL,
  `hipertenso` INT NULL,
  `diabetico` INT NULL,
  PRIMARY KEY (`cod_cliente`, `cod_estado`),
  INDEX `fk_cliente_estado1_idx` (`cod_estado` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_estado1`
    FOREIGN KEY (`cod_estado`)
    REFERENCES `mydb`.`estado` (`cod_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produto` (
  `cod_produto` INT NOT NULL,
  `produto` VARCHAR(45) NULL,
  `cod_classe_produto` INT NULL,
  `classe_produto` VARCHAR(100) NULL,
  `valor` DECIMAL(10,2) NULL,
  PRIMARY KEY (`cod_produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compra` (
  `cod_cliente` INT NOT NULL,
  `cod_produto` INT NOT NULL,
  `qtd_produto` INT NULL,
  `valor_unitario` DECIMAL(10,2) NULL,
  `valor_total_compra` INT NULL,
  PRIMARY KEY (`cod_cliente`, `cod_produto`),
  INDEX `fk_compra_produto1_idx` (`cod_produto` ASC) VISIBLE,
  CONSTRAINT `fk_compra_cliente`
    FOREIGN KEY (`cod_cliente`)
    REFERENCES `mydb`.`cliente` (`cod_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_produto1`
    FOREIGN KEY (`cod_produto`)
    REFERENCES `mydb`.`produto` (`cod_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
