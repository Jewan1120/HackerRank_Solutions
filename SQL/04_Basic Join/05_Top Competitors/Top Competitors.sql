--Problem Statement
/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
Order your output in descending order by the total number of challenges in which the hacker earned a full score.
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

# Hackers
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| hacker_id   | Integer      |
| name        | String       |
+-------------+--------------+

# Difficulty
+------------------+--------------+
| Column           | Type         |
+------------------+--------------+
| difficulty_level | Integer      |
| score            | Integer      |
+------------------+--------------+

# Challenges
+------------------+--------------+
| Column           | Type         |
+------------------+--------------+
| challenge_id     | Integer      |
| hacker_id        | Integer      |
| difficulty_level | Integer      |
+------------------+--------------+

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
    A.hacker_id
    , name
FROM
    Hackers A
    INNER JOIN Submissions B
        ON B.hacker_id = A.hacker_id
    INNER JOIN Challenges C
        ON C.challenge_id = B.challenge_id
    INNER JOIN Difficulty D
        ON D.difficulty_level = C.difficulty_level
        AND D.score = B.score
GROUP BY
    hacker_id
    , name
HAVING
    COUNT(*) > 1
ORDER BY
    COUNT(*) DESC
    , hacker_id