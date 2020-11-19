SELECT carName FROM companycars WHERE lastInspectionDate = "2020-07-05 12:00:00";

SELECT companycars.carName, constructiontoolsstore.shopName 
FROM constructiontoolsstore LEFT JOIN companycars ON constructiontoolsstore.id = companycars.shopID;

SELECT companycars.carName, companycars.carType, constructiontoolsstore.shopName
FROM constructiontoolsstore INNER JOIN companycars ON constructiontoolsstore.id = companycars.shopID
WHERE companycars.carType = "cargo";

SELECT constructiontoolsstore.shopName, companycars.carName, companycars.carType, employees.empPosition, employees.initials
FROM (constructiontoolsstore INNER JOIN companycars) INNER JOIN employees
ON companycars.id = employees.carID AND constructiontoolsstore.id = companycars.shopID
WHERE employees.empPosition = "Loader";

SELECT constructiontoolsstore.shopName, companycars.carName, companycars.carType
FROM constructiontoolsstore INNER JOIN companycars
ON constructiontoolsstore.id = companycars.shopID
WHERE companycars.id IN (SELECT employees.carID FROM employees WHERE employees.empPosition = "Director");

SELECT constructiontoolsstore.shopName FROM constructiontoolsstore
WHERE NOT EXISTS
(SELECT * FROM companycars WHERE constructiontoolsstore.id = companycars.shopID);

SELECT employees.initials, employees.phone FROM employees
WHERE employees.phone REGEXP '[0-9]';
