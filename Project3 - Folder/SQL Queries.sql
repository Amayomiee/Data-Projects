use onlinefreshproducestore;

select*from managers;

select*from departments;

select*from employees;

select*from customers;

select*from Orders;

select*from websessions;

select*from users;

select*from Inventory;

select*from products;

select*from warehouses;

select*from warehouseproducts;

select*from orderproducts;

-- Query 1
SELECT 
p.Product_ID, 
p.Name AS Product_Name, 
i.Reorder_Point, 
i.Warehouse_ID, 
w.Warehouse_Name, 
COUNT(*) AS Stocking_Issues_Count 
FROM Products p 
JOIN Inventory i ON p.Product_ID = i.Product_ID 
JOIN Warehouses w ON i.Warehouse_ID = w.Warehouse_ID 
WHERE i.Quantity < i.Reorder_Point 
GROUP BY p.Product_ID, i.Warehouse_ID 
ORDER BY i.Warehouse_ID, p.Product_ID; 

-- Query 2
SELECT 
op.Product_ID, 
p.Name AS Product_Name, 
COUNT (op.Product_ID) AS OrderFrequency 
FROM orderproducts op 
JOIN products p ON op.Product_ID = p.Product_ID 
GROUP BY op.Product_ID, p.Name 
ORDER BY OrderFrequency DESC 
LIMIT 3; 

-- Query 3
SELECT 
o.Customer_ID, 
c.First_Name, 
c.Last_Name, 
COUNT(o.Customer_ID) AS PurchaseFrequency 
FROM Orders o 
JOIN Customers c ON o.Customer_ID = c.Customer_ID 
GROUP BY o.Customer_ID, c.First_Name, c.Last_Name 
ORDER BY PurchaseFrequency DESC 
LIMIT 5; 

-- Query 4
SELECT o.Order_Date, 
SUM(op.Quantity * p.Price) AS TotalRevenue 
FROM OrderProducts op 
JOIN Products p ON op.Product_ID = p.Product_ID 
JOIN Orders o ON op.Order_ID = o.Order_ID 
WHERE o.Order_Date >= '2023-08-01' AND o.Order_Date < '2023-09-01' 
GROUP BY o.Order_Date 
ORDER BY o.Order_Date; 

 -- Query 5
 SELECT 
d.Department_Name, 
COUNT(e.Employee_ID) AS NumberOfEmployees 
FROM Departments d 
LEFT JOIN Employees e ON d.Department_ID = e.Department_ID 
GROUP BY d.Department_Name; 

-- Query 6
SELECT 
Order_ID, 
Order_Date, 
Order_Status, Shipping_Address, Shipping_City, Shipping_Postal_Code 
FROM Orders 
WHERE Order_Status = 'Shipped' 
AND DATE_ADD (Order_Date, INTERVAL 3 DAY) < CURDATE(); 

-- Query 7
SELECT 
DATE(Session_Start_Time) AS Date, 
SUM(Page_Views) AS TotalPageViews 
FROM WebSessions 
GROUP BY Date 
ORDER BY TotalPageViews DESC 
LIMIT 5; 

-- Query 8
 SELECT 
o.Order_ID, 
c.First_Name, 
c.Last_Name, 
c.Email_Address, 
o.Order_Date, 
o.Payment_Status 
FROM Orders o 
JOIN Customers c ON o.Customer_ID = c.Customer_ID 
WHERE o.Payment_Status = 'Pending' 
AND DATEDIFF(CURDATE(), o.Order_Date) > 2; 

-- Query 9
SELECT 
w.Warehouse_Name, 
COUNT (wp.Product_ID) AS Product_Count 
FROM Warehouses w 
LEFT JOIN WarehouseProducts wp ON w.Warehouse_ID = wp.Warehouse_ID 
GROUP BY w.Warehouse_ID, w.Warehouse_Name 
ORDER BY Product_Count DESC; 

-- Indexing and constraints
-- Adding a unique constraint on Product_ID and Product_Name in the Products table
ALTER TABLE Products
ADD CONSTRAINT uc_Product UNIQUE (Product_ID, Name);

-- Adding a check constraint to validate email formats in the Customers table
ALTER TABLE Customers
ADD CONSTRAINT chk_ValidEmail
CHECK (Email_Address LIKE '%_@%_.__%');

-- Adding a foreign key constraint with ON DELETE CASCADE
ALTER TABLE Orders
ADD CONSTRAINT fk_CustomerID
FOREIGN KEY (Customer_ID)
REFERENCES Customers(Customer_ID)
ON DELETE CASCADE;

-- Adding a unique constraint on the combination of Order_ID and Product_ID
ALTER TABLE OrderProducts
ADD CONSTRAINT uc_OrderProduct
UNIQUE (Order_ID, Product_ID);

-- Adding a unique constraint on the combination of Warehouse_ID and Product_ID
ALTER TABLE WarehouseProducts
ADD CONSTRAINT uc_WarehouseProduct
UNIQUE (Warehouse_ID, Product_ID);

-- Adding a unique constraint on the combination of Warehouse_ID and Product_ID
ALTER TABLE Inventory
ADD CONSTRAINT uc_Inventory
UNIQUE (Warehouse_ID, Product_ID);

-- Creating an index on User_ID column
CREATE INDEX idx_WebSessions_UserID ON WebSessions (User_ID);

-- Creating an index on Customer_ID column
CREATE INDEX idx_WebSessions_CustomerID ON WebSessions (Customer_ID);

-- Creating an index on Warehouse_ID column
CREATE INDEX idx_Warehouse_WarehouseID ON Warehouses (Warehouse_ID);

-- Creating an index on Product_ID column
CREATE INDEX idx_products_ProductID ON Products (Product_ID);

-- Creating an index on Customer_ID column
CREATE INDEX idx_Customer_CustomerID ON Customers (Customer_ID);

-- Creating an index on Order_ID column
CREATE INDEX idx_Order_OrderID ON Orders (Order_ID);

-- Creating an index on Inventory_ID column
CREATE INDEX idx_Inventory_InventoryID ON Inventory (Inventory_ID);

-- Creating an index on Employee_ID column
CREATE INDEX idx_Employee_EmployeeID ON Employees (Employee_ID);

-- Creating an index on Department_ID column
CREATE INDEX idx_Department_DepartmentID ON Departments (Department_ID);

-- This trigger will prevent the insertion of inventory records with a quantity less than or equal to zero
DELIMITER //

CREATE TRIGGER trg_EnforcePositiveQuantity
BEFORE INSERT ON Inventory
FOR EACH ROW
BEGIN
    IF NEW.Quantity <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot insert inventory record with non-positive quantity';
    END IF;
END;
//

DELIMITER ;
