-- Part 2.1 schema.sql
--
-- Submitted by: To Kin Wai, 19029931
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 

--Create a table for Coaches
--Primary Key is IdCoach; No foreign key
CREATE TABLE Coach(
First_Name VARCHAR(20) NOT NULL,
Surname VARCHAR(20) NOT NULL,
DoB DATE,
IdCoach VARCHAR(20) UNIQUE NOT NULL,
Phone VARCHAR(20),
Daily_Salary FLOAT(10,2),
Gender VARCHAR(9),

PRIMARY KEY (IdCoach));


--Create a table for Contenders
--Primary Key is IdContender
--Foreign key is Coach_Id, which references IdCoach of Table Coach
CREATE TABLE  Contender(
Stage_Name VARCHAR(20) NOT NULL,
Type VARCHAR(20),
IdContender VARCHAR(20) UNIQUE NOT NULL,
Coach_Id VARCHAR(20) NOT NULL,

PRIMARY KEY (IdContender),
FOREIGN KEY (Coach_Id)
            REFERENCES Coach(IdCoach)
            ON DELETE CASCADE
            ON UPDATE CASCADE);


--Create a table for Participants
--Primary Key is IdParticipant
--Foreign key is Contender_Id, which references IdContender of Table Contender
CREATE TABLE Participant(
First_Name VARCHAR(20) NOT NULL,
Surname VARCHAR(20) NOT NULL,
DoB DATE,
IdParticipant  VARCHAR(20) UNIQUE NOT NULL,
Phone VARCHAR(20),
DailySalary FLOAT(10,2),
Gender VARCHAR(9),
Contender_Id VARCHAR(20) NOT NULL,
PRIMARY KEY (IdParticipant),
FOREIGN KEY (Contender_Id)
            REFERENCES Contender(IdContender)
            ON DELETE CASCADE
            ON UPDATE CASCADE);


--Create a table for TVShowes
--Primary Key is IdShow; No foriegn key

CREATE TABLE TVShow(
Location VARCHAR(20),
Date DATE,
IdShow VARCHAR(20) UNIQUE NOT NULL,
Start_Time TIME(0),
End_Time TIME(0),

PRIMARY KEY (IdShow));

--Create a table for Coaches in TVShows
--Primary key is Coach_Id and Show_Id
--Foreign key is Coach_Id, which references IdCoach of Table Coach
--Foreign key is Show_Id, which references IdShow of Table TVShow
CREATE TABLE CoachInShow(
Coach_Id VARCHAR(20) NOT NULL,
Show_Id VARCHAR(20) NOT NULL,

PRIMARY KEY (Coach_Id, Show_Id),
FOREIGN KEY (Coach_Id)
            REFERENCES Coach(IdCoach)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
FOREIGN KEY (Show_Id)
            REFERENCES TVShow(IdShow)
            ON DELETE CASCADE
            ON UPDATE CASCADE);


--Create a table for Contenderes in TVShows
--No primary key
--Foreign key is Contender_Id, which references IdCoach of Table Contender
--Foreign key is Show_Id, which references IdShow of Table TVShow

CREATE TABLE ContenderInShow(
Contender_Id VARCHAR(20) NOT NULL,
Show_Id VARCHAR(20) NOT NULL,

PRIMARY KEY(Contender_Id, Show_Id),
FOREIGN KEY (Contender_Id)
            REFERENCES Contender(IdContender)
            ON DELETE CASCADE
            ON UPDATE CASCADE,

FOREIGN KEY (Show_Id)
            REFERENCES TVShow(IdShow)
            ON DELETE CASCADE
            ON UPDATE CASCADE);