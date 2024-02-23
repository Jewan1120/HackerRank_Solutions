--Problem Statement
/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

The STATION table is described as follows:
+-------------+--------------+
| Field       | Type         |
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
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY REGEXP '^[^aeiou]|[^aeiou]$'