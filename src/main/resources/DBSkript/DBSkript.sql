DROP DATABASE IF EXISTS `tpdb`;

CREATE DATABASE IF NOT EXISTS `tpdb`;

USE `tpdb`;

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users`
(`userId`   INT(5) UNSIGNED    NOT NULL AUTO_INCREMENT,
 `userName` VARCHAR(45) UNIQUE NOT NULL,
  PRIMARY KEY (`userId`)
);

DROP TABLE IF EXISTS `Messages`;
CREATE TABLE `Messages`
(`messageId` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
 `message`   VARCHAR(45)     NOT NULL,
 `userId`    INT(5) UNSIGNED NOT NULL,
 `dateTime`  DATETIME        NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`messageId`),
  FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
);