CREATE DATABASE mycompany;

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee
(employee_id int PRIMARY KEY,
employee_name varchar(30),
employee_city varchar(20));


DROP TABLE IF EXISTS Department;
CREATE TABLE Department
(department_id int PRIMARY KEY,
department_name varchar(30),
employee_id int,
FOREIGN KEY (employee_id) REFERENCES Employee(employee_id));

DROP TABLE IF EXISTS Project;
CREATE TABLE Project
(project_id int PRIMARY KEY,
project_name varchar(30),
project_start_year varchar(30),
department_id int,
employee_id int,
FOREIGN KEY (department_id) REFERENCES Department(department_id),
FOREIGN KEY (employee_id) REFERENCES Employee(employee_id));



INSERT INTO `mycompany`.`employee` (`employee_id`, `employee_name`, `employee_city`) VALUES ('101', 'Nuray', 'UK');
INSERT INTO `mycompany`.`employee` (`employee_id`, `employee_name`, `employee_city`) VALUES ('102', 'Lana', 'Arizona');
INSERT INTO `mycompany`.`employee` (`employee_id`, `employee_name`, `employee_city`) VALUES ('103', 'Anvar', 'USA');
INSERT INTO `mycompany`.`employee` (`employee_id`, `employee_name`, `employee_city`) VALUES ('104', 'Amena', 'New York');
INSERT INTO `mycompany`.`employee` (`employee_id`, `employee_name`, `employee_city`) VALUES ('105', 'Burak', 'Chicago');

INSERT INTO `mycompany`.`department` (`department_id`, `department_name`, `employee_id`) VALUES ('201', 'Automation', '105');
INSERT INTO `mycompany`.`department` (`department_id`, `department_name`, `employee_id`) VALUES ('202', 'Cyber Security', '102');
INSERT INTO `mycompany`.`department` (`department_id`, `department_name`, `employee_id`) VALUES ('203', 'Data Science', '104');
INSERT INTO `mycompany`.`department` (`department_id`, `department_name`, `employee_id`) VALUES ('204', 'Ethical Hacking', '102');
INSERT INTO `mycompany`.`department` (`department_id`, `department_name`, `employee_id`) VALUES ('205', 'Android', '102');
INSERT INTO `mycompany`.`department` (`department_id`, `department_name`, `employee_id`) VALUES ('206', 'iOS', '101');

INSERT INTO `mycompany`.`project` (`project_id`, `project_name`, `project_start_year`, `department_id`, `employee_id`) VALUES ('301', 'Sprint Automation', '2016', '201', '102');
INSERT INTO `mycompany`.`project` (`project_id`, `project_name`, `project_start_year`, `department_id`, `employee_id`) VALUES ('302', 'Tiktok', '2017', '205', '103');
INSERT INTO `mycompany`.`project` (`project_id`, `project_name`, `project_start_year`, `department_id`, `employee_id`) VALUES ('303', 'Uber ', '2019', '203', '101');
INSERT INTO `mycompany`.`project` (`project_id`, `project_name`, `project_start_year`, `department_id`, `employee_id`) VALUES ('304', 'KFC', '2016', '204', '102');


ALTER TABLE employee ADD manager_id int;

UPDATE `mycompany`.`employee` SET `manager_id` = '103' WHERE (`employee_id` = '102');
UPDATE `mycompany`.`employee` SET `manager_id` = '105' WHERE (`employee_id` = '103');
UPDATE `mycompany`.`employee` SET `manager_id` = '101' WHERE (`employee_id` = '104');
UPDATE `mycompany`.`employee` SET `manager_id` = '101' WHERE (`employee_id` = '105');




