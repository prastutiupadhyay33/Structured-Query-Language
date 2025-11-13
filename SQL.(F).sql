create database teacher_1;
use teacher_1;
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(255) NOT NULL,
    subject VARCHAR(30),
    salary INT CHECK (salary <= 80000)
);
INSERT INTO Teachers ( teacher_id,teacher_name, subject) VALUES(2,'Priya Singh', 'History');
insert into Teachers values (3,'Ritesh Chabra', 'Geography', 60000);
insert into Teachers values (4,'Preeti Kulsi', 'Hindi', 25000);
SELECT * FROM Teachers WHERE salary > 50000;
SELECT * FROM Teachers WHERE subject = 'Chemistry' OR salary < 30000;
SELECT DISTINCT subject FROM Teachers;
SELECT * FROM Teachers WHERE salary = (SELECT MAX(salary) FROM Teachers) LIMIT 2;
SELECT * FROM Teachers WHERE salary BETWEEN 20000 AND 70000 ORDER BY salary ASC;
SELECT subject, COUNT(*) AS teacher_count FROM Teachers GROUP BY subject;
SELECT * FROM Teachers WHERE salary = (SELECT MIN(salary) FROM Teachers WHERE salary IS NOT NULL) LIMIT 2;
drop table Teachers;

