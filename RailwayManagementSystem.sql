--CREATING DATABASE

-- CREATE DATABASE RAILWAY; 
-- -- USE RAILWAY;

-- DROP TABLE BOARDS;
-- DROP TABLE TRAIN;
-- DROP TABLE PASSENGER;

-- --CREATING TABLES

-- CREATE TABLE PASSENGER(
--     P_ID int PRIMARY KEY,
-- 	P_Name varchar(20) NOT NULL,
--     Age int NOT NULL,
--     Gender char(1) NOT NULL, 
--     PhoneNo INTEGER NOT NULL,
--     SeatNo int UNIQUE
-- );

-- CREATE TABLE TRAIN(
-- 	T_ID int PRIMARY KEY,
--     T_Type varchar(15) NOT NULL,
--     T_Name varchar(15) NOT NULL,
--     Class varchar(20) NOT NULL
-- );

-- CREATE TABLE BOARDS(
--     T_Id int REFERENCES Train,
--     P_Id int REFERENCES Passenger,
--     Source varchar(20) NOT NULL,
--     Destination varchar(20) NOT NULL,
--     Time_Departure datetime NOT NULL,
--     Time_Arrival datetime NOT NULL,
--     constraint PK_Boards PRIMARY KEY (T_ID, P_ID)
-- );

--INSERTING VALUES INTO THE TABLES

-- INSERT INTO TRAIN VALUES 
-- (101,'Passenger','Shatabdi','Sleeper'),
-- (453,'Passenger','Bullet','Sleeper'),
-- (132,'Passenger','Rajdhani','Sleeper'),
-- (164,'Cargo','Thomas','Goods_Carrier');


-- INSERT INTO PASSENGER VALUES
-- (123,'Rohan',15,'M',873649291,213),
-- (124,'Mohan',64,'M',128369321,917),
-- (125,'Sohan',42,'M',137273392,982),
-- (126,'Johan',61,'M',214838921,892);

-- INSERT INTO BOARDS VALUES 
-- (101, 123, 'Jaipur', 'Delhi', '2022-03-12 12:00', '2022-03-13 12:00'),
-- (132, 124, 'Goa', 'Delhi', '2022-02-2 12:00', '2022-02-3 1:00');

-- --VIEW TABLE RECORDS

-- SELECT * FROM TRAIN;
-- SELECT * FROM PASSENGER;
-- SELECT * FROM BOARDS;

-- --SELECT QUERY

-- SELECT * FROM TRAIN,PASSENGER,BOARDS 
-- where Train.T_id=BOARDS.T_id and Passenger.P_ID=BOARDS.P_ID and TRAIN.T_Name='Shatabdi';

-- SELECT P_Name from PASSENGER where P_id=123;

-- --UPDATE QUERY

-- UPDATE PASSENGER 
-- SET Age=90
-- WHERE P_Name='Mohan';

-- SELECT * FROM PASSENGER;

-- --DELETE QUERY

-- DELETE FROM BOARDS WHERE P_Id=124;
-- SELECT * FROM BOARDS;

-- --QUERY TO INSERT NEW COLUMN (ALTER)

-- ALTER TABLE PASSENGER
-- ADD NEW_COLUMN int;
-- SELECT * FROM PASSENGER;

-- --QUERY TO CLEAR ALL TUPLES FROM TABLE(TRUNCATE)

-- TRUNCATE TABLE BOARDS;
-- SELECT * FROM BOARDS;

-- --QUERY TO DROP TABLE

-- DROP TABLE BOARDS;
-- DROP TABLE TRAIN;
-- DROP TABLE PASSENGER;

-- --QUERY TO DROP DATABASE

DROP DATABASE RAILWAY;