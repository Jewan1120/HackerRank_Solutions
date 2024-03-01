--Problem Statement
/*
Julia asked her students to create some coding challenges. 
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. 
If more than one student created the same number of challenges, then sort the result by hacker_id. 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, 
then exclude those students from the result.

# Hackers
+--------------+--------------+
| Column       | Type         |
+--------------+--------------+
| hacker_id    | Integer      |
| name         | String       |
+--------------+--------------+

# Challenges
+--------------+--------------+
| Column       | Type         |
+--------------+--------------+
| challenge_id | Integer      |
| name         | String       |
+--------------+--------------+

*/

--Solution (MySQL)

WITH
    Counting AS (
        SELECT
            COUNT(*) Created
        FROM
            Challenges
        GROUP BY
            hacker_id
    )

SELECT
    H.hacker_id
    , H.name
    , COUNT(H.hacker_id) challenges_created
FROM
    Hackers H
    INNER JOIN Challenges C
        ON H.hacker_id = C.hacker_id
GROUP BY
    H.hacker_id
    , H.name
HAVING
    challenges_created IN (SELECT MAX(Created) FROM Counting)
    OR challenges_created IN (SELECT Created FROM Counting GROUP BY Created HAVING COUNT(Created) = 1)
ORDER BY
    challenges_created DESC
    , H.hacker_id