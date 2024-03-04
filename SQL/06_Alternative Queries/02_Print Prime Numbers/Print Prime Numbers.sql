--Problem Statement
/*
Write a query to print all prime numbers less than or equal to 1000.
Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers <= 10 would be:
2&3&5&7

*/

--Solution (MySQL)

DELIMITER $$
    CREATE PROCEDURE PROC(IN CNT INT)
    BEGIN
        DECLARE PRIME VARCHAR(1000);
        DECLARE i INT DEFAULT 2;
        DECLARE j INT DEFAULT 2;
        DECLARE FLG INT DEFAULT TRUE;
        WHILE(i <= CNT) DO
            SET j := 2;
            SET FLG := TRUE;
            PRIME_CHK:BEGIN
                WHILE(j <= SQRT(i)) DO
                    IF(MOD(i, j) = 0) THEN
                        SET FLG := FALSE;
                        LEAVE PRIME_CHK;
                    END IF;
                    SET j := j + 1;
                END WHILE;
            END PRIME_CHK;
            IF(FLG) THEN
                SET PRIME := CONCAT_WS('&', PRIME, i);
            END IF;
            SET i := i + 1;
        END WHILE;
        SELECT PRIME;
    END $$
DELIMITER ;

CALL PROC(1000);