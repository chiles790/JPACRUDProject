-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema superbowls
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `superbowls` ;

-- -----------------------------------------------------
-- Schema superbowls
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `superbowls` DEFAULT CHARACTER SET utf8 ;
USE `superbowls` ;

-- -----------------------------------------------------
-- Table `superbowls`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `superbowls` ;

CREATE TABLE IF NOT EXISTS `superbowls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `winner` VARCHAR(45) NOT NULL,
  `winner_score` INT NOT NULL,
  `loser` VARCHAR(45) NOT NULL,
  `loser_score` INT NOT NULL,
  `mvp` VARCHAR(45) NOT NULL,
  `stadium` VARCHAR(45) NOT NULL,
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
-- Data for table `superbowls`
-- -----------------------------------------------------
START TRANSACTION;
USE `superbowls`;
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (34, 'St. Louis Rams', 23, 'Tennessee Titans', 16, 'Kurt Warner', 'Georgia Dome');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (35, 'Baltimore Ravens', 34, 'New York giants', 7, 'Ray Lewis', 'Raymond James Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (36, 'New England Patriots', 20, 'St. Louis Rams', 17, 'Tom Brady', 'Louisiana Superdome');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (37, 'Tampa Bay Buccaneers', 48, 'Oakland Raiders', 21, 'Dexter Jackson', 'Qualcomm Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (38, 'New England Patriots', 32, 'Carolina Panthers', 29, 'Tom Brady', 'Reliant Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (39, 'New England Patriots', 24, 'Philadelphia Eagles', 21, 'Deion Branch', 'Alltel Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (40, 'Pittsburgh Steelers', 21, 'Seattle Seahawks', 10, 'Hines Ward', 'Ford Field');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (41, 'Indianapolis Colts', 29, 'Chicago Bears', 17, 'Peyton Manning', 'Dolphin Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (42, 'New York Giants', 17, 'New England Patriots', 14, 'Eli Manning', 'University of Pheonix Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (43, 'Pittsburgh Steelers', 27, 'Arizona Cardinals', 23, 'Santonio Holmes', 'Raymond James STadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (44, 'New Orleans Saints', 31, 'Indianapolis Colts', 17, 'Drew Brees', 'Sun Life Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (45, 'Green Bay Packers', 31, 'Pittsburgh Steelers', 25, 'Aaron Rodgers', 'Cowboys Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (46, 'New York Giants', 21, 'New England Patriots', 17, 'Eli Manning', 'Lucas Oil Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (47, 'Baltimore Ravens', 34, 'San Francisco 49ers', 31, 'Joe Flacco', 'Mercedes-Benz Superdome');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (48, 'Seattle Seahawks', 43, 'Denver Broncos', 8, 'Malcolm Smith', 'Metlife Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (49, 'New England Patriots', 28, 'Seattle Seahawks', 24, 'Tom Brady', 'University of Phoenix Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (50, 'Denver Broncos', 24, 'Carolina Panthers', 10, 'Von  Miller', 'Levi\'s Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (51, 'New England Patriots', 34, 'Atlanta Falcons', 28, 'Tom Brady', 'NRG Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (52, 'Philadelphia Eagles', 41, 'New England Patriots', 33, 'Nick Foles', 'U.S Bank Stadium');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (53, 'New England Patriots', 13, 'Los Angeles Rams', 3, 'Julian Edelman', 'Mercedes-Benz Superdome');
INSERT INTO `superbowls` (`id`, `winner`, `winner_score`, `loser`, `loser_score`, `mvp`, `stadium`) VALUES (54, 'Kansas City Chiefs', 31, 'San Francisco 49ers', 20, 'Patrick Mahomes', 'Hard Rock Stadium');

COMMIT;

