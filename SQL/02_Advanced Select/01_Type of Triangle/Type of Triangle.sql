--Problem Statement
/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

・Equilateral: It's a triangle with  sides of equal length.
・Isosceles: It's a triangle with  sides of equal length.
・Scalene: It's a triangle with  sides of differing lengths.
・Not A Triangle: The given values of A, B, and C don't form a triangle.

The TRIANGLES table is described as follows:
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| A           | Integer      |
| B           | Integer      |
| C           | Integer      |
+-------------+--------------+
*/

--Solution (MySQL)

SELECT
    CASE
        WHEN A + B <= C || A + C <= B || B + C <= A THEN 'Not A Triangle'
        WHEN A = B && B = C THEN 'Equilateral'
        WHEN A <> B && B <> C && A <> C THEN 'Scalene'
        ELSE 'Isosceles'
    END AS TYPE
FROM
    TRIANGLES