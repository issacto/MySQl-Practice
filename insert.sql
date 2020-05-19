-- Part 2.2 insert.sql
--
-- Submitted by: To Kin Wai, 19029931
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 




--Insert Four Coahces into Table Coach, namely, James Arthur, Sia Chan, Adam Noah, and Hozier MacDonald

INSERT INTO Coach(First_Name, Surname, DoB, IdCoach, Phone, Daily_Salary, Gender) VALUES('James', 'Arthur', '1950-12-01', '001', '123456', 100, 'Male');
INSERT INTO Coach(First_Name, Surname, DoB, IdCoach, Phone, Daily_Salary, Gender)VALUES('Sia', 'Chen', '1961-04-01', '002', '10936', 120, 'Female');
INSERT INTO Coach (First_Name, Surname, DoB, IdCoach, Phone, Daily_Salary, Gender)VALUES('Adam','Noah', '1957-02-11', '003','4987432',80,'Male');
INSERT INTO Coach (First_Name, Surname, DoB, IdCoach, Phone, Daily_Salary, Gender)VALUES('Hozier','MacDonald', '1957-04-11', '004','39402' ,70,'Male');



--Insert Five Contenders into Table Contender

INSERT INTO Contender(Stage_Name, Type,IdContender,Coach_Id)VALUES('Team Amazing','Rock','201','001');
INSERT INTO Contender(Stage_Name, Type,IdContender,Coach_Id)VALUES('Team Yo', 'Rock', '202','002');
INSERT INTO Contender(Stage_Name,Type,IdContender,Coach_Id)VALUES('Team Vanderbilt','Rock','203','003');
INSERT INTO Contender(Stage_Name, Type,IdContender,Coach_Id)VALUES('Team Chillax','Rock','204','001');
INSERT INTO Contender(Stage_Name, Type,IdContender,Coach_Id)VALUES('Team Barbershop','Rock','205','002');


--Insert 15 Participants into the Table Participants

INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Daniela','MacDonald','1987-01-21','101','787878',70,'Female','201');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('To','To', '1997-05-20','102','787879',60,'Male','202');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Tai Ming','Chen','1988-02-19','103','787880',70,'Male','202');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('ShinHye','Park','1989-03-18','104','787881',65,'Female','203');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Hao','Lee','1991-05-16','106','787883',40,'Male','203');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Jean','Li','1992-06-15','107','787884',40,'Male','204');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Thomas','Gasc','1993-07-14','108','787885',30,'Male','204');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Christina','Gasc','1994-08-13','109','787886',40,'Female','204');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Borong','Chan','1995-09-12','110','787888',30,'Male','204');   
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Simon','Gauze','1995-10-11','111','787888',30,'Male','205');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Pitch','Samuelson','1995-12-10','113','787890',70,'Male','205');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Torimato','Mitzaki','1995-12-10','112','7878901',70,'Male','205');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Jevons','Wong','1995-02-28','114','787892',45,'Male','205');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('Yan Je','Liang','1995-01-31','115','787893',50,'Male','205');
INSERT INTO Participant(First_Name,Surname,DoB,IdParticipant, Phone, DailySalary,Gender, Contender_Id)VALUES('MingJoo','Park','1990-04-17','105','787882',62,'Male','203');




--Insert all the tv shows (total = 18) in March and April 2019 into Table TVShow

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-02','301','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-03','302','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-09','303','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-10','304','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-16','305','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-17','306','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-23','307','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-24','308','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-30','309','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Vauxhall Auditorium','2020-03-31','310','09:00:00','11:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-06','311','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-07','312','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-13','313','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-14','314','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-20','315','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-21','316','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-27','317','11:00:00','13:00:00');

INSERT INTO TVShow(Location,Date,IdShow,Start_Time,End_Time)VALUES('Covent Auditorium','2020-04-28','318','11:00:00','13:00:00');


--Insert all the Coach participated in each TVShow into Table CoachInShow; two attendences of coach for each show

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','301');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','301');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','302');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','302');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','303');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','303');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','304');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','304');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','305');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','305');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','306');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','306');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','307');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','307');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','308');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','308');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','309');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','309');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','310');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','310');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','311');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','311');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','312');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','312');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','313');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','313');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','314');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','314');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','315');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','315');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','316');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','316');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('002','317');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','317');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('003','318');

INSERT INTO CoachInShow(Coach_Id,Show_Id) VALUES('001','318');


--Insert all the contender in each TVShow into Table ContenderInShow; three attendences of contender for each show

INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '301');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '301');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '301');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '302');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '302');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '302');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '303');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '303');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '303');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '304');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '304');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '304');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '305');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '305');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '305');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '306');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '306');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '306');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '307');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '307');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '307');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '308');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '308');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '308');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '309');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '309');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '309');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '310');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '310');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '310');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '311');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '311');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '311');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '312');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '312');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '313');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '313');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '313');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '314');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '314');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '314');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '315');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '315');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '315');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '316');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '316');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '316');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '317');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('203', '317');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('204', '317');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('205', '318');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('201', '318');
INSERT INTO  ContenderInShow (Contender_Id, Show_Id) VALUES('202', '318');