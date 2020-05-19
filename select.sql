-- Part 2.3 select.sql
--
-- Submitted by: To Kin Wai, 19029931
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 


-- 1. Average Female Salary
--Average Female Salary: Select the daily salary of female participants
SELECT AVG(DailySalary)
FROM Participant 
WHERE Gender='Female';

-- 2. Coaching Report
--Coaching Report: Select the coach and the number of contenders they are coaching
SELECT C.First_Name, C.Surname, C.DoB, C.IdCoach, C.Phone, Daily_Salary, Gender,
                (SELECT COUNT(*) 
                FROM Contender D 
                WHERE C.IdCoach = D.Coach_Id) 
FROM Coach C 
GROUP BY IdCoach;

-- 3. Coach Monthly Attendance Report
--Monthly Attendence Report: Select the total number of of shows attended by each coach in each month, namely March and April
SELECT First_Name, Surname, DoB, IdCoach, Phone, Daily_Salary, Month(T.Date), COUNT(*) AS Number_Of_Shows
FROM Coach AS C,  CoachInShow  AS S, TVShow AS T 
WHERE C.IdCoach=S.Coach_Id AND S.Show_Id = T.IdShow
GROUP BY Month(T.Date), IdCoach;

-- 4. Most Expensive Contender
--Most Expensive Contender: Select query that lists the stage name of the contender with the highest total daily salary
SELECT Z.Stage_Name, SUM(DailySalary) AS HighestTotalDailySalary 
FROM  Participant, Contender AS Z
WHERE Contender_Id = Z.IdContender
GROUP BY Contender_Id
HAVING HighestTotalDailySalary IN (SELECT MAX(C) 
                            FROM (SELECT SUM(DailySalary) AS C 
                                  FROM  Participant 
                                  GROUP BY Contender_Id) tab);

-- 5. March Payment Report
--March Payment Report: Select the name, number of shows attended in March, their daily salary and total Salary for March of each coach and participant. The last line contains the total amount to be paid in March 

CREATE VIEW Payment_Report  AS
SELECT 'Coach' AS Type, CONCAT( First_Name, Surname) AS Name, COUNT(*) AS NumberofShowInMarch, Daily_Salary, COUNT(*) * Daily_Salary AS TotalSalaryInMarch
FROM Coach AS C, CoachInShow AS S, TVShow AS T
WHERE C.IdCoach = S.Coach_Id AND S.Show_Id = T.IdShow AND T.Date < '2020-04-01'
GROUP BY Coach_Id


UNION

SELECT 'Participant' AS Type, CONCAT( P.First_Name, P.Surname) AS Name, COUNT(*) AS NumberofShowInMarch, P.DailySalary, COUNT(*)* P.DailySalary AS TotalSalaryInMarch 
FROM Participant AS P, Contender AS C, ContenderInShow AS S, TVShow AS T
WHERE P.Contender_Id = C.IdContender AND C.IdContender= S.Contender_Id  AND S.Show_Id = T.IdShow AND T.Date < '2020-04-01' 
GROUP BY P.IdParticipant

UNION
SELECT '', '', '', '',

(SELECT SUM(DailySalary)
FROM Participant AS P, Contender AS C, ContenderInShow AS S
WHERE P.Contender_Id = C.IdContender AND C.IdContender = S.Contender_Id
 AND '2020-04-01'  >  (SELECT T.Date 
                      FROM TVShow AS T
                      WHERE T.IdShow= S.Show_Id))
+
(SELECT SUM(Daily_Salary)
FROM Coach AS C , CoachInShow AS S
WHERE C.IdCoach = S.Coach_Id 
 AND '2020-04-01'  >  (SELECT T.Date 
                      FROM TVShow AS T 
                      WHERE T.IdShow= S.Show_Id));

SELECT * FROM Payment_Report;

-- 6. Well Formed Groups!
--Well Formed Groups: If group contenders are formed by more than one participant, returns true; if not, returns false
SELECT IdContender, IF(COUNT(*) >1, "True", "False") AS Is_More_Than_One 
FROM Participant, Contender 
WHERE IdContender= Contender_Id 
GROUP BY IdContender;