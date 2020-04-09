create database employeesdb;
CREATE TABLE `employeesdb`.`employees` (
  `employee_id` INT NOT NULL auto_increment,
  `name` NVARCHAR(150) NOT NULL,
  `age` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `phonenumber` INT NOT NULL,
  `address` NVARCHAR(150) NOT NULL,
  PRIMARY KEY (`employee_id`));
  
