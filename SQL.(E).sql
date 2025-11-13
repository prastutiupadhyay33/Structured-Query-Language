create database library_1;
use library_1;
CREATE TABLE library1 (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(250) UNIQUE NOT NULL,
    author VARCHAR(50),
    price INT CHECK (price <= 1500)
);
INSERT INTO library1 (book_id,title, author) VALUES (1,'A Suitable Boy', 'Vikram Seth');
insert into library1 values(2,'The Glass Palace', 'Amitav Ghosh', 1100);
insert into library1 values (3,'1984', 'George Orwell', 400);
insert into library1 values (4,'In Custody', 'Anita Desai', 700);
SELECT * FROM library1 WHERE price > 1000;
SELECT * FROM library1 WHERE author = 'R.K. Narayan' OR price < 500;
SELECT DISTINCT author FROM Library1;
SELECT * FROM library1 WHERE price IS NOT NULL ORDER BY price DESC LIMIT 4;
SELECT * FROM library1 WHERE price BETWEEN 400 AND 1000 ORDER BY price;
SELECT author, COUNT(*) AS book_count FROM library1 GROUP BY author;
SELECT * FROM library1 WHERE price = (SELECT MIN(price) FROM library1 WHERE price IS NOT NULL);
drop table library1;