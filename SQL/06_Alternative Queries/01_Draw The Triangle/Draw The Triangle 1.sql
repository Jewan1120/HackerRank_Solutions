--Problem Statement
/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

*/

--Solution (MySQL)

DELIMITER $$
    CREATE PROCEDURE triangle(CNT INT) 
    BEGIN 
        WHILE CNT > 0 DO 
            SELECT repeat('* ', CNT);
            SET CNT := CNT - 1;
        END WHILE;
    END $$
DELIMITER ;
CALL triangle(20);