-- customer table
CREATE TABLE Customers(
customer_id 	        SERIAL  PRIMARY KEY,
first_name		VARCHAR(50),
last_name		VARCHAR(50),
gender			VARCHAR,
address 		VARCHAR(200),
phone			VARCHAR(22),
email			VARCHAR(100),
city			VARCHAR(20),
country			VARCHAR(50)
);

-- emplyees table
CREATE TABLE Employees(
employee_id     SERIAL  PRIMARY KEY,
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
Product_name    VARCHAR(100),
description     VARCHAR(300),
price           DECIMAL
);

-- table
CREATE TABLE Orders(
order_id            SERIAL PRIMARY KEY,
product_id          INTEGER,
payment_id          INTEGER,
employee_id         INTEGER,
date_required       DATE,
date_shipped        DATE,
status              VARCHAR(20),
FOREIGN KEY (product_id) REFERENCES Products (product_id),
FOREIGN KEY (payment_id) REFERENCES Payments (payment_id),
FOREIGN KEY (employee_id) REFERENCES Employees (employee_id)
);
