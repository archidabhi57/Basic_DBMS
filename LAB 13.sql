--1. Create a view Personal with all columns.

	CREATE VIEW PERSONAL
	AS
	SELECT * FROM STUDENT

--2 Create a view Student_Details having columns Name, Branch & SPI.

	CREATE VIEW STUDENT_DETAILS
	AS
	SELECT NAME,BRANCH,SPI
	FROM STUDENT

--3 Create a view Academic having columns RNo, Name, Branch.
	CREATE VIEW ACADEMIC 
	AS
	SELECT RNO,NAME,BRANCH
	FROM STUDENT

--4 Create a view Student_Data having all columns but students whose bklog more than 2.
	
	CREATE VIEW STUDENT_DATA
	AS
	SELECT * FROM STUDENT
	WHERE BKLOG >2

--5 Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists 
--of four letters.
	CREATE VIEW STUDENT_PATTERN
	AS
	SELECT RNO,NAME,BRANCH
	FROM STUDENT
	WHERE NAME LIKE '____'

--6 Insert a new record to Academic view. (107, Meet, ME)
	INSERT INTO ACADEMIC
	SELECT 107,'MEET','ME'
	
		--OR

	INSERT INTO ACADEMIC
	VALUES(107,'MEET','ME')

--7  Update the branch of Amit FROM CE to ME in Student_Details view.

	UPDATE STUDENT_DETAILS
	SET BRANCH = 'ME'
	WHERE NAME = 'AMIT' AND BRANCH = 'CE'

--8 Delete a student whose roll number is 104 FROM Academic view.

	DELETE FROM ACADEMIC
	WHERE RNO = 104

--9 Create a view that displays information of all students whose spi is above 9.5.

	CREATE VIEW SPI
	AS
	SELECT * FROM STUDENT WHERE SPI>9.5

--10 Create a view that displays 0 backlog students.

	CREATE VIEW BACKLOGSTUDENT
	AS
	SELECT * FROM STUDENT WHERE BKLOG=0

