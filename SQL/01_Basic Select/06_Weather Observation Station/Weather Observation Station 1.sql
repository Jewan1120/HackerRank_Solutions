--Problem Statement
/*
Query a list of CITY and STATE from the STATION table.

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
    , STATE
FROM
    STATION