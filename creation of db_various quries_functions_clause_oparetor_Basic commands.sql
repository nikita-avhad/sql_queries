CREATE DATABASE college;
USE college;
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101, "ANIL", 78,"C","PUNE"),
(102, "BHUMIKA", 93,"A","NASHIK"),
(103, "NIKITA", 96,"O","PUNE"),
(104, "NIKHIL", 99,"O","DELHI"),
(105, "CHETAN", 65,"D","DELHI"),
(106, "FARAH", 82,"B","MUMBAI");

SELECT name,marks FROM student;

SELECT * FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks>80;

SELECT * FROM student WHERE city="MUMBAI";

SELECT * FROM student WHERE city="MUMBAI" AND marks >80;

SELECT * FROM student WHERE marks+10 >100; 

SELECT * FROM student WHERE marks = 93;

SELECT * FROM student WHERE city="MUMBAI" or marks >80;

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("MUMBAI","DELHI");

SELECT * FROM student WHERE city NOT IN ("MUMBAI","DELHI");

SELECT * FROM student LIMIT 3;

SELECT * FROM student WHERE marks>80 LIMIT 3;

SELECT * FROM student ORDER BY city ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;

SELECT AVG(marks) from student;

SELECT MIN(marks) FROM student;

SELECT city FROM student GROUP BY city;

SELECT city, COUNT(name) FROM student GROUP BY city;