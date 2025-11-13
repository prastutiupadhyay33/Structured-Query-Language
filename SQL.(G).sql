create database cinema_2;
use cinema_2;
CREATE TABLE Cinema (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(245) UNIQUE NOT NULL,
    language VARCHAR(20),
    rating INT CHECK (rating <= 10)
);
INSERT INTO Cinema ( movie_id,movie_name, language) VALUES(1,'Our Secret', 'Chinese');
insert into Cinema values (2,'Wednesday', 'English', 7);
insert into Cinema values (3,'RaOne','Hindi', 6);
SELECT * FROM Cinema WHERE rating > 7;
SELECT * FROM Cinema WHERE language = 'Hindi' OR rating < 5;
SELECT DISTINCT language FROM Cinema;
SELECT * FROM Cinema WHERE rating IS NOT NULL ORDER BY rating DESC limit 4;
SELECT * FROM Cinema WHERE rating BETWEEN 7 AND 11 ORDER BY rating;
SELECT language, COUNT(*) as movie_count FROM Cinema GROUP BY language;
SELECT * FROM Cinema WHERE rating = (SELECT MAX(rating) FROM Cinema);
drop table Cinema;