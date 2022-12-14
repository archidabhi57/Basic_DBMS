CREATE TABLE DEPOSIT
(ACTNO INT,
CNMAE VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME);

SP_RENAME 'DEPOSIT.CNMAE','CNAME','COLUMN'

SELECT * FROM DEPOSIT
CREATE TABLE BRANCH
(BNAME VARCHAR(50),
CITY VARCHAR(50));

CREATE TABLE CUSTOMERS
(CNAME VARCHAR(50),
CITY VARCHAR(50));

CREATE TABLE BORROW
(LOANNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2));

INSERT INTO DEPOSIT 
VALUES(101,'ANIL','VRCE',1000,'1-MAR-95'),
	  (102,'SUNIL','AJNI',5000,'4-JAN-96'),
	  (103,'MEHUL','KAROLABH',3500,'17-NOV-95'),
	  (104,'MADHURI','CHANDI',1200,'17-DEC-95'),
	  (105,'PRMOD','M.G.ROAD',3000,'27-MAR-96'),
	  (106,'SANDIP','ANDHERI',2000,'31-MAR-96'),
	  (107,'SHIVANI','VIRAR',1000,'5-SEP-95'),
	  (108,'KRANTI','NEHRU PLACE',5000,'2-JULY-95'),
	  (109,'MINU','POWAI',7000,'10-AUG-95');

SELECT * FROM DEPOSIT

INSERT INTO BRANCH
VALUES('VRCE','NAGPUR'),
	  ('AJNI','NAGPUR'),
	  ('KAROLBAGH','DELHI'),
	  ('CHANDI','DELHI'),
	  ('DHARAMPETH','NAGPUR'),
	  ('M.G.ROAD','BANGLORE'),
	  ('ANDHERI','BOMBAY'),
	  ('VIRAR','BOMBAY'),
	  ('NEHRU NAGAR','DELHI'),
	  ('POWAI','BOMBAY');

INSERT INTO CUSTOMERS
VALUES('ANIL','CALCUTTA'),
	  ('SUNIL','DELHI'),
	  ('MEHUL','BARODA'),
	  ('MANDAR','PATNA'),
	  ('MADHURI','NAGPUR'),
	  ('PRAMOD','NAGPUR'),
	  ('SANDIP','SURAT'),
	  ('SHIVANI','BOMBAY'),
	  ('KRANTI','BOMBAY'),
	  ('NAREN','BOMBAY');

INSERT INTO BORROW
VALUES(201,'ANIL','VRCE',1000),
	  (206,'MEHUL','AJNI',5000),
	  (311,'SUNIL','DHARAMPETH',3000),
	  (321,'MADHURI','ANDHERI',2000),
	  (375,'PRMOD','VIRAR',8000),
	  (481,'KRANTI','NEHRU PLACE',3000);

--LAB-2 (2.1)
--1
SELECT * FROM DEPOSIT

--2
SELECT * FROM BORROW

--3
SELECT * FROM CUSTOMERS

--4
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--5
SELECT LOANNO,AMOUNT FROM BORROW

--6
SELECT * FROM BORROW
WHERE BNAME ='ANDHERI'

--7
SELECT ACTNO,AMOUNT FROM DEPOSIT
WHERE ACTNO=106

--8
SELECT CNAME FROM BORROW
WHERE AMOUNT>5000

--9
SELECT CNAME FROM DEPOSIT
WHERE ADATE>'1-DEC-96'

--10
SELECT CNAME FROM DEPOSIT
WHERE ACTNO<105

--11
SELECT CNAME FROM CUSTOMERS
WHERE CITY = 'NAGPUR' OR CITY = 'DELHI'

SELECT CNAME FROM CUSTOMERS
WHERE CITY IN('NAGPUR','DELHI')

--12
SELECT CNAME FROM DEPOSIT
WHERE AMOUNT>4000 
	  AND
	  ACTNO<105

--13
SELECT * FROM BORROW
WHERE AMOUNT>=3000
	AND
	  AMOUNT<=8000

SELECT * FROM BORROW
WHERE AMOUNT BETWEEN 3000 AND 8000

--14
SELECT * FROM DEPOSIT
WHERE BNAME<>'ANDHERI'

--15
SELECT CNAME FROM BORROW
WHERE AMOUNT IS NULL

--16
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT
WHERE BNAME IN('AJNI','KAROLBAGH','M.G.ROAD')
	 AND 
	 ACTNO<104

--17
SELECT TOP 5 * FROM CUSTOMERS

--18
SELECT TOP 3 * FROM DEPOSIT
WHERE AMOUNT>1000

--19
SELECT TOP 5 LOANNO,CNAME FROM BORROW
WHERE BNAME <>'ANDHERI'

--20
SELECT DISTINCT CITY FROM CUSTOMERS

--21
SELECT DISTINCT BNAME FROM BRANCH

--22
SELECT * FROM CUSTOMERS
ORDER BY CITY

--23
SELECT * FROM DEPOSIT
ORDER BY AMOUNT DESC

--24
SELECT * FROM CUSTOMERS
ORDER BY CITY DESC

--25
SELECT DISTINCT CNAME [UNI_BORROWERS] FROM BORROW
 
SELECT DISTINCT CNAME AS UNI_BORROWERS FROM BORROW

