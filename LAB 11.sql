--CREATE TABLE STUDENTSS
--(RNO INT,
--NAME VARCHAR(50),
--CITY VARCHAR(50),
--DID INT);

--INSERT INTO STUDENTSS
--VALUES(101,'RAJU','RAJKOT',10),
--	  (102,'AMIT','AHEMDABAD',20),
--	  (103,'SANJAY','BARODA',40),
--	  (104,'NEHA','RAJKOT',20),
--	  (105,'MEERA','AHEMDABAD',30),
--	  (106,'MAHESH','BARODA',10);
	  
--SELECT * FROM STUDENTSS

--CREATE TABLE ACADEMIC
--(RNO INT,
--SPI DECIMAL(4,2),
--BKLOG INT);

--INSERT INTO ACADEMIC
--VALUES(101,8.8,0),
--	  (102,98.2,2),
--	  (103,7.6,1),
--	  (104,8.2,4),
--	  (105,7.0,2),
--	  (106,8.9,3);

--SELECT * FROM ACADEMIC

--CREATE TABLE DEPARTMENT
--(DID INT,
--DNAME VARCHAR(50));

--INSERT INTO DEPARTMENT
--VALUES(10,'COMPUTER'),
--	  (20,'ELECTRICAL'),
--	  (30,'MECHANICAL'),
--	  (40,'CIVIL');

--SELECT * FROM DEPARTMENT

--1
SELECT RNO,NAME,CITY
FROM STUDENTSS
WHERE DID = (SELECT DID FROM DEPARTMENT
			WHERE DNAME = 'COMPUTER');

--2
SELECT NAME FROM STUDENTSS
WHERE RNO IN (SELECT RNO
				FROM ACADEMIC
				WHERE SPI>8);

--3
SELECT RNO,NAME,CITY
FROM STUDENTSS
WHERE CITY = 'RAJKOT' AND DID =(SELECT DID
								FROM DEPARTMENT
								WHERE DNAME = 'COMPUTER');

--4
SELECT COUNT(*)
FROM STUDENTSS
WHERE DID = (SELECT DID 
			FROM DEPARTMENT
			WHERE DNAME = 'ELECTRICAL');

--5
SELECT NAME 
FROM STUDENTSS
WHERE DID = (SELECT DID 
			FROM ACADEMIC 
			WHERE SPI =(SELECT MAX(SPI) FROM ACADEMIC));

--6
SELECT * FROM STUDENTSS
WHERE RNO IN (SELECT RNO 
			FROM ACADEMIC
			WHERE BKLOG>1);

--7
SELECT NAME FROM STUDENTSS
WHERE RNO = (SELECT RNO FROM ACADEMIC
			WHERE SPI = (SELECT MAX(SPI)
						FROM ACADEMIC
						WHERE SPI<(SELECT MAX(SPI)
									FROM ACADEMIC)
						)
			);
--OR

SELECT NAME FROM STUDENTSS
WHERE RNO = (SELECT TOP 1 SPI
			FROM ACADEMIC WHERE SPI = (SELECT TOP 1 SPI
										FROM (SELECT DISTINCT TOP 2 SPI FROM ACADEMIC ORDER BY 
										SPI DESC)AS TEMP
									ORDER BY SPI ASC)
									);

--8
SELECT NAME FROM STUDENTSS
WHERE RNO = (SELECT DID
			FROM DEPARTMENT
			WHERE DNAME='COMPUTER' OR DNAME='MECHANICAL');

--9
SELECT NAME FROM STUDENTSS
WHERE DID =(SELECT DID 
			FROM STUDENTSS
			WHERE RNO = 102);

--10
SELECT NAME FROM STUDENTSS
WHERE RNO IN (SELECT RNO FROM ACADEMIC WHERE SPI>9)
AND DID =(SELECT DID FROM DEPARTMENT WHERE DNAME='ELECTRICAL');
