USE mydb;
ALTER TABLE products
	DROP FOREIGN KEY products_ibfk_2,
	DROP INDEX products.supplierID; 
ALTER TABLE products
	MODIFY COLUMN cost CHAR(40) NULL,
	DROP COLUMN productType;
ALTER TABLE productsuppliers
	MODIFY COLUMN organizationName CHAR(40) NULL;
ALTER TABLE products
	MODIFY id INT(32) UNSIGNED NOT NULL,
	ADD COLUMN barCode INT(32) UNSIGNED NOT NULL,
	ADD CONSTRAINT UNIQUE UQ_product_barCode (id, barCode);
ALTER TABLE productsuppliers
	DROP FOREIGN KEY productsuppliers_ibfk_1,
	ADD CONSTRAINT productsuppliersID FOREIGN KEY (shopID)
	REFERENCES constructiontoolsstore (id) ON DELETE CASCADE;




