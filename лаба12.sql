CREATE
TRIGGER shop_delete BEFORE DELETE
ON constructiontoolsstore FOR EACH ROW
UPDATE companycars SET shopID = 4 WHERE shopID = OLD.id;
DELETE FROM constructiontoolsstore WHERE id = 1;

CREATE
TRIGGER employee_salary BEFORE INSERT
ON employees FOR EACH ROW
SET NEW.salary = 10000;
INSERT INTO employees VALUES
	(NULL, "Horodnyy M.I.", '1997-09-10', 'Loader', 'Mon-Fri', "0974586749", "mykolaolo@gmail.com", "st Okolychna 8", 3, 1, 12000)

CREATE TRIGGER car_date AFTER INSERT
ON companycars FOR EACH ROW 
UPDATE companycars SET NEW.lastInspectionDate = DATE("2020-02-22 12:00:00");
INSERT INTO companycars VALUES 
		(NULL, "Skoda Fabia", "passenger", "2010-02-01 12:00:00", 1);
