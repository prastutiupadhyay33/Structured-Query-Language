create database order_org;
use order_org;
CREATE TABLE Electronics(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(205) NOT NULL,
    product VARCHAR(30),
    amount INT CHECK (amount <= 40000)
);
INSERT INTO Electronics (order_id,customer_name, product) VALUES(2,'John', 'Television');
insert into Electronics values (8,'Amiee', 'Earbudes', 25000);
insert into Electronics values (10,'Rufus', 'Camera', 36000);
SELECT * FROM Electronics WHERE amount > 20000;
SELECT * FROM Electronics WHERE product = 'Television' OR amount < 4000;
SELECT DISTINCT product FROM Electronics;
SELECT * FROM Electronics ORDER BY amount DESC LIMIT 4;
SELECT * FROM Electronics WHERE amount BETWEEN 6000 AND 35000 ORDER BY amount ASC;
SELECT product, COUNT(*) as order_count FROM Orders GROUP BY product;
SELECT * FROM Electronics WHERE amount = (SELECT MAX(amount) FROM Electronics);
DROP TABLE Electronics;