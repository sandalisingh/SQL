USE COMPANY;

-- VIEW THE EXISTING TABLES
-- SELECT * FROM DEPARTMENT;
-- SELECT * FROM DEPT_LOCATIONS;
-- SELECT * FROM EMPLOYEE;



-- NESTING

-- QUERY 1
-- SELECT Dnumber FROM DEPT_LOCATIONS WHERE Dlocation='Sugarland' OR Dlocation='Houston';

-- QUERY 2
-- SELECT Mgr_ssn FROM Department WHERE Dnumber IN (
--     SELECT Dnumber FROM DEPT_LOCATIONS WHERE Dlocation='Sugarland' OR Dlocation='Houston'
-- );

-- QUERY 3: NESTING QUERIES 1 & 2
-- SELECT Fname, Lname, Ssn, Super_ssn, Dno FROM Employee WHERE Ssn NOT IN (
--     SELECT Mgr_ssn FROM Department WHERE Dnumber IN (
--         SELECT Dnumber FROM DEPT_LOCATIONS WHERE Dlocation='Sugarland' OR Dlocation='Houston'
--     )
-- );

-- QUERY 4: EQUIVALENT TO QUERY 3
-- --THE ABOVE QUERIES IS EQUIVALALENT TO THE FOLLOWING
-- SELECT Fname, Lname, Ssn, Super_ssn, Dno FROM Employee WHERE Ssn NOT IN (888665555, 333445555);

-- SELECT Fname ,Minit,Lname,Dname 
-- FROM Employee,Department 
-- where Employee.Dnumber=Department.Dnumber;



--NATURAL JOIN
-- SELECT * 
-- FROM DEPARTMENT  
-- NATURAL JOIN DEPT_LOCATIONS;



-- INNER JOIN
-- SELECT * 
-- FROM DEPARTMENT D 
-- INNER JOIN DEPT_LOCATIONS DL 
-- ON D.Dnumber= DL.Dnumber; 



-- LEFT OUTER JOIN
-- SELECT Fname, E.Dno, Dname
-- FROM EMPLOYEE E LEFT OUTER JOIN DEPARTMENT D
-- ON (E.Super_ssn = D.Mgr_ssn);

-- RIGHT OUTER JOIN

-- DELETE FROM DEPARTMENT WHERE Dnumber IN (50);
-- SELECT * FROM DEPARTMENT;
-- INSERT INTO DEPARTMENT(Dname, Dnumber, Mgr_start_date) VALUES
-- ( 'Rough1', 50, '1990-01-01');

-- SELECT * FROM DEPARTMENT;


-- LEFT OUTER JOIN

-- SELECT Fname, E.Super_ssn, E.Dno, D.Mgr_ssn, D.Dnumber, Dname
-- FROM DEPARTMENT D LEFT OUTER JOIN EMPLOYEE E
-- ON (E.Super_ssn = D.Mgr_ssn AND D.Dnumber=E.Dno);

-- SELECT Fname, E.Super_ssn, E.Dno, D.Mgr_ssn, D.Dnumber, Dname
-- FROM EMPLOYEE E LEFT OUTER JOIN DEPARTMENT D
-- ON (E.Super_ssn = D.Mgr_ssn AND D.Dnumber=E.Dno);

-- RIGHT OUTER JOIN 

SELECT Fname, E.Super_ssn, E.Dno, D.Mgr_ssn, D.Dnumber, Dname
FROM DEPARTMENT D RIGHT OUTER JOIN EMPLOYEE E
ON (E.Super_ssn = D.Mgr_ssn AND D.Dnumber=E.Dno);

SELECT Fname, E.Super_ssn, E.Dno, D.Mgr_ssn, D.Dnumber, Dname
FROM EMPLOYEE E RIGHT OUTER JOIN DEPARTMENT D
ON (E.Super_ssn = D.Mgr_ssn AND D.Dnumber=E.Dno);







FULL OUTER JOIN
SELECT Fname, E.Dno, Dname
FROM EMPLOYEE E
FULL OUTER JOIN DEPARTMENT D
ON (E.Super_ssn = D.Mgr_ssn);





