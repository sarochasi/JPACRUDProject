-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tallestmountaindb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tallestmountaindb` ;

-- -----------------------------------------------------
-- Schema tallestmountaindb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tallestmountaindb` DEFAULT CHARACTER SET utf8 ;
USE `tallestmountaindb` ;

-- -----------------------------------------------------
-- Table `tallest_mountain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tallest_mountain` ;

CREATE TABLE IF NOT EXISTS `tallest_mountain` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  `image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS tallestmountainuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'tallestmountainuser'@'localhost' IDENTIFIED BY 'tallestmountainuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'tallestmountainuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
