CREATE VIEW companycars3 AS SELECT DISTINCT id, carName, lastInspectionDate
FROM companycars;

SELECT * FROM companycars3
WHERE lastInspectionDate < "2020-09-01 12:00:00";

SELECT constructiontoolsstore.id, constructiontoolsstore.shopName, companycars3.id, companycars3.carName, companycars3.lastInspectionDate
FROM constructiontoolsstore, companycars3
WHERE constructiontoolsstore.id = companycars3.id 

SELECT constructiontoolsstore.id, constructiontoolsstore.shopName, companycars3.id, companycars3.carName, companycars3.lastInspectionDate
FROM constructiontoolsstore, companycars3
WHERE constructiontoolsstore.id = companycars3.id AND lastInspectionDate < "2020-07-01 12:00:00";
