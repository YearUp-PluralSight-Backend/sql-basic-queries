-- 1. Get the product with the highest unit price
SELECT 
    p.ProductName, 
    p.UnitPrice 
FROM 
    northwind.Products p 
WHERE 
    p.UnitPrice = (
        SELECT MAX(UnitPrice) 
        FROM northwind.Products
    );

-- 2. Get order details for orders shipped by "Federal Shipping"
SELECT 
    o.OrderID, 
    o.ShipName, 
    o.ShipAddress 
FROM 
    northwind.Orders o  
WHERE 
    o.ShipName = (
        SELECT ShipName 
        FROM northwind.Shippers
        WHERE CompanyName = "Federal Shipping"
    );

-- 3. Get order IDs and employee IDs for orders containing "Sasquatch Ale"
SELECT 
    o.EmployeeID 
FROM 
    northwind.Orders o 
WHERE 
    o.OrderID IN (
        SELECT OrderID 
        FROM northwind.`Order Details` od 
        WHERE od.ProductID = (
            SELECT p.ProductID 
            FROM northwind.Products p 
            WHERE p.ProductName = "Sasquatch Ale"
        )
    )
ORDER BY 
    OrderID DESC;

-- 4. Get the full name of the employee who handled a specific order
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS "Full Name"
FROM 
    northwind.Employees e 
WHERE 
    e.EmployeeID = (
        SELECT o.EmployeeID 
        FROM northwind.Orders o 
        WHERE OrderID = (
            SELECT OrderID 
            FROM northwind.`Order Details` od 
            WHERE OrderID = 10266
        )
    );

-- 5. Get the company name of the customer who placed a specific order
SELECT 
    c.CompanyName 
FROM 
    northwind.Customers c 
WHERE 
    c.CustomerID = (
        SELECT o.CustomerID 
        FROM northwind.Orders o 
        WHERE OrderID = (
            SELECT OrderID 
            FROM northwind.`Order Details` od 
            WHERE OrderID = 10266
        )
    );