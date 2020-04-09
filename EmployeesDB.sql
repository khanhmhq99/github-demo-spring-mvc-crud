create database employeesdb;
CREATE TABLE `employeesdb`.`employee` (
  `id` long NOT NULL auto_increment,
  `name` NVARCHAR(150) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` NVARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`));
  
