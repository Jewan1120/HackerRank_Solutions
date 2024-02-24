--Problem Statement
/*
Query the difference between the maximum and minimum populations in CITY.

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
    MAX(POPULATION) - MIN(POPULATION)
FROM
    CITY