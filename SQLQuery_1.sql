
-- CREATE DATABASE COMPANY;
USE COMPANY;
 
-- DROP TABLE EMPLOYEE;
-- DROP TABLE DEPARTMENT;
-- DROP DEPT_LOCATIONS;

CREATE TABLE EMPLOYEE (
   Fname char(20) NOT NULL, Minit char(1) NOT NULL,
   Lname char(20) NOT NULL, Ssn int NOT NULL PRIMARY KEY,
   Bdate date NOT NULL CHECK (Bdate >= ('1935-01-01')),
   Address char(30) NOT NULL, Sex char(1) NOT NULL,
   Salary int DEFAULT 25000 CHECK (Salary>=25000 AND Salary<=80000),
   Super_ssn int
);
 
CREATE TABLE DEPARTMENT (
   Dname char(20) NOT NULL UNIQUE, Dnumber int NOT NULL PRIMARY KEY,
   Mgr_ssn int NULL REFERENCES EMPLOYEE(Ssn),
   Mgr_start_date date CHECK (Mgr_start_date >= ('1980-01-01'))
);
 
ALTER TABLE EMPLOYEE
ADD Dno int REFERENCES DEPARTMENT(Dnumber);
 
CREATE TABLE DEPT_LOCATIONS (
   Dnumber int NOT NULL REFERENCES DEPARTMENT(Dnumber), Dlocation char(15) NOT NULL,
   CONSTRAINT PK_DLOCs PRIMARY KEY (Dnumber, Dlocation)
);
 
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPT_LOCATIONS;
SELECT * FROM EMPLOYEE;
 
 

 



