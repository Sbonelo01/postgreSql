-- customer table
CREATE TABLE Customers(
customer_id 	SERIAL  PRIMARY KEY,
first_name		VARCHAR(50),
last_name		VARCHAR(50),
Gender			VARCHAR,
Address 		VARCHAR(200),
Phone			VARCHAR(22),
email			VARCHAR(100),
City			VARCHAR(20),
Country			VARCHAR(50)

);

-- emplyees table
CREATE TABLE Employees(
employee_id SERIAL  PRIMARY KEY,
first_name      VARCHAR(50),
last_name       VARCHAR(50),
email           VARCHAR(100),
job_title       VARCHAR(20)
);

-- payments table
CREATE TABLE Payments(
customer_id 	INTEGER,
payment_id      SERIAL PRIMARY KEY,
payment_date   	DATE,
amount         	DECIMAL,
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

-- products table
CREATE TABLE Products(
product_id      SERIAL PRIMARY KEY,
Product_Name    VARCHAR(100),
Description     VARCHAR(300),
Price           DECIMAL
);

-- table
CREATE TABLE Orders(
order_id            SERIAL PRIMARY KEY,
product_id          INTEGER,
payment_id          INTEGER,
employee_id         INTEGER,
date_required       DATE,
date_shipped        DATE,
Status              VARCHAR(20),
FOREIGN KEY (product_id) REFERENCES Products (product_id),
FOREIGN KEY (payment_id) REFERENCES Payments (payment_id),
FOREIGN KEY (employee_id) REFERENCES Employees (employee_id)
);
