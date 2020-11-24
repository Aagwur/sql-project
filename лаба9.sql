SELECT carName, carType, shopName, COUNT(companycars.id) 
FROM companycars INNER JOIN constructiontoolsstore 
ON companycars.shopID = constructiontoolsstore.id GROUP BY shopName;

SELECT employees.initials, YEAR(employees.birthDate) AS year,  
MONTHNAME(employees.birthDate) AS month, COUNT(employees.id) 
FROM employees GROUP BY year;

SELECT constructiontoolsstore.shopName, AVG(salary) AS avgSalary
FROM employees INNER JOIN constructiontoolsstore ON
constructiontoolsstore.id = employees.shopID GROUP BY constructiontoolsstore.id; 

SELECT constructiontoolsstore.shopName, (COUNT(companycars.id)
 + COUNT(employees.id)) AS rating
FROM (companycars INNER JOIN employees) INNER JOIN constructiontoolsstore ON
companycars.shopID = constructiontoolsstore.id AND employees.shopID =
constructiontoolsstore.id
ORDER BY rating DESC LIMIT 1; 
