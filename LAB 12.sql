--1. Create a stored procedure to display all the records. (Rno, Name, Branch, SPI)
	
	CREATE PROCEDURE GETSTUDENTDETAIL
	AS
	BEGIN
	SELECT
		STUDENT.RNO,
		STUDENT.NAME,
		STUDENT.BRANCH,
		STUDENT.SPI
	FROM STUDENTLEFT OUTER JOIN RESULT
	ON STUDENT.RNO = RESULT.RNO
	END

--2. Create a stored procedure to get a roll number FROM user and display all the details of it.

	CREATE PROCEDURE GETSTUDENTDETAILBYROLLNO
		@RNO INT
	AS
	BEGIN 
	SELECT * FROM STUDENT
	WHERE RNO = @RNO
	END

--3. Create a stored procedure to insert a record in student table. (107, Raj, EE)

	CREATE PROCEDURE STUDENTINSERT
		@RNO INT,
		@NAME VARCHAR(50),
		@BRANCH VARCHAR(50)
	AS
	BEGIN
	INSERT INTO STUDENT(RNO,NAME,BRANCH)
	VALUES(@RNO,@NAME,@BRANCH)
	END

--4. Create a stored procedure to update Branch of roll number 105 to EC in the student table.
	
	CREATE PROCEDURE UPDATESTUDENTBRANCHBYID
		@RNO INT,
		@BRANCH VARCHAR(50)
	AS
	BEGIN
	UPDATE STUDENT SET BRANCH = @BRANCH
	WHERE RNO=@RNO
	END

--5. Create a stored procedure to delete a record in the student table whose roll number is 103.	CREATE PROCEDURE SPDELETESTUDENTBYROLLNO		@RNO INT	AS	BEGIN 	DELETE FROM STUDENT	WHERE RNO=@RNO	END