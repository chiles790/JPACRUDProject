-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SuperBowls
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SuperBowls` ;

-- -----------------------------------------------------
-- Schema SuperBowls
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SuperBowls` DEFAULT CHARACTER SET utf8 ;
USE `SuperBowls` ;

-- -----------------------------------------------------
-- Table `SuperBowls`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperBowls` ;

CREATE TABLE IF NOT EXISTS `SuperBowls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `team1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS superbowluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'superbowluser'@'localhost' IDENTIFIED BY 'superbowluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'superbowluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `SuperBowls`
-- -----------------------------------------------------
START TRANSACTION;
USE `SuperBowls`;
INSERT INTO `SuperBowls` (`id`, `team1`) VALUES (1, 'Green Bay Packers');

COMMIT;

