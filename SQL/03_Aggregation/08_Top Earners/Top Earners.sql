--Problem Statement
/*
We define an employee's total earnings to be their monthly salary * months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

The EMPLOYEES table is described as follows:
+-------------+-------------+
| Field       | Type        |
+-------------+-------------+
| employee_id | Integer     |
| name        | String      |
| months      | Integer     |
| salary      | Integer     |
+-------------+-------------+

*/

--Solution (MySQL)

SELECT
    SALARY * MONTHS AS TOTAL
    , COUNT(EMPLOYEE_ID)
FROM
    EMPLOYEE
GROUP BY
    TOTAL
ORDER BY
    TOTAL DESC
LIMIT 1
