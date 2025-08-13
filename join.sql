CREATE DATABASE nikita;
USE nikita;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50));
 INSERT INTO student
 (id , name)
 VALUES
 (101,"ADAM"),
 (102 ,"BOB"),
 (103 ,"CASEY");
 
 CREATE TABLE course(
 id INT PRIMARY KEY,
 course VARCHAR(50)
 );
 
 INSERT INTO course
 (id, course)
 VALUES
 (102, "ENGLISH"),
 (105, "MATH"),
 (103, "SCIRNCE"),
 (107, "COMPUTER SCIENCE");
 
 SELECT *
 FROM student
 INNER JOIN course
 ON student.id=course.id;
 
 SELECT *
 FROM student
 LEFT JOIN course
 ON student.id=course.id;
 
 SELECT *
 FROM student
 RIGHT JOIN course
 ON student.id=course.id;
 
 SELECT *
 FROM student
 LEFT JOIN course
 ON student.id=course.id
 UNION
 SELECT *
 FROM student
 RIGHT JOIN course
 ON student.id=course.id;
 
 SELECT *
 FROM student
 LEFT JOIN course
 ON student.id=course.id
 WHERE course.id IS NULL;
 
 SELECT *
 FROM student
 RIGHT JOIN course
 ON student.id=course.id
 WHERE student.id IS NULL;
 
 CREATE TABLE employee(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 maneger_id INT);
 
 INSERT INTO employee
 (id , name,maneger_id)
 VALUES
 (101,"ADAM",103),
 (102,"BOB",104),
 (103, "CASEY",NULL),
 (104,"DONALD",103);
 
 SELECT a.name as maneger_name, b.name
 FROM employee as a
 JOIN employee as b
 ON a.id = b.maneger_id;