--create a database called umuzi
CREATE DATABASE Umuzi; 

--create a tables
CREATE TABLE Customers(
CUSTOMER_ID 	SERIAL primary key,
First_Name		VARCHAR(50),
Last_Name		VARCHAR(50),
Gender			VARCHAR,
Address 		VARCHAR(200),
Phone			INTEGER,
Email			VARCHAR(100),
City			VARCHAR(20),
Country			VARCHAR(50) 
);

--emplyee information
CREATE TABLE Employees(
EMPLOYEE_ID 	SERIAL primary key,
First_Name      VARCHAR(50),
Last_Name       VARCHAR(50),
Email           VARCHAR(100),
Job_Title       VARCHAR(20)
);

--payment information
CREATE TABLE Payments(
PAYMENTS_ID 	SERIAL Primary key,
Payment_ID      INTEGER		REFERENCES Customers(Customer_ID),
Payment_Date   	VARCHAR(50),
Amount         	DECIMAL,
);

--product information 
CREATE TABLE Products(
PRODUCTS_ID 	INTEGER primary key,
Product_ID      INTEGER Primary Key,
Product_Name    VARCHAR(100),
Description     VARCHAR(300),
Price           DECIMAL,
);

--order information 
CREATE TABLE Orders(
ORDER_ID 			SERIAL primary key,
Product_ID          INTEGER     REFERENCES Products(Product_ID),
Payment_ID          INTEGER     REFERENCES Payments(Payment_ID),
Employee_ID         INTEGER     REFERENCES Emplyee(Employee_ID),
Fulfilled_By_Employee_ID INTEGER   REFERENCES Employees(Employee_ID),
Date_Required       TIMESTAMP,
Date_Shipped        TIMESTAMP,
Status				VARCHAR(20)
);

									--inserting records to tables

-- inserting into Customers table
INSERT INTO Customers (CUSTOMER_ID, First_Name, Last_Name, Gender, Address, Phone, Email, City, Country) VALUES
(1,	'John', 'Hilbert', 'Male', '284 Chaucer St', 84789657, 'John@gmail.com', 'Johannesburg', 'South Africa'),
(2,	'Thando', 'Sithole', 'Female', '240 Sect 1', 794445584, 'thando@gmail.com', 'Cape Town', 'South AFrica'),
(3,	'Leon',	'Glen', 'Male',	'81 Everton Rd, Gillits', 820832830, 'leon@gmail.com', 'Durban', 'South AFrica'),
(4,	'Charl', 'Muller', 'Male', '290A Dorset Ecke', 856872553, 'charl.muller@yahoo.com', 'Berlin', 'Germany'),
(5,	'Julia', 'Stein', 'Female', '2 Wernerring',	867244505, 'js234@yahoo.com', 'Frankfurt', 'Germany');

-- inserting into Employees table
INSERT INTO Employees (EMPLOYEE_ID, First_Name, Last_Name, Email, Job_Title) VALUES
(1,	'Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
(2,	'Lesly', 'Cronje', 'lesc@gmail.com', 'Clerk'),
(3,	'Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

-- inserting into Products table
INSERT INTO Products (PRODUCT_ID, Product_Name, Description, Price) VALUES
(1,	'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever',	150.75),
(2,	'Classic Car', 'Turnable front wheels, steering function', 550.75),
(3,	'Sports Car', 'Turnable front wheels, steering function', 700.60);

-- inserting into Payments table
INSERT INTO Payments (CUSTOMER_ID, Payment_ID, Payment_Date, Amount) VALUES
(1,	1, '2018-01-09', 150.75),
(5,	2, '2018-03-09', 150.75),
(4,	3, '2018-03-09', 700.60);

-- inserting into Orders table
INSERT INTO Orders (ORDER_ID, Product_ID, Payment_ID, Fulfilled_By_Employee_ID, Date_Required, Date_Shipped, Status) VALUES
(1,	1, 1, 2, '2018-05-09', NULL, 'Not Shipped'),
(2,	1, 2, 2, '2018-04-09', '2018-03-09', 'Shipped'),
(3,	3, 3, 3, '2018-04-09', NULL, 'Not Shipped');
