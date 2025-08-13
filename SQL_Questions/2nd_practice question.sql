CREATE DATABASE college1;
USE college1;
CREATE TABLE student1 (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student1
(rollno,name,marks,grade,city)
VALUES
(101, "ANIL", 78,"C","PUNE"),
(102, "BHUMIKA", 93,"A","NASHIK"),
(103, "NIKITA", 96,"O","PUNE"),
(104, "NIKHIL", 99,"O","DELHI"),
(105, "CHETAN", 65,"D","DELHI"),
(106, "FARAH", 82,"B","MUMBAI");

SELECT * FROM student1;

SELECT city, AVG(marks) FROM student1 GROUP BY city ORDER BY city ASC;
   \