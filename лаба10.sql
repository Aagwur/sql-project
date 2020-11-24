CREATE FUNCTION mydb_encode (emp VARCHAR(45))
RETURNS TINYBLOB
RETURN AES_ENCRYPT(emp, 'key-key');
CREATE FUNCTION mydb_decode (emp TINYBLOB)
RETURNS VARCHAR(45)
RETURN AES_DECRYPT(emp, 'key-key');

DELIMITER //
CREATE PROCEDURE cars_count (IN date1 DATETIME, IN
date2 DATETIME)
BEGIN
DECLARE error VARCHAR(45);
SET error = 'Некоректно задані дати';
IF (date1<=date2) THEN
BEGIN
CREATE TABLE IF NOT EXISTS mydb.stats (carName VARCHAR(45), shopName VARCHAR(45), lastInspectionDate DATETIME,
amount INT UNSIGNED);
TRUNCATE mydb.stats;
INSERT INTO mydb.stats SELECT carName, shopName, lastInspectionDate,
COUNT(companycars.id) AS amount FROM
companycars INNER JOIN constructiontoolsstore
ON companycars.shopID = constructiontoolsstore.id
WHERE companycars.lastInspectionDate BETWEEN date1 AND date2
GROUP BY shopName;
END;
ELSE SELECT error;
END IF;
END//
DELIMITER ;

SELECT id, mydb_decode(initials) FROM employees;

CALL cars_count("2020-06-01 12:00:00", "2020-09-01 12:00:00");
SELECT * FROM stats; 
