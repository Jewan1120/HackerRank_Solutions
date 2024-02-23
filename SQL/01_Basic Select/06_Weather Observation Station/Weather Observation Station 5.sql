--Problem Statement
/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

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

(
    SELECT
        CITY,
        CHAR_LENGTH(CITY) AS CITY_LENGTH
    FROM
        STATION
    ORDER BY
        CITY_LENGTH ASC, CITY
    LIMIT 1
)
UNION
(
    SELECT
        CITY,
        CHAR_LENGTH(CITY) AS CITY_LENGTH
    FROM
        STATION
    ORDER BY
        CITY_LENGTH DESC, CITY
    LIMIT 1
)