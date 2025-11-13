create database minee_table;
use minee_table;
CREATE TABLE Company(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(20),
    salary INT DEFAULT 20000 CHECK (salary >= 20000)
);
insert into Company (emp_id,emp_name,department) values (04,'anish','google apple');
insert into Company values(05,'avni','apple',20000);
insert into Company values(06,'avantikaa','google',30000);
select*from company;
select salary from Company where salary>=5000;
select emp_name from Company where department="apple"and salary<30000;
select distinct department from Company;
select emp_name from Company order by salary desc limit 5;
select emp_name from Company where salary between 25000 and 60000;
SELECT department, count(*) from Company group by department;
select emp_name,salary,department from Company order by salary desc limit 4;
drop table Company;


