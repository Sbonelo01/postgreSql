-- customer table
CREATE TABLE Customers(
Customer_id 	SERIAL  PRIMARY KEY,
First_name		VARCHAR(50),
Last_name		VARCHAR(50),
Gender			VARCHAR,
Address 		VARCHAR(200),
Phone			VARCHAR(22),
Email			VARCHAR(100),
City			VARCHAR(20),
Country			VARCHAR(50)
);

-- emplyees table
CREATE TABLE Employees(
Employee_id SERIAL  PRIMARY KEY,
First_name      VARCHAR(50),
Last_name       VARCHAR(50),
Email           VARCHAR(100),
Job_title       VARCHAR(20)
);

-- payments table
CREATE TABLE Payments(
Customer_id 	INTEGER,
Payment_id      SERIAL PRIMARY KEY,
Payment_date   	DATE,
Amount         	DECIMAL,
FOREIGN KEY (Customer_id) REFERENCES Customers (Customer_id)
);

-- products table
CREATE TABLE Products(
Product_id      SERIAL PRIMARY KEY,
Product_Name    VARCHAR(100),
Description     VARCHAR(300),
Price           DECIMAL
);

-- table
CREATE TABLE Orders(
Order_id            SERIAL PRIMARY KEY,
Product_id          INTEGER,
Payment_id          INTEGER,
Employee_id         INTEGER,
Date_required       DATE,
Date_shipped        DATE,
Status              VARCHAR(20),
FOREIGN KEY (Product_id) REFERENCES Products (Product_id),
FOREIGN KEY (Payment_id) REFERENCES Payments (Payment_id),
FOREIGN KEY (Employee_id) REFERENCES Employees (Employee_id)
);
