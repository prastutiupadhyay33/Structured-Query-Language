create database employeess;
use employeess;
CREATE TABLE Studentss (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    city VARCHAR(30),
    marks INT
);
INSERT INTO Studentss VALUES
(1, 'Amit', 20, 'Delhi', 85),
(2, 'Neha', 22, 'Mumbai', 90),
(3, 'Rahul', 21, 'Delhi', 75),
(4, 'Pooja', 23, 'Chennai', 88),
(5, 'Karan', 24, 'Pune', 70);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT);
INSERT INTO Courses VALUES
(101, 'DBMS', 1),
(102, 'Python', 2),
(103, 'Data Science', 4);

#Select statement
SELECT * FROM Studentss;

#Update statement
SET SQL_SAFE_UPDATES = 0;

UPDATE Studentss
SET marks = 95
WHERE name = 'Neha';

#Delete statement
DELETE FROM Studentss
WHERE student_id = 5;

#Sorting
SELECT name, marks
FROM Studentss
ORDER BY marks DESC;

#Sub query
SELECT name, marks
FROM Studentss
WHERE marks > (
    SELECT AVG(marks) FROM Studentss
);

#Joins
SELECT s.name, c.course_name
FROM Studentss s
INNER JOIN Courses c
ON s.student_id = c.student_id;

SELECT s.name, c.course_name
FROM Studentss s
LEFT JOIN Coursess c
ON s.student_id = c.student_id;

SELECT s.name, c.course_name
FROM Studentss s
RIGHT JOIN Courses c
ON s.student_id = c.student_id;

SELECT s.name, c.course_name
FROM Studentss s
LEFT JOIN Courses c
ON s.student_id = c.student_id
UNION
SELECT s.name, c.course_name
FROM Studentss s
RIGHT JOIN Courses c
ON s.student_id = c.student_id;