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


--order information 
CREATE TABLE Orders(
ORDER_ID 			SERIAL primary key,
Product_ID          INTEGER     REFERENCES Products(Product_ID)
Payment_ID          INTEGER     REFERENCES Payments(Payment_ID)
Employee_ID         INTEGER     REFERENCES emplyee(Employee_ID)
Date_Required       TIMESTAMP,
Date_Shipped        TIMESTAMP,
Status				VARCHAR(20)
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

--inserting records to tables
INSERT INTO Customers(Customer_ID, First_Name, Last_Name, Gender, Address, Phone, Email, City,Country)
 VALUES(1, 'SBONELO', 'MKHIZE', 'MALE', '35 Jules' 0610692364, 'sbonelo@gmail.com', 'Jeppestown', 'South Africa')