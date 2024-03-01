--Problem Statement
/*
The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of  from your result.

# Hackers
+--------------+--------------+
| Column       | Type         |
+--------------+--------------+
| hacker_id    | Integer      |
| name         | String       |
+--------------+--------------+

# Submissions
+---------------+--------------+
| Column        | Type         |
+---------------+--------------+
| submission_id | Integer      |
| hacker_id     | Integer      |
| challenge_id  | Integer      |
| score         | Integer      |
+---------------+--------------+

*/

--Solution (MySQL)

SELECT
    H.hacker_id
    , H.name
    , SUM(S.max_score) total_score
FROM
    Hackers H
    INNER JOIN (
            SELECT 
                hacker_id
                , challenge_id
                , MAX(score) max_score
            FROM Submissions
            WHERE score <> 0
            GROUP BY hacker_id, challenge_id
        ) S
        ON H.hacker_id = S.hacker_id
GROUP BY
    H.hacker_id
    , H.name
ORDER BY
    total_score DESC
    , H.hacker_id