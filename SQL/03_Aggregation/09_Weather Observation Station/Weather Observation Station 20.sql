--Problem Statement
/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

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
    ROUND(LAT_N, 4)
FROM
    (
        SELECT
            LAT_N
            , ROW_NUMBER() OVER(ORDER BY LAT_N) RN
        FROM
            STATION
    ) TMP
WHERE 
    RN IN (SELECT ROUND(COUNT(*) / 2) FROM STATION)