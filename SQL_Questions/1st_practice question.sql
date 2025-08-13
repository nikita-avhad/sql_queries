CREATE DATABASE XYZ_company;
USE XYZ_company;
CREATE TABLE employee_info(
id INT primary key,
 name varchar(50),
 salary float
 );
 INSERT INTO employee_info
 (id,name,salary)
 VALUES
 (1,"adam",25000),
 (2 , "bob" , 30000),
 (3 , "casey" , 40000);
 
 SELECT * FROM employee_info;
 