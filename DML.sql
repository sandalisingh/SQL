
USE COMPANY;

-- INSERTING MULTIPLE VALUES
INSERT INTO EMPLOYEE VALUES
( 'Sandali', 'B', 'Singh', 1, '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, 333445555, 5),
( 'Selena', 'T', 'Gomez', 2, '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 888665555, 5);

-- INSERTING IN SELECTED COLUMNS
INSERT INTO EMPLOYEE(Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Super_ssn, Dno) VALUES
( 'Adam', 'J', 'Levine', 3, '1968-01-19', '3321 Castle, Spring, TX', 'F', 987654321, 4);

-- INSERTING SINGLE VALUE
INSERT INTO EMPLOYEE VALUES
( 'Justin', 'E', 'Bieber', 4, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);

SELECT * FROM EMPLOYEE;


 
-- UPDATING EMPLOYEE'S ADDRESS & BIRTH DATE
UPDATE EMPLOYEE
SET Address='12 Pocket-4 Rohini', Bdate='2000-03-21'
WHERE Fname='Justin';

SELECT * FROM EMPLOYEE;


SELECT * FROM EMPLOYEE WHERE Fname='Justin';


DELETE FROM EMPLOYEE WHERE Fname IN ( 'Justin', 'Sandali', 'Adam', 'Selena');
SELECT * FROM EMPLOYEE;
