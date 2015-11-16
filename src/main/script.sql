set names utf8;
CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
CREATE TABLE `test`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(45) NOT NULL COMMENT '',
  `age` INT NOT NULL COMMENT '',
  `isAdmin` TINYINT(1) NOT NULL COMMENT '',
  `createdDate` DATETIME not NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  UNIQUE INDEX `id_UNIQUE` (`id` ASC)  COMMENT '');
  INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Євген', '22', '1');
  INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Юля', '23', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Антоніна', '42', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Олег', '18', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Карп', '65', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Тетяна', '35', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Жанна', '43', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Дмитро', '25', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Лілія', '19', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Вадим', '37', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Антон', '14', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Зінаїда', '47', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Ігор', '19', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Катерина', '31', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Роман', '28', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Ольга', '23', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Наталя', '29', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Сергій', '30', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Юлія', '24', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Богдан', '21', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Олексій', '27', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Каміла', '11', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Наталія', '26', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Арсен', '37', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Надія', '28', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Захар', '9', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Ірина', '20', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Леся', '33', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Анна', '19', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Світлана', '57', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Соломія', '29', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Віктор', '43', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Олена', '40', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Анатолій', '58', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Лариса', '39', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Борис', '28', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Ілля', '45', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Руслан', '31', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Дарина', '37', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Микита', '28', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Софія', '36', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Каріна', '28', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Єгор', '32', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Петро', '52', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Віталій', '45', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Марія', '26', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Федір', '46', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Валентина', '57', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Денис', '35', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Олександр', '24', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Степан', '36', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Михайло', '29', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Марина', '29', '1');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Алла', '41', '0');
INSERT INTO `test`.`user` (`name`, `age`, `isAdmin`) VALUES ('Леонід', '44', '1');
  