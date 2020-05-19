-- Part 2.4 update.sql
--
-- Submitted by: To Kin Wai, 19029931
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 




--Update the coach and participant information to only contain the hourly payment
--Add attributes Hourly_Payment to both Participant and Coach
ALTER TABLE Participant ADD Hourly_Payment FLOAT(10,2);
ALTER TABLE Coach ADD Hourly_Payment FLOAT(10,2);

--Set the Hourly_Payment of Participant as well as Coach as Daily Salary divided by 4
UPDATE Participant
SET  Hourly_Payment = DailySalary/4;
UPDATE Coach
SET  Hourly_Payment = Daily_Salary/4;

--Drop the Daily_Salary feild from Table Coach and Participant
ALTER TABLE Participant DROP COLUMN DailySalary;
ALTER TABLE Coach DROP COLUMN Daily_Salary;

--Add new fields to the attendance table to register when coaches and contenders arrive to and leave the shows
ALTER TABLE CoachInShow ADD Arrival_Time TIME(0);
ALTER TABLE CoachInShow ADD Depart_Time TIME(0);
ALTER TABLE ContenderInShow ADD Arrival_Time TIME(0);
ALTER TABLE ContenderInShow ADD Depart_Time TIME(0);

--UPDATE the coach information to include the arrival and departure times for the past shows
UPDATE CoachInShow AS C,TVShow AS T 
SET C.Arrival_Time = ADDTIME (T.Start_Time, '-1:00:00'), C.Depart_Time=ADDTIME(T.End_Time, '1:00:00')
WHERE C.Show_Id = T.IdShow;

--UPDATE the contender information to include the arrival and departure times for the past shows
UPDATE ContenderInShow AS C,TVShow AS T 
SET C.Arrival_Time = ADDTIME (T.Start_Time, '-1:00:00'), C.Depart_Time=ADDTIME(T.End_Time, '1:00:00')
WHERE C.Show_Id = T.IdShow;