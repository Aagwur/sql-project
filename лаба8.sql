SELECT employees.id, employees.initials FROM employees WHERE initials LIKE '%do%'
ORDER BY ID ASC;

SELECT employees.id, employees.initials, employees.birthDate FROM employees ORDER BY birthDate DESC LIMIT 1;

SELECT companycars.carName, companycars.carType, constructiontoolsstore.shopName
FROM constructiontoolsstore INNER JOIN companycars ON constructiontoolsstore.id = companycars.shopID
GROUP BY carType
