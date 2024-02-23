--Problem Statement
/*
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

The STATION table is described as follows:
+-------------+--------------+
| Feild       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| CITY        | VARCHAR2(21) |
| STATE       | VARCHAR2(2)  |
| LAY_N       | NUMBER       |
| LONG_W      | NUMBER       |
+-------------+--------------+
*/

--Solution (MySQL)

SELECT 
    COUNT(CITY) - COUNT(DISTINCT CITY)
FROM 
    STATION