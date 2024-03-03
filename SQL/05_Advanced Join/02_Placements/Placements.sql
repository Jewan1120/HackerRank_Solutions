--Problem Statement
/*
You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

# Students
+------- +---------+
| Column | Type    |
+--------+---------+
| ID     | Integer |
| Name   | String  |
+--------+---------+

# Friends
+------------+---------+
| Column     | Type    |
+------------+---------+
| ID         | Integer |
| Friends_ID | Integer |
+------------+---------+

# Packages
+--------+---------+
| Column | Type    |
+--------+---------+
| ID     | Integer |
| Salary | Float   |
+--------+---------+

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

*/

--Solution (MySQL)

WITH Friend_Salary AS (
    SELECT
    A.ID
    , Salary
    FROM
        Friends A
        INNER JOIN Packages B
            ON A.Friend_ID = B.ID
)

SELECT
    NAME
FROM
    Students A
    INNER JOIN Packages B
        ON A.ID = B.ID
    INNER JOIN Friend_Salary C
        ON A.ID = C.ID
WHERE
    B.Salary < C.Salary
ORDER BY
    C.Salary