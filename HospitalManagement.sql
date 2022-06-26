-- CREATE DATABASE HOSPITAL; 
-- USE HOSPITAL;


-- Drop Table P_IS_ASSIGNED_WARDS, P_UNDERGOES_TESTS, TESTS, TREATS, PATIENT, WARDS;
-- Drop Table DOCTOR;


-- CREATE TABLE DOCTOR (
--     D_ID int NOT NULL PRIMARY KEY, 
--     Name varchar(20) NOT NULL, 
--     PhoneNo int NOT NULL UNIQUE,
--     Address varchar(25),
--     Field_of_Expertise varchar(10) NOT NULL
-- );

-- CREATE TABLE PATIENT
-- (
--     P_ID int NOT NULL PRIMARY KEY,
--     Name varchar(20) NOT NULL,
--     Age int NOT NULL CHECK (Age < 100),
--     PhoneNo int NOT NULL UNIQUE,
--     Address varchar(25),
--     Date_Admitted date NOT NULL,
--     Date_Discharged date 
-- );

-- CREATE TABLE TREATS(
--     D_ID int NOT NULL REFERENCES DOCTOR(D_id),
--     P_ID int NOT NULL REFERENCES PATIENT(P_id)
-- );

-- CREATE TABLE TESTS(
--     T_No int NOT NULL PRIMARY KEY,
--     T_Type varchar(10) UNIQUE
-- );

-- CREATE TABLE WARDS(
--     W_No int NOT NULL PRIMARY KEY,
--     W_Type varchar(10) UNIQUE
-- );

-- CREATE TABLE P_UNDERGOES_TESTS(
--     P_ID int NOT NULL REFERENCES PATIENT(P_id),
--     T_No int NOT NULL REFERENCES TESTS(T_No),
--     CONSTRAINT PK_UNDERGOES PRIMARY KEY (P_ID, T_No)
-- );

-- CREATE TABLE P_IS_ASSIGNED_WARDS(
--     D_ID int NOT NULL REFERENCES PATIENT(P_id),
--     W_No int NOT NULL REFERENCES WARDS(W_No),
--     CONSTRAINT PK_ASSIGNED PRIMARY KEY (D_ID, W_No)
-- );


-- INSERT INTO DOCTOR VALUES   --id, name, phone, addr, expertise
-- ( 1244,'Ashish Gupta',99998888,'12 Sector-8','Cardeo'), 
-- ( 1221,'Ramesh Yadav',99997777,'13 Sector-9','Neuro'), 
-- ( 1103,'Ravij Singh',999966666,'14 Sector-10','ENT M.D.'),
-- ( 1938,'Saket Jha',99995555,'15 Sector-11','Cardeo'),
-- ( 1953,'Roshni Jalan',99994444,'16 Sector-12','Surgeon');

-- INSERT INTO PATIENT VALUES  --id, name, age, phone, addr, date admit, date discharge
-- (532,'Farhan Zubair',23,888888888,'731 Fondren, Houston','2022-01-06','2022-01-18'), 
-- (235,'Samyak Morris',14,88887777,'291 Berry, Bellaire, TX','2022-02-24','2022-02-23'), 
-- (642,'Siddhart Gupta',46,888886666,'638 Voss, Houston, TX','2022-03-18',NULL), 
-- (134,'Komal Mehta',35,888885555,'731 Fondren, Houston','2022-02-26','2022-03-12'), 
-- (753,'Doraemon Sharma',51,888884444,'980 Dalias, Houston, TX','2022-01-13','2022-02-17'), 
-- (958,'Masao Tanwar',42,888883333,'450 Stone, Houston, TX','2022-02-21',NULL), 
-- (102,'Raju Nohara',65,888882222,'975 Fire Oak, Humble, TX','2022-02-14',NULL);


-- INSERT INTO TREATS VALUES  --D_ID, P_ID
-- (1244, 532),
-- (1953, 134);

-- INSERT INTO TESTS VALUES  --T_NO, T_TYPE
-- (1, 'X-CTS'),
-- (2, 'A-HTP');

-- INSERT INTO WARDS VALUES  --W_NO, W_TYPE
-- (120, 'Type01'),
-- (260, 'Type02');

-- INSERT INTO P_UNDERGOES_TESTS VALUES  --P_ID, T_NO
-- (532, 1),
-- (134, 2);

-- INSERT INTO P_IS_ASSIGNED_WARDS VALUES  --P_ID, W_NO
-- (532, 120),
-- (134, 260);

-- SELECT * FROM DOCTOR;
-- SELECT * FROM PATIENT;
-- SELECT * FROM TREATS;
-- SELECT * FROM TESTS;
-- SELECT * FROM WARDS;
-- SELECT * FROM P_UNDERGOES_TESTS;
-- SELECT * FROM P_IS_ASSIGNED_WARDS;


-- UPDATE PATIENT
-- SET Address='12 Pocket-4 Rohini' 
-- WHERE Name='Doraemon Sharma'; 

-- SELECT * FROM PATIENT;

-- SELECT PATIENT.Name,DOCTOR.Name
-- FROM PATIENT,DOCTOR,TREATS
-- WHERE PATIENT.P_ID=TREATS.P_ID and DOCTOR.D_ID=TREATS.D_ID;

-- DELETE FROM TREATS 
-- WHERE P_ID IN ( 530, 532, 540); 

-- SELECT * FROM TREATS;

-- ALTER TABLE DOCTOR 
-- ADD Salary int; 

-- SELECT * FROM DOCTOR;

-- TRUNCATE TABLE P_UNDERGOES_TESTS; 

-- SELECT * FROM P_UNDERGOES_TESTS; 

-- DROP TABLE P_IS_ASSIGNED_WARDS, P_UNDERGOES_TESTS, TESTS, TREATS, PATIENT, WARDS, DOCTOR;

DROP DATABASE HOSPITAL;