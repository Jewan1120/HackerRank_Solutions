--Problem Statement
/*
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| N           | Integer      |
| P           | Integer      |
+-------------+--------------+

# Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

・Root: If node is root node.
・Leaf: If node is leaf node.
・Inner: If node is neither root nor leaf node.


*/

--Solution (MySQL)

SELECT 
    N 
    , CASE
        WHEN P IS NULL THEN "Root" 
        WHEN N IN (SELECT P FROM BST) THEN "Inner"
        ELSE "Leaf"
    END AS Node_Type
FROM
    BST
ORDER BY
    N