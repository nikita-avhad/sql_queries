CREATE DATABASE data1;
USE data1;

create table student(
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
(103, "NIKITA", 96,"A","PUNE"),
(104, "NIKHIL", 99,"A","DELHI"),
(105, "CHETAN", 65,"D","DELHI"),
(106, "FARAH", 82,"B","MUMBAI");

SELECT * FROM student;

SET SQL_SAFE_UPDATES=0;

UPDATE student 
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 85
WHERE rollno = 105;

UPDATE student
SET marks=marks+1;

DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN age ;

ALTER TABLE student
RENAME TO college_students;

SELECT * FROM college_students;