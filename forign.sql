CREATE DATABASE school;
USE school;
CREATE TABLE department(
id INT PRIMARY KEY,
name VARCHAR(20)
);
CREATE TABLE techer(
id INT PRIMARY KEY,
name VARCHAR(25),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(id)
);
