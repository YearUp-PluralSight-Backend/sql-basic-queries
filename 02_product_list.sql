-- -- Exercise 02_product_list.sql     
-- 
-- 1.
SELECT *   
from Products p ;   -- the Products table holds the Northwind sells.

-- 2. 
SELECT ProductID, ProductName, UnitPrice 
from Products;

-- 3. 
SELECT ProductID, ProductName, UnitPrice 
from Products 
order by UnitPrice ASC;

-- 4. 
SELECT ProductID, ProductName, UnitPrice 
from Products 
WHERE UnitPrice < 7.50; 

-- 5.
SELECT ProductID, ProductName, UnitPrice 
	from Products 
	WHERE Products.UnitsInStock  > 100 
	ORDER by UnitPrice DESC; 

-- 6.
SELECT ProductID, ProductName, UnitPrice 
from Products 
WHERE  Products.UnitsInStock > 100 
ORDER by UnitPrice, ProductName DESC; 

-- 7.
SELECT ProductID ID, ProductName Name, UnitPrice Price 
from Products
where UnitsInStock  = 0 && UnitsOnOrder <= 1 
ORDER by ProductName ;

-- 8.
SELECT * 
from Categories;

-- 9. 
SELECT * 
from Categories 
where CategoryName = "Seafood"; -- 8

-- 10. 
SELECT *
FROM Products
WHERE CategoryID = (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = "Seafood"
);

-- 11. 
SELECT 
CONCAT(FirstName, " ", LastName) "fullName", FirstName, LastName 
from Employees;

-- 12. 
SELECT 
CONCAT(FirstName, " ", LastName) "fullName", FirstName, LastName 
from Employees
where Title like "%manager";

-- 13. 
SELECT 
DISTINCT Title 
from Employees;

-- 14. 
SELECT * 
from Employees 
WHERE Salary 
BETWEEN 2000 and 2500;

-- 15.
SELECT * 
from Suppliers ;

-- 16. 
SELECT * 
from Products
WHERE SupplierID = (
		SELECT SupplierID 
		from Suppliers s 
		WHERE s.CompanyName = "Tokyo Traders" 
);








