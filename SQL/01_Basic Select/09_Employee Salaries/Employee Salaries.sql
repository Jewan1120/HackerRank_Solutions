--Problem Statement
/*
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

The STUDENTS table is described as follows:
+-------------+--------------+
| Feild       | Type         |
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
WHERE
    SALARY > 2000
    AND MONTHS < 10
ORDER BY
    EMPLOYEE_ID