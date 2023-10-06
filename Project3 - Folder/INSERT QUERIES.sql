use onlinefreshproducestore;

-- Populate Departments table 

INSERT INTO Departments (Department_ID, Department_Name, Manager_ID) 

VALUES 

    (101, 'Production', 201), 

    (102, 'Customer Support', 202), 

    (103, 'Operations', 203), 

    (104, 'Finance', 204), 

    (105, 'IT', 205); 

  

-- Populate Managers table 

INSERT INTO Managers (Manager_ID, First_Name, Last_Name, Email, Phone_Number, Department_ID) 

VALUES 

    (201, 'John', 'Gottfried', 'john.gottfried@mail.onlinefresh.com', '123-456-7890', 101), 

    (202, 'Jane', 'Nelson', 'jane.nelson@mail.onlinefresh.com', '987-654-3210', 102), 

    (203, 'Robert', 'Johnson', 'robert.johnson@mail.onlinefresh.com', '555-123-4567', 103), 

    (204, 'Sarah', 'Brown', 'sarah.brown@mail.onlinefresh.com', '888-777-9999', 104), 

    (205, 'Michael', 'Wilson', 'michael.wilson@mail.onlinefresh.com', '444-333-2222', 105); 

  

-- Populate Products table 

INSERT INTO Products (Product_ID, Name, Description, Price, Shelf_Life, Category) 

VALUES 

    (1, 'Apple', 'Fresh and juicy apple', 1.99, 7, 'Fruits'), 

    (2, 'Banana', 'Ripe yellow banana', 0.99, 5, 'Fruits'), 

    (3, 'Carrot', 'Organic carrot', 2.49, 10, 'Vegetables'), 

    (4, 'Tomato', 'Vine-ripened tomato', 1.79, 7, 'Vegetables'), 

    (5, 'Spinach', 'Fresh spinach leaves', 2.99, 5, 'Leafy Greens'), 

    (6, 'Chicken', 'Farm-raised chicken', 7.99, 3, 'Meat'), 

    (7, 'Salmon', 'Wild-caught salmon', 9.99, 2, 'Seafood'), 

    (8, 'Milk', 'Fresh dairy milk', 2.29, 7, 'Dairy'), 

    (9, 'Bread', 'Whole-grain bread', 3.49, 5, 'Bakery'), 

    (10, 'Eggs', 'Free-range eggs', 2.99, 14, 'Dairy'), 
    
	(11, 'Avocado', 'Fresh avocado from local farms', 2.99, 14, 'Fruits'), 

    (12, 'Strawberries', 'Sweet and juicy strawberries', 3.49, 7, 'Fruits'), 

    (13, 'Broccoli', 'Nutrient-rich broccoli florets', 1.79, 7, 'Vegetables'), 

    (14, 'Spinach', 'Tender and nutritious spinach leaves', 2.49, 10, 'Vegetables'), 

    (15, 'Salmon Fillet', 'Premium salmon fillet', 9.99, 3, 'Seafood'), 

    (16, 'Chicken Breasts', 'Boneless chicken breasts', 5.99, 5, 'Poultry'), 

    (17, 'Greek Yogurt', 'Creamy Greek yogurt', 4.49, 14, 'Dairy'), 

    (18, 'Almond Milk', 'Unsweetened almond milk', 3.29, 30, 'Dairy'), 

    (19, 'Whole Wheat Bread', 'Healthy whole wheat bread', 2.79, 7, 'Bakery'), 

    (20, 'Granola Bars', 'Nutritious granola bars', 3.99, 90, 'Snacks'); 
  

-- Populate Customers table 

INSERT INTO Customers (Customer_ID, First_Name, Last_Name, Email_Address, Phone_Number, Address, Postcode, City, State) 

VALUES 

    (001, 'Alice', 'Johnson', 'alice@gmail.com', '111-222-3333', '12 Broad Street', 'B1 2EA', 'Birmingham', 'West Midlands'), 

    (002, 'Bob', 'Smith', 'bob@gmail.com', '555-666-7777', '34 High Street', 'B2 5UP', 'Birmingham', 'West Midlands'), 

    (003, 'Charlie', 'Brown', 'charlie@outlook.com', '999-888-7777', '56 Dudley Road', 'B3 1SB', 'Birmingham', 'West Midlands'), 

    (004, 'David', 'Wilson', 'david@yahoo.com', '444-555-6666', '78 Wolverhampton Lane', 'B4 6RD', 'Birmingham', 'West Midlands'), 

    (005, 'Eve', 'Davis', 'eve@gmail.com', '777-888-9999', '90 Coventry Road', 'B5 5RS', 'Birmingham', 'West Midlands'), 

    (006, 'Daniel', 'Williams', 'daniel@gmail.com', '123-456-7890', '123 Solihull Street', 'B6 9JG', 'Birmingham', 'West Midlands'), 

    (007, 'Sophia', 'Johnson', 'sophia@yahoo.com', '987-654-3210', '456 Sutton Road', 'B7 7AB', 'Birmingham', 'West Midlands'), 

    (008, 'James', 'Brown', 'james@yahoo.com', '555-123-4567', '789 Walsall Street', 'B8 8DP', 'Birmingham', 'West Midlands'), 

    (009, 'Olivia', 'Davis', 'olivia@yahoo.com', '888-777-9999', '101 Sandwell Lane', 'B9 9PG', 'Birmingham', 'West Midlands'), 

    (010, 'Lucas', 'Garcia', 'lucas@example.com', '444-333-2222', '246 West Bromwich Road', 'B10 9TA', 'Birmingham', 'West Midlands'), 

    (011, 'Ava', 'Martinez', 'ava@gmail.com', '777-888-9999', '789 Dudley Road', 'B11 8QL', 'Birmingham', 'West Midlands'), 

    (012, 'Liam', 'Robinson', 'liam@outlook.com', '555-666-7777', '654 Redditch Street', 'B12 9TN', 'Birmingham', 'West Midlands'), 

    (013, 'Mia', 'Anderson', 'mia@outlook.com', '999-888-7777', '321 Telford Avenue', 'B13 8NP', 'Birmingham', 'West Midlands'), 

    (014, 'Noah', 'Lee', 'noah@outlook.com', '555-555-5555', '987 Coventry Lane', 'B14 7DR', 'Birmingham', 'West Midlands'), 

    (015, 'Emma', 'Walker', 'emma@gmail.com', '777-777-7777', '567 Stourbridge Road', 'B15 6QH', 'Birmingham', 'West Midlands'); 
  

-- Populate Orders table 

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Status, Order_Status, Shipping_Address, Shipping_City, Shipping_Postal_Code, Shipping_State) 

VALUES 

    (1001, 001, '2023-08-01 09:15:00', 'Paid', 'Shipped', '12 Broad Street', 'Birmingham', 'B1 2EA', 'West Midlands'), 

    (1002, 002, '2023-08-02 10:30:00', 'Pending', 'Processing', '34 High Street', 'Birmingham', 'B2 5UP', 'West Midlands'), 

    (1003, 003, '2023-08-03 11:45:00', 'Paid', 'Delivered', '56 Dudley Road', 'Birmingham', 'B3 1SB', 'West Midlands'), 

    (1004, 004, '2023-08-04 13:00:00', 'Paid', 'Shipped', '78 Wolverhampton Lane', 'Birmingham', 'B4 6RD', 'West Midlands'), 

    (1005, 005, '2023-08-05 14:15:00', 'Pending', 'Processing', '90 Coventry Road', 'Birmingham', 'B5 5RS', 'West Midlands'), 

    (1006, 006, '2023-08-06 15:30:00', 'Paid', 'Delivered', '123 Solihull Street', 'Birmingham', 'B6 9JG', 'West Midlands'), 

    (1007, 007, '2023-08-07 16:45:00', 'Paid', 'Shipped', '456 Sutton Road', 'Birmingham', 'B7 7AB', 'West Midlands'), 

    (1008, 008, '2023-08-08 18:00:00', 'Pending', 'Processing', '789 Walsall Street', 'Birmingham', 'B8 8DP', 'West Midlands'), 

    (1009, 009, '2023-08-09 19:15:00', 'Paid', 'Delivered', '101 Sandwell Lane', 'Birmingham', 'B9 9PG', 'West Midlands'), 

    (1010, 010, '2023-08-10 20:30:00', 'Paid', 'Shipped', '246 West Bromwich Road', 'Birmingham', 'B10 9TA', 'West Midlands'), 

    (1011, 011, '2023-08-11 21:45:00', 'Pending', 'Processing', '789 Dudley Road', 'Birmingham', 'B11 8QL', 'West Midlands'), 

    (1012, 012, '2023-08-12 22:00:00', 'Paid', 'Delivered', '654 Redditch Street', 'Birmingham', 'B12 9TN', 'West Midlands'), 

    (1013, 013, '2023-08-13 23:15:00', 'Paid', 'Shipped', '321 Telford Avenue', 'Birmingham', 'B13 8NP', 'West Midlands'), 

    (1014, 014, '2023-08-14 00:30:00', 'Pending', 'Processing', '987 Coventry Lane', 'Birmingham', 'B14 7DR', 'West Midlands'), 

    (1015, 015, '2023-08-15 01:45:00', 'Paid', 'Delivered', '567 Stourbridge Road', 'Birmingham', 'B15 6QH', 'West Midlands'), 

    (1016, 001, '2023-08-16 02:00:00', 'Paid', 'Shipped', '12 Broad Street', 'Birmingham', 'B1 2EA', 'West Midlands'), 

    (1017, 006, '2023-08-21 07:15:00', 'Paid', 'Delivered', '123 Solihull Street', 'Birmingham', 'B6 9JG', 'West Midlands'), 

    (1018, 005, '2023-08-20 06:00:00', 'Pending', 'Processing', '90 Coventry Road', 'Birmingham', 'B5 5RS', 'West Midlands'), 

    (1019, 013, '2023-08-28 14:00:00', 'Paid', 'Shipped', '321 Telford Avenue', 'Birmingham', 'B13 8NP', 'West Midlands'), 

    (1020, 005, '2023-08-20 06:00:00', 'Pending', 'Processing', '90 Coventry Road', 'Birmingham', 'B5 5RS', 'West Midlands'), 

    (1021, 006, '2023-08-21 07:15:00', 'Paid', 'Delivered', '123 Solihull Street', 'Birmingham', 'B6 9JG', 'West Midlands'), 

    (1022, 007, '2023-08-22 08:30:00', 'Paid', 'Shipped', '456 Sutton Road', 'Birmingham', 'B7 7AB', 'West Midlands'), 

    (1023, 006, '2023-08-21 07:15:00', 'Paid', 'Delivered', '123 Solihull Street', 'Birmingham', 'B6 9JG', 'West Midlands'), 

    (1024, 009, '2023-08-24 10:00:00', 'Paid', 'Delivered', '101 Sandwell Lane', 'Birmingham', 'B9 9PG', 'West Midlands'), 

    (1025, 010, '2023-08-25 11:15:00', 'Paid', 'Shipped', '246 West Bromwich Road', 'Birmingham', 'B10 9TA', 'West Midlands'), 

    (1026, 011, '2023-08-26 12:30:00', 'Pending', 'Processing', '789 Dudley Road', 'Birmingham', 'B11 8QL', 'West Midlands'), 

    (1027, 012, '2023-08-27 13:45:00', 'Paid', 'Delivered', '654 Redditch Street', 'Birmingham', 'B12 9TN', 'West Midlands'), 

    (1028, 013, '2023-08-28 14:00:00', 'Paid', 'Shipped', '321 Telford Avenue', 'Birmingham', 'B13 8NP', 'West Midlands'), 

    (1029, 010, '2023-08-25 11:15:00', 'Paid', 'Shipped', '246 West Bromwich Road', 'Birmingham', 'B10 9TA', 'West Midlands'), 

    (1030, 010, '2023-08-25 11:15:00', 'Paid', 'Shipped', '246 West Bromwich Road', 'Birmingham', 'B10 9TA', 'West Midlands'); 

-- Populate OrderProducts table 

INSERT INTO OrderProducts (Order_ID, Product_ID, Quantity) 

VALUES 

    (1001, 1, 20), 

    (1002, 2, 10), 

    (1003, 3, 5), 

    (1004, 4, 20), 

    (1005, 5, 15), 

    (1006, 6, 7), 

    (1007, 7, 10), 

    (1008, 8, 15), 

    (1009, 9, 12), 

    (1010, 10, 10), 
    
	(1011, 11, 5),
    
	(1012, 11, 4),
    
	(1013, 12, 10),
    
    (1014, 13, 12),
    
    (1015, 14, 15),
    
    (1016, 15, 10),
    
    (1017, 16, 10),
    
    (1018, 17, 10),
    
    (1019, 18, 5),
    
    (1020, 19, 10),
    
    (1021, 20, 10),
    
    (1022, 9, 20),
    
    (1023, 10, 5),
    
    (1024, 20, 5),
    
    (1025, 20, 5),
    
    (1026, 16, 10),
    
    (1027, 8, 12),
    
    (1028, 4, 6),
    
    (1029, 4, 5),
    
    (1030, 5, 10);
    
-- Populate Employees table 

INSERT INTO Employees (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Department_ID, Manager_ID) 

VALUES 

    (001, 'John', 'Gottfried', 'john.gottfried@mail.onlinefresh.com', '123-456-7890', 101,201), 

    (002, 'Jane', 'Nelson', 'jane.nelson@mail.onlinefresh.com', '987-654-3210', 102,202), 

    (003, 'Robert', 'Johnson', 'robert.johnson@mail.onlinefresh.com', '555-123-4567', 103,203), 

    (004, 'Sarah', 'Brown', 'sarah.brown@mail.onlinefresh.com', '888-777-9999', 104, 204), 

    (005, 'Michael', 'Wilson', 'michael.wilson@mail.onlinefresh.com', '444-333-2222', 105,205), 

	(006, 'Jessica', 'Anderson', 'jessica.anderson@mail.onlinefresh.com', '111-222-3333', 102, NULL), 

    (007, 'Matthew', 'Clark', 'matthew.clark@mail.onlinefresh.com', '555-666-7777', 101, NULL), 

    (008, 'Emily', 'Garcia', 'emily.garcia@mail.onlinefresh.com', '999-888-7777', 105, NULL), 

    (009, 'William', 'Harris', 'william.harris@mail.onlinefresh.com', '444-555-6666', 105, NULL), 

    (010, 'Sophia', 'Jackson', 'sophia.jackson@mail.onlinefresh.com', '777-888-9999', 101, NULL), 

    (011, 'Michael', 'Lee', 'michael.lee@mail.onlinefresh.com', '123-456-7890', 101, NULL), 

    (012, 'Olivia', 'Martinez', 'olivia.martinez@mail.onlinefresh.com', '987-654-3210', 104, NULL), 

    (013, 'Ethan', 'Moore', 'ethan.moore@mail.onlinefresh.com', '555-123-4567', 101, NULL), 

    (014, 'Isabella', 'Nelson', 'isabella.nelson@mail.onlinefresh.com', '888-777-9999', 104, NULL), 

    (015, 'Daniel', 'Parker', 'daniel.parker@mail.onlinefresh.com', '444-333-2222', 103, NULL), 

    (016, 'Ava', 'Perez', 'ava.perez@mail.onlinefresh.com', '777-777-7777', 102, NULL), 

    (017, 'James', 'Ramirez', 'james.ramirez@mail.onlinefresh.com', '555-555-5555', 103, NULL), 

    (018, 'Grace', 'Roberts', 'grace.roberts@mail.onlinefresh.com', '987-654-3210', 101, NULL), 

    (019, 'Benjamin', 'Smith', 'benjamin.smith@mail.onlinefresh.com', '555-123-4567', 102, NULL), 

    (020, 'Chloe', 'Taylor', 'chloe.taylor@mail.onlinefresh.com', '888-777-9999', 102, NULL); 
  
-- Populate Warehouses table 

INSERT INTO Warehouses (Warehouse_ID, Warehouse_Name, Address, City, State_Province, Postal_Code) 

VALUES 

    (1, 'FruitsVeg Warehouse', '123 Birmingham St', 'Birmingham', 'Midlands', 'B1 1AA'),   

    (2, 'MeatSeafood Warehouse', '456 Birmingham Ave', 'Birmingham', 'Midlands', 'B2 2BB'),   

    (3, 'Dairy Warehouse', '789 Birmingham Rd', 'Birmingham', 'Midlands', 'B3 3CC');
    
-- Populate Inventory table 

INSERT INTO Inventory (Inventory_ID, Product_ID, Warehouse_ID, Quantity, Last_Stocked, Reorder_Point) 

VALUES 

    (300, 1, 1, 6, '2023-07-01 08:00:00', 10), 

    (301, 2, 1, 25, '2023-07-05 09:30:00', 15), 

    (302, 3, 1, 20, '2023-07-02 14:15:00', 20), 

    (303, 4, 1, 30, '2023-07-03 11:45:00', 18), 

    (304, 5, 1, 50, '2023-07-06 10:20:00', 12), 

    (305, 6, 2, 40, '2023-07-04 16:40:00', 8), 

    (306, 7, 2, 10, '2023-07-01 13:30:00', 14), 

    (307, 8, 3, 30, '2023-07-02 10:00:00', 16), 

    (308, 9, 3, 2, '2023-07-07 09:15:00', 7), 

    (309, 10, 3, 50, '2023-07-05 15:00:00', 11), 

	(310, 11, 1, 25, '2023-07-05 15:00:00', 11),
    
    (311, 12, 1, 50, '2023-07-05 15:00:00', 11),
    
    (312, 13, 1, 5, '2023-07-05 15:00:00', 11),
    
    (313, 14, 1, 60, '2023-07-05 15:00:00', 11),
    
    (314, 15, 2, 50, '2023-07-05 15:00:00', 11),
    
    (315, 16, 2, 30, '2023-07-05 15:00:00', 11),
    
    (316, 17, 3, 55, '2023-07-05 15:00:00', 11),
    
    (317, 18, 3, 55, '2023-07-05 15:00:00', 11),
    
    (318, 19, 3, 8, '2023-07-05 15:00:00', 11),
    
    (319, 20, 3, 11, '2023-07-05 15:00:00', 11);
    

-- Populate WarehouseProducts table 

INSERT INTO WarehouseProducts (Warehouse_ID, Product_ID) 

VALUES 

    (1, 1), 

    (1, 2), 

    (1, 3), 

    (1, 4), 

    (1, 5), 

    (1, 11), 

    (1, 12), 

    (1, 13), 

    (1, 14), 

    (2, 6),
    
	(2, 7),
    
	(2, 15),
    
	(2, 16),
    
    (3, 8),
    
    (3, 9),
    
    (3, 10),
    
    (3, 17),
    
    (3, 18),
    
    (3, 19),
    
    (3, 20);

-- Populate Users table 
INSERT INTO Users (User_ID, First_Name, Last_Name, Email, Account_Created_Date) 

VALUES 

    (0160, 'Shawn', 'Lu', 'shawn69@yahoo.com', '2023-08-01 09:00:00'), 

    (0170, 'Bob', 'Smith', 'bobbby290@outlook.com', '2023-08-02 10:30:00'), 

    (0180, 'Charlie', 'Brown', 'getty7uy@outlook.com', '2023-08-03 12:15:00'), 

    (0190, 'David', 'Wilson', 'david777@gmail.com', '2023-08-04 08:45:00'), 

    (0200, 'Eve', 'Davis', 'eveporta@gmail.com', '2023-08-05 15:10:00'); 

-- Populate WebSessions table 

INSERT INTO WebSessions (Session_ID, User_ID, Customer_ID, Session_Start_Time, Session_End_Time, IP_Address, Page_Views, Conversion) 

VALUES 

    ('12345', null, 001, '2023-08-22 10:00:00', '2023-08-22 10:30:00', '192.168.1.1', 5, 1), 

    ('23456', null, 002, '2023-08-22 11:15:00', '2023-08-22 11:45:00', '192.168.1.2', 4, 1), 

    ('34567', null, 003, '2023-08-22 13:30:00', '2023-08-22 14:15:00', '192.168.1.3', 7, 1), 

    ('45678', null, 004, '2023-08-22 15:45:00', '2023-08-22 16:30:00', '192.168.1.4', 6, 1), 

    ('56789', null, 005, '2023-08-22 17:00:00', '2023-08-22 17:45:00', '192.168.1.5', 3, 1), 

    ('67890', null, 006, '2023-08-22 10:30:00', '2023-08-22 11:15:00', '192.168.1.6', 4, 1), 

    ('78901', null, 007, '2023-08-22 12:00:00', '2023-08-22 12:45:00', '192.168.1.7', 5, 1), 

    ('89012', null, 008, '2023-08-22 14:30:00', '2023-08-22 15:15:00', '192.168.1.8', 6, 1), 

    ('90123', null, 009, '2023-08-22 16:45:00', '2023-08-22 17:30:00', '192.168.1.9', 3, 1), 

    ('01234', null, 010, '2023-08-22 18:00:00', '2023-08-22 18:45:00', '192.168.1.10', 4, 1), 

    ('02345', null, 011, '2023-08-22 11:00:00', '2023-08-22 11:45:00', '192.168.1.11', 5, 1), 

    ('03456', null, 012, '2023-08-22 12:30:00', '2023-08-22 13:15:00', '192.168.1.12', 4, 1), 

    ('04567', null, 013, '2023-08-22 15:00:00', '2023-08-22 15:45:00', '192.168.1.13', 6, 1), 

    ('05678', null, 014, '2023-08-22 17:30:00', '2023-08-22 18:15:00', '192.168.1.14', 5, 1), 

    ('06789', null, 015, '2023-08-22 19:00:00', '2023-08-22 19:45:00', '192.168.1.15', 4, 1), 
	
    ('07890', 0160, null, '2023-08-22 10:15:00', '2023-08-22 10:45:00', '192.168.1.16', 3, 0), 

    ('08901', 0170, null, '2023-08-22 11:30:00', '2023-08-22 12:15:00', '192.168.1.17', 5, 0), 

    ('09012', 0180, null, '2023-08-22 13:45:00', '2023-08-22 14:30:00', '192.168.1.18', 4, 0), 

    ('02459', 0190, null, '2023-08-22 15:00:00', '2023-08-22 15:45:00', '192.168.1.19', 6, 0), 

    ('98453', 0200, null, '2023-08-22 16:15:00', '2023-08-22 16:45:00', '192.168.1.20', 3, 0),
    
    ('99923', null, 001, '2023-08-23 09:30:00', '2023-08-23 10:15:00', '192.168.1.21', 4, 1),   

	('88834', null, 006, '2023-08-23 10:45:00', '2023-08-23 11:30:00', '192.168.1.22', 5, 1), 

    ('86723', null, 005, '2023-08-23 12:00:00', '2023-08-23 12:45:00', '192.168.1.23', 3, 1), 

    ('22245', null, 013, '2023-08-23 13:15:00', '2023-08-23 13:45:00', '192.168.1.24', 4, 1), 

    ('33322', null, 005, '2023-08-23 14:00:00', '2023-08-23 14:45:00', '192.168.1.25', 6, 1), 
	
    ('11178', null, 006, '2023-08-25 09:30:00', '2023-08-25 10:15:00', '192.168.1.31', 4, 1), 

    ('55012', null, 007, '2023-08-25 10:45:00', '2023-08-25 11:30:00', '192.168.1.32', 5, 1), 

    ('24691', null, 006, '2023-08-25 12:00:00', '2023-08-25 12:45:00', '192.168.1.33', 3, 1), 

    ('76654', null, 009, '2023-08-25 13:15:00', '2023-08-25 13:45:00', '192.168.1.34', 4, 1), 

    ('69989', null, 010, '2023-08-25 14:00:00', '2023-08-25 14:45:00', '192.168.1.35', 6, 1),
    
    ('69420', null, 011, '2023-08-26 09:30:00', '2023-08-26 10:15:00', '192.168.1.36', 3, 1), 

    ('42069', null, 012, '2023-08-26 10:45:00', '2023-08-26 11:30:00', '192.168.1.37', 4, 1), 

    ('96969', null, 013, '2023-08-26 12:00:00', '2023-08-26 12:45:00', '192.168.1.38', 5, 1), 

    ('69696', null, 010, '2023-08-26 13:15:00', '2023-08-26 13:45:00', '192.168.1.39', 3, 1), 

    ('20420', null, 010, '2023-08-26 14:00:00', '2023-08-26 14:45:00', '192.168.1.40', 6, 1); 

