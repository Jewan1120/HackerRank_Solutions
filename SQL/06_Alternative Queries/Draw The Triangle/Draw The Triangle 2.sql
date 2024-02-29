--Problem Statement
/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).

*/

--Solution (MySQL)

DELIMITER $$
    CREATE PROCEDURE triangle(CNT INT) 
    BEGIN
        DECLARE I INT DEFAULT 1;
        WHILE I <= CNT DO 
            SELECT repeat('* ', I);
            SET I := I + 1;
        END WHILE;
    END $$
DELIMITER ;
CALL triangle(20);