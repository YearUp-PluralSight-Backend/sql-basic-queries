-- 1.
SELECT 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryID 
from 
	northwind.Products p 
join 
	northwind.Categories c 
	on p.CategoryID = c.CategoryID 
ORDER by 
	c.CategoryName, p.ProductName;
	
-- 2. 
SELECT 
    p.ProductID, 
    p.ProductName, 
    p.UnitPrice,
    s.CompanyName 
FROM 
    northwind.Products p
JOIN 
    northwind.Suppliers s 
    ON s.SupplierID = p.SupplierID
WHERE 
    p.UnitPrice > 75
ORDER BY 
    p.ProductName;
    
  
-- 3.
    
SELECT 
    p.ProductID, 
    p.ProductName, 
    p.UnitPrice,
    c.CategoryName,
    s.CompanyName 
FROM 
    northwind.Products p
join 
	northwind.Categories c 
	on p.CategoryID = c.CategoryID 
JOIN 
    northwind.Suppliers s 
    ON s.SupplierID = p.SupplierID
ORDER BY 
    p.ProductName;
    
   
 -- 4. 
   
SELECT 
    p.ProductName, 
    c.CategoryName
FROM 
    northwind.Products p
join 
	northwind.Categories c 
	on p.CategoryID = c.CategoryID 
WHERE 
	p.UnitPrice = (
					SELECT 
						MAX(UnitPrice) maxPrice 
					from 
						northwind.Products);

   
-- 5. 
SELECT 
	o.OrderID, 
	o.ShipName, 
	o.ShipAddress,
	s.CompanyName 
from 
	northwind.Orders o 
join 
	northwind.Shippers s 
WHERE 
	o.ShipCountry = "Germany";


-- 6.

SELECT 
	o.OrderID, 
	o.OrderDate, 
	o.ShipAddress 
FROM 
	northwind.Orders o
join 
	northwind.`Order Details` od
	on o.OrderID = od.OrderID 
join 
	northwind.Products p
	on p.ProductID = od.ProductID 
WHERE 
	p.ProductName = "Sasquatch Ale"
	
	
	
	
