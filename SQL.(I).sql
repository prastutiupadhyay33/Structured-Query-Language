create database flower_6;
use flower_6;
CREATE TABLE Flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(60) NOT NULL,
    source_1 VARCHAR(20),
    destination VARCHAR(20),
    fare INT CHECK (fare <= 30000)
);
INSERT INTO Flights (flight_id,airline, source_1, destination) VALUES (1,'Airlines', 'Amritsar', 'China');
insert into Flights values(2,'AirIndia', 'Jaipur', 'Nepal', 10000);
insert into Flights values(3,'IndiGo', 'Goa', 'Bengal', 4600);
SELECT * FROM Flights WHERE fare > 12000;
SELECT * FROM Flights WHERE source_1 = 'Dehradun' OR fare < 5000;
SELECT DISTINCT airline FROM Flights;
SELECT * FROM Flights WHERE fare IS NOT NULL ORDER BY fare DESC LIMIT 4;
SELECT * FROM Flights WHERE fare BETWEEN 8000 AND 15000 ORDER BY fare ASC;
SELECT source_1, COUNT(*) AS flights_count FROM Flights GROUP BY source_2;
SELECT * FROM Flights WHERE fare = (SELECT MAX(fare) FROM Flights);
DROP TABLE IF EXISTS Flights;