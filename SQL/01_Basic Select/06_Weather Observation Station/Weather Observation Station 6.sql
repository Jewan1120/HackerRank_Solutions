--Problem Statement
/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

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
    CITY
FROM
    STATION
WHERE
    CITY REGEXP '^[aeiou]'