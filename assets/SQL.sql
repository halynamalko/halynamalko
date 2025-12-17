create Database HotelsDB;
use HotelsDB;

CREATE TABLE Cities
(
cityID int primary key not null auto_increment,
cityName varchar(20)
)

CREATE TABLE HOTELS
(
hotelID  int primary key not null auto_increment,
hotelName varchar(20),
starsCounts int not null,
creationDate date,
cityId int,
foreign key (cityId) references Cities (cityID)
)

CREATE TABLE Rooms
(
roomID int primary key not null auto_increment,
comfortLevel varchar(20),
hotelID int,
foreign key (hotelID) references Hotels(hotelID)
)

CREATE TABLE Clients
(
clientID int primary key not null auto_increment,
clientName varchar(50),
clientNumber long
)

citiescitiescitiescitiesCreate table Orders
(
orderID int primary key not null auto_increment,
clientID int,
roomId int,
foreign key (clientID) references Clients(clientID),
foreign key (roomId) references Rooms(roomID)
)

SELECT * FROM clients

SELECT clientName, clientNumber  FROM clients

SELECT clientName, clientNumber  FROM clients WHERE clientName = 'Ivan'

SELECT clientName, clientNumber  FROM clients WHERE clientName LIKE 'V%'

SELECT clientName, clientNumber  FROM clients WHERE clientName LIKE '%a'

SELECT clientName, clientNumber  FROM clients WHERE clientName LIKE '%ii%'

SELECT clientName, clientNumber  FROM clients WHERE clientNumber LIKE '%78%'

SELECT clientName, clientNumber  FROM clients WHERE clientNumber > 1

SELECT clientName, clientNumber  FROM clients WHERE clientNumber < 8901235  AND clientNumber > 456789

SELECT clientName, clientNumber  FROM clients WHERE clientNumber = 8901235 OR clientNumber = 456789

SELECT clientName, clientNumber  FROM clients WHERE clientNumber <> 8901235 OR clientNumber <> 456789

SELECT COUNT(*) FROM cities

SELECT COUNT(clientName) FROM Clients WHERE clientName LIKE '%a'

SELECT  Min(starsCounts) FROM hotels WHERE starsCounts = 1

SELECT hotelID, COUNT(hotelID) FROM rooms WHERE hotelID = 1

SELECT Min(hotelName) FROM hotels

SELECT Min(creationDate) as minimumCount FROM hotels

SELECT Max(starsCounts) FROM hotels

SELECT AVG(clientNumber) FROM clients

SELECT AVG(clientName) FROM clients

SELECT SUM(clientNumber) FROM clients

SELECT * FROM hotelsdb.clients;

SELECT AVG(salary) FROM clients 

SELECT MAX(salary) FROM clients 

SELECT Count(salary), salary FROM clients GROUP by salary

SELECT Count(age), age FROM clients GROUP by age

SELECT Count(age), age FROM clients GROUP by age HAVING age > 30

SELECT Count(age), age, clientName  FROM clients GROUP by age HAVING clientName LIKE '%a'

SELECT * FROM hotelsdb.clients ORDER BY clientName;

SELECT * FROM hotelsdb.clients ORDER BY clientName DESC;

SELECT * FROM hotelsdb.clients ORDER BY clientName ASC;

SELECT * FROM hotelsdb.clients ORDER BY salary ASC;

SELECT * FROM hotelsdb.clients ORDER BY salary DESC;

SELECT * FROM hotelsdb.clients ORDER BY salary LIMIT 5;

SELECT * FROM hotelsdb.clients ORDER BY salary DESC LIMIT 5;

SELECT * FROM hotelsdb.clients ORDER BY salary DESC LIMIT 5 OFFSET 2;

SELECT * FROM hotelsdb.cities;

SELECT * FROM cities 
JOIN hotels ON cities.CityID = hotels.CityID;

SELECT * FROM cities 
INNER JOIN hotels ON cities.CityID = hotels.CityID;

SELECT * FROM cities 
LEFT JOIN hotels ON cities.CityID = hotels.CityID;

SELECT * FROM cities 
RIGHT JOIN hotels ON cities.CityID = hotels.CityID;