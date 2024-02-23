--Problem Statement
/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies

follows this hierarchy: 
Founder -> Lead Manager -> Senior Manager -> Manager -> Employee

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

# Note : The tables may contain duplicate records.

# Note : The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

The following tables contain company data:

# Company : The company_code is the code of the company and founder is the founder of the company.
+--------------+--------------+
| Column       | Type         |
+--------------+--------------+
| company_code | String       |
| founder      | String       |
+--------------+--------------+

# Lead_Manager : The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company.
+-------------------+--------------+
| Column            | Type         |
+-------------------+--------------+
| lead_manager_code | String       |
| company_code      | String       |
+-------------------+--------------+

# Senior_Manager : The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.
+---------------------+--------------+
| Column              | Type         |
+---------------------+--------------+
| senior_manager_code | String       |
| lead_manager_code   | String       |
| company_code        | String       |
+---------------------+--------------+

# Manager : The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.
+---------------------+--------------+
| Column              | Type         |
+---------------------+--------------+
| manager_code        | String       |
| senior_manager_code | String       |
| lead_manager_code   | String       |
| company_code        | String       |
+---------------------+--------------+

# Employee : The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.
+---------------------+--------------+
| Column              | Type         |
+---------------------+--------------+
| employee_code       | String       |
| manager_code        | String       |
| senior_manager_code | String       |
| lead_manager_code   | String       |
| company_code        | String       |
+---------------------+--------------+

*/

--Solution (MySQL)

SELECT
    CP.company_code
    , CP.founder
    , COUNT(DISTINCT lead_manager_code)
    , COUNT(DISTINCT senior_manager_code)
    , COUNT(DISTINCT manager_code)
    , COUNT(DISTINCT employee_code)
FROM
    COMPANY CP
    LEFT JOIN EMPLOYEE EP
        ON EP.company_code = CP.company_code
GROUP BY
    CP.company_code
    , CP.founder
ORDER BY
    CP.company_code