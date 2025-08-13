CREATE DATABASE LIBRARY;
USE LIBRARY;

CREATE TABLE empolyee(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
city VARCHAR(50));

INSERT INTO empolyee
(rollno, name,marks,city)
VALUES
(101,"ANIL",78,"pune"),
(102,"BHUMIKA",93,"Mumbai"),
(103,"CHETAN",85,"Mumbai"),
(104,"DHRUV",96,"Mumbai"),
(105,"EMANUEL", 92,"Delhi"),
(106,"FARAN",82,"Delhi");

SELECT * FROM empolyee;

SELECT name, marks
FROM empolyee 
WHERE MARKS > (SELECT AVG(marks)
FROM empolyee);

SELECT name ,rollno
FROM empolyee
WHERE rollno IN(SELECT rollno
from empolyee
WHERE rollno%2=0);

SELECT MAX (marks)
FROM (SELECT * FROM empolyee
WHERE city = "DELHI");