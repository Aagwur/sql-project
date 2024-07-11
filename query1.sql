CREATE DATABASE mydb;
USE mydb;
CREATE TABLE ConstructionToolsStore (  
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    shopName VARCHAR (45),
    address VARCHAR (45),
    hoursOfWorking VARCHAR (45),
    phone VARCHAR (13),
    email VARCHAR (45)
);

CREATE TABLE CompanyCars (  
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    carName VARCHAR (45),
    carType VARCHAR (45),
    lastInspectionDate VARCHAR (45),
    shopID INT,
    FOREIGN KEY (shopID) REFERENCES ConstructionToolsStore(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION
);

CREATE TABLE Employees (  
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    initials VARCHAR(45),
    birthDate DATETIME,
    empPosition VARCHAR(45),
    workShifts VARCHAR(45),
    phone VARCHAR(13),
    email VARCHAR(45),
    address  VARCHAR(45),
    shopID  INT,
    FOREIGN KEY (shopID) REFERENCES ConstructionToolsStore(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION,
    carID INT,
    FOREIGN KEY (carID) REFERENCES CompanyCars(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION
);

CREATE TABLE CustomerLoyaltyCards (  
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    initials VARCHAR(45),
    birthDate DATETIME,
    bonusesAmount INT,
    expirationDate DATETIME,
    phone VARCHAR(13),
    email VARCHAR(45),
    shopID  INT,
    FOREIGN KEY (shopID) REFERENCES ConstructionToolsStore(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION
);

CREATE TABLE ProductSuppliers (  
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    organizationName VARCHAR(45),
    daysOfDelivery VARCHAR(45),
    phone VARCHAR(13),
    email VARCHAR(45),
    shopID  INT,
    FOREIGN KEY (shopID) REFERENCES ConstructionToolsStore(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION
);

CREATE TABLE Products (  
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    productType VARCHAR(45),
    productName VARCHAR(45),
    cost DOUBLE,
    amountInWarehouse INT,
    shopID  INT,
    FOREIGN KEY (shopID) REFERENCES ConstructionToolsStore(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION,
	supplierID  INT,
    FOREIGN KEY (supplierID) REFERENCES ProductSuppliers(id)
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION
);







