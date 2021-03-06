-- MySQL Script generated by MySQL Workbench
-- 02/16/18 16:14:31
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema xl_loja
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema xl_loja
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `xl_loja` DEFAULT CHARACTER SET utf8 ;
USE `xl_loja` ;

-- -----------------------------------------------------
-- Table `xl_loja`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xl_loja`.`inventario` (
  `id_inventario` INT(45) NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `carrier_plan_type` VARCHAR(3) NULL,
  `quantity` INT(45) NULL,
  `price` FLOAT(9,2) NULL,
  `insert_date` DATE NULL,
  PRIMARY KEY (`id_inventario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- View ultimo_inventario
-- -----------------------------------------------------
CREATE VIEW ultimo_inventario AS
SELECT * FROM xl_loja.inventario 
WHERE insert_date = (SELECT MAX(insert_date) FROM xl_loja.inventario);