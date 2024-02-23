--Problem Statement
/*
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

The STUDENTS table is described as follows:
+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| employee_id | Integer      |
| name        | String       |
| months      | Integer      |
| salary      | Integer      |
+-------------+--------------+
*/

--Solution (MySQL)

SELECT
    NAME
FROM
    EMPLOYEE
ORDER BY
    NAME