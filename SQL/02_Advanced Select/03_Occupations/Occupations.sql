--Problem Statement
/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
# Note : Print NULL when there are no more names corresponding to an occupation.

The OCCUPATIONS table is described as follows:
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| Name        | String       |
| Occupation  | String       |
+-------------+--------------+

# Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

*/

--Solution (MySQL)

SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS 'Doctor'
    , MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS 'Professor'
    , MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS 'Singer'
    , MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS 'Actor'
FROM
    (
        SELECT
            Name
            , Occupation
            , ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) RNK
        FROM OCCUPATIONS
    ) TMP
GROUP BY RNK
ORDER BY RNK;