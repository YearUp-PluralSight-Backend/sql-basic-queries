-- 1. 
SELECT * from northwind.Suppliers s WHERE ContactName = "Yiming";
INSERT INTO Suppliers 
    (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage) 
VALUES
    ('Year Up United', 'Yiming', 'Student', '456 Education Rd.', 'New York', 'NY', '02116', 'USA', '+1-617-555-7890', '+1-617-555-1234', 'http://www.yearup.org');
	
 -- 2. 
SELECT * FROM northwind.Products p WHERE p.ProductName  = "Organic Green Tea";
INSERT INTO Products 
    (ProductName, SupplierID, CategoryID, QuantityPerUnit , UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) 
VALUES
    ('Organic Green Tea', 30, 5, '20 bags per box', 15.99, 120, 50, 20, 0);
    
-- 3. 
SELECT 
	* 
FROM 
	Products p 
join Suppliers s 
	on p.SupplierID = s.SupplierID ; 

-- 4. 
-- SET SQL_SAFE_UPDATES = 0;

UPDATE Products 
SET UnitPrice = UnitPrice  * 1.15
WHERE ProductID = 78;

-- SET SQL_SAFE_UPDATES = 1;



-- 5.
SELECT 
	* 
FROM 
	Products p 
join 
	Suppliers s 
	on p.SupplierID = s.SupplierID 
WHERE p.SupplierID = 30 


-- 6. 
DELETE FROM Products p
WHERE ProductID = 78;


-- 7.
DELETE FROM Suppliers 
WHERE SupplierID = 30;

-- 8.
SELECT 
	* 
FROM 
	Products p;

-- 9.
SELECT 
	* 
FROM 
	Suppliers s;

