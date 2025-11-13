create database bank_gungun;
use bank_gungun;
CREATE TABLE BankAccount(
    acc_id INT AUTO_INCREMENT PRIMARY KEY,
    holder_name VARCHAR(235) NOT NULL,
    branch VARCHAR(30),
    balance INT CHECK (balance >= 1000)
);
INSERT INTO BankAccount (holder_name, branch, balance) VALUES
('Anuj', 'Bareilly', 20000),
('Pawan', 'Bareilly', 2000),  
('Udit', 'Dehradun', 10000);
SELECT * FROM BankAccount WHERE balance > 27000;
SELECT * FROM BankAccount WHERE branch = 'Bareilly' OR balance < 5000;
SELECT DISTINCT branch FROM BankAccount;
SELECT * FROM BankAccount ORDER BY balance DESC LIMIT 3;
SELECT * FROM BankAccount 
WHERE balance BETWEEN 10000 AND 30000 ORDER BY balance;
SELECT branch, COUNT(*) AS account_count FROM BankAccount GROUP BY branch;
SELECT * FROM BankAccount WHERE balance = (SELECT MIN(balance) FROM BankAccount);
DROP TABLE IF EXISTS BankAccount;