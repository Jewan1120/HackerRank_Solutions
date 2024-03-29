--Problem Statement
/*
Query the total population of all cities in CITY where District is California.

The CITY table is described as follows:
+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |
+-------------+--------------+
*/

--Solution (MySQL)

SELECT
    SUM(POPULATION)
FROM
    CITY
WHERE
    DISTRICT = 'California'