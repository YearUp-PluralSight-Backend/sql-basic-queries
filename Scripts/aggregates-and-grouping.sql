
-- 1.
SELECT count(*) 
FROM northwind.Suppliers s ; -- 29  s == Suppliers

-- 2.
SELECT ROUND(SUM(e.Salary), 2) TotalSalary 
from northwind.Employees e; 

-- 3.
SELECT ROUND(MIN(p.UnitPrice), 2) CheapestPrice 
from northwind.Products p; 

-- 4.
SELECT ROUND(AVG(p.UnitPrice), 2) AveragePrice 
FROM northwind.Products p ;

-- 5.
SELECT ROUND(MAX(p.UnitPrice), 2 ) CheapestPrice 
from northwind.Products p; 

-- 6.
SELECT p.SupplierID, COUNT(p.ProductName) AS "Number Of Products"
FROM northwind.Products p
GROUP BY p.SupplierID;

-- 7.
SELECT p.CategoryID, ROUND(AVG(p.UnitPrice), 2) AveragePrice 
from northwind.Products p 
group by p.CategoryID ;

-- 8.
SELECT p.SupplierID, COUNT(p.ProductName) AS "Number Of Products"
FROM northwind.Products p
GROUP BY p.SupplierID HAVING COUNT(p.ProductName) = 5;

-- 9.
SELECT p.ProductID, p.ProductName, ROUND(p.UnitPrice * p.QuantityPerUnit, 4) AS InventoryValue
FROM northwind.Products p
ORDER BY (p.UnitPrice * p.QuantityPerUnit), p.ProductName ;





