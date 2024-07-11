SHOW INDEX FROM companycars;

SHOW INDEX FROM constructiontoolsstore;

CREATE INDEX carIndx ON companycars (id);
SHOW INDEX FROM companycars;

EXPLAIN SELECT constructiontoolsstore.shopName, companycars.carName, companycars.carType, employees.empPosition, employees.initials
FROM (constructiontoolsstore INNER JOIN companycars) INNER JOIN employees
ON companycars.id = employees.carID AND constructiontoolsstore.id = companycars.shopID
WHERE employees.empPosition = "Loader"
