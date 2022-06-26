
USE COMPANY;
 
INSERT INTO DEPARTMENT(Dname, Dnumber) VALUES
( 'Research', 5),
( 'Administration', 4),
( 'Headquarters', 1);
 
INSERT INTO DEPT_LOCATIONS VALUES
( 1, 'Houston'), 
( 4, 'Stafford'),
( 5, 'Bellaire'),
( 5, 'Sugarland'),
( 5, 'Houston');
 
INSERT INTO EMPLOYEE VALUES
( 'John', 'B', 'Smith', 123456789, '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, 333445555, 5),
( 'Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 888665555, 5);

INSERT INTO EMPLOYEE(Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Super_ssn, Dno) VALUES
( 'Alicia', 'J', 'Zelaya', 999887777, '1968-01-19', '3321 Castle, Spring, TX', 'F', 987654321, 4);

INSERT INTO EMPLOYEE VALUES
( 'Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 888665555, 4), 
( 'Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, 333445555, 5),
( 'Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, 333445555, 5),
( 'Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980 Dalias, Houston, TX', 'M', 25000, 987654321, 4),
( 'James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);
 
UPDATE DEPARTMENT
SET Mgr_ssn=333445555, Mgr_start_date='1988-05-22'
WHERE Dnumber=5;
 
UPDATE DEPARTMENT
SET Mgr_ssn=987654321, Mgr_start_date='1995-01-01'
WHERE Dnumber=4;
 
UPDATE DEPARTMENT
SET Mgr_ssn=888665555, Mgr_start_date='1981-06-19'
WHERE Dnumber=1;
 
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPT_LOCATIONS;
SELECT * FROM EMPLOYEE;
