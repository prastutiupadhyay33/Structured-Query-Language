create database hospital;
use hospital;
create table hospital_with2(
patient_id  int primary key auto_increment,
patient_name  varchar(50) not null,
disease varchar(30),
bill_amount int check (bill_amount<=50000)
);
 insert into hospital_with2(patient_id,patient_name,disease) VALUES(1,'Emma', 'Fever');
insert into hospital_with2 values (2,'Olivia', 'cancer', 60000);
insert into hospital_with2 values (3,'Amelia', 'brain tumer', 50000);
 SELECT * FROM hospital_with2 WHERE bill_amount > 50000;
 SELECT * FROM hospital_with2  WHERE disease = 'Fever' OR bill_amount < 10000;
 SELECT DISTINCT disease FROM hospital_with1;
 SELECT * FROM hospital_with2 ORDER BY bill_amount DESC LIMIT 4;
 SELECT * FROM hospital_with2 WHERE bill_amount BETWEEN 20000 AND 80000 ORDER BY bill_amount ASC;
 SELECT disease, COUNT(*) as patient_count FROM hospital_with1 GROUP BY disease;
 SELECT * FROM hospital_with WHERE bill_amount = (SELECT MIN(bill_amount) FROM hospital_with1);
 DROP TABLE hospital_with2;