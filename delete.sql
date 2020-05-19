-- Part 2.5 delete.sql
--
-- Submitted by: To Kin Wai, 19029931
-- 

-- DO NOT use these SQL commands in your submission(they will cause an 
--  error on the NMS database server):
-- CREATE SCHEMA 
-- USE 


--Delete the Contender with lowest total salary
DELETE FROM Contender
WHERE IdContender IN    (SELECT*
                        FROM(SELECT A.Contender_Id 
                            FROM  Participant AS A, Contender AS B, ContenderInShow AS D
                            WHERE A.Contender_Id = B.IdContender AND B.IdContender = D.Contender_Id
                            GROUP BY B.IdContender 
                            HAVING (SUM(A.Hourly_Payment)  *4) IN   (SELECT MIN(Z)   
                                                                    FROM (SELECT SUM(A.Hourly_Payment) *4 AS Z
                                                                            FROM  Participant AS A, Contender AS B, ContenderInShow AS D
                                                                            WHERE A.Contender_Id = B.IdContender AND B.IdContender = D.Contender_Id
                                                                            GROUP BY B.IdContender)tab))tab2);


