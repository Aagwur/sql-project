INSERT INTO constructiontoolsstore VALUES (1, "Fixik", "Naukova st. 15", "10:00 - 18:00", "0954338921", "fixik_shop88@gmail.com")
INSERT INTO constructiontoolsstore VALUES 
	(NULL, "Fixik Smart", "Zolota st. 40", "10:00 - 18:00", "0956789432", "fixik_smart_shop55@gmail.com"),
   	(NULL, "Fixik", "Zelena st. 110", "10:00 - 18:00", "0955659003", "fixik_shop66@gmail.com")
LOAD DATA LOCAL INFILE 'C:\Users\Aagwur\Desktop\учоба\СУБД\лаби\companycars.txt' INTO TABLE companycars LINES
TERMINATED BY '\r\n';
SET SQL_SAFE_UPDATES = 0;
UPDATE companycars SET carName = "Renault Logan"
WHERE carType = "passenger";
UPDATE companycars SET companycars.id = companycars.id+ 1
ORDER BY companycars.id DESC;
DELETE FROM companycars
WHERE (companycars.id > 2)




