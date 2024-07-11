INSERT INTO companycars VALUES 
	(NULL, "Ford Fiesta", "passenger", "2020-06-21 12:00:00", 1),
   	(NULL, "Ford Transit", "cargo", "2020-04-30 12:00:00", 1),
   	(NULL, "Wolkswagen Caddy", "cargo", "2020-09-15 12:00:00", 1),
    (NULL, "Wolkswagen Touareg", "cargo", "2020-10-12 12:00:00", 1),
    (NULL, "Chevrolet Aveo", "passenger", "2020-08-10 12:00:00", 1)

CREATE TABLE companycars1
	AS SELECT id, carName, carType, lastInspectionDate, shopID FROM companycars
	WHERE lastInspectionDate > "2020-07-01 12:00:00";

CREATE TABLE companycars2
	AS SELECT id, carName, carType, lastInspectionDate, shopID FROM companycars
	WHERE lastInspectionDate < "2020-09-01 12:00:00";

SELECT * FROM companycars1
UNION SELECT * FROM companycars2

SELECT * FROM companycars1
WHERE id IN (SELECT id FROM companycars2)

SELECT * FROM companycars1
WHERE id  NOT IN (SELECT id FROM companycars2)

SELECT * FROM companycars1, companycars2;