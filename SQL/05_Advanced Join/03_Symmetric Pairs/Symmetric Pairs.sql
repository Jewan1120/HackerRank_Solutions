--Problem Statement
/*
You are given a table, Functions, containing two columns: X and Y.

# Functions
+------- +---------+
| Column | Type    |
+--------+---------+
| X      | Integer |
| Y      | Integer |
+--------+---------+

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

*/

--Solution (MySQL)

SELECT
    CASE
        WHEN F1.X < F2.X THEN F1.X
        ELSE F2.X
    END X
    , CASE
        WHEN F1.X < F2.X THEN F1.Y
        ELSE F2.Y
    END Y
FROM
    Functions F1
    INNER JOIN Functions F2
        ON F1.X = F2.Y AND F1.Y = F2.X
GROUP BY
    X
    , Y
HAVING
    COUNT(*) > 1
ORDER BY
    X