START TRANSACTION; 
	INSERT INTO companycars VALUES 
		(NULL, "Skoda Fabia", "passenger", "2020-02-22 12:00:00", 1);
	INSERT INTO companycars VALUES 
		(NULL, "Volkswagen Transporter", "cargo", "2020-05-23 12:00:00", "st. Zelena 145", 1);
ROLLBACK; 

START TRANSACTION; 
	INSERT INTO companycars VALUES 
		(NULL, "Skoda Fabia", "passenger", "2020-02-22 12:00:00", 1);
	INSERT INTO companycars VALUES 
		(NULL, "Volkswagen Transporter", "cargo", "2020-05-23 12:00:00", 1);
COMMIT; 
