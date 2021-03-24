--create a database called umuzi
CREATE DATABASE Umuziiii;

--create a tables
CREATE TABLE Customers(
id 	SERIAL  PRIMARY KEY,
first_name		VARCHAR(50),
last_name		VARCHAR(50),
Gender			VARCHAR,
Address 		VARCHAR(200),
Phone			VARCHAR(22),
email			VARCHAR(100),
City			VARCHAR(20),
Country			VARCHAR(50)

);

INSERT INTO Customers(first_name,last_name,Gender,Address,Phone,email,City,Country)
VALUES('John','Hibert','Male','284 chaucer st','084789657','john@gmail.com','Johannesburg','South Africa'),
('Thando','Sithole','Female','240 Sect 1','0794445584','thando@gmail.com','Cape Town','South Africa'),
('Leon','Glen','Male','81 Everton Rd,Gillits','0820832830','Leon@gmaiLeonl.com','Durban','South Africa'),
('Charl','Muller','Male','290A Dorset Ecke','0856872553','Charl.muller@yahoo.com','Berlin','Germany'),
('Julia','Julia','Female','2 Wernerring','0672445058','Js234@yahoo.com','Frankfurt','Germany');

--emplyee information
CREATE TABLE Employees(
id SERIAL  PRIMARY KEY,
first_name      VARCHAR(50),
last_name       VARCHAR(50),
email           VARCHAR(100),
job_title       VARCHAR(20)
);

INSERT INTO Employees(
first_name,last_name,email,job_title
)
VALUES('Kani','Matthew','mat@gmail.com','Manager'),
('Lesly','Cronje','LesC@gmail.com','Clerk'),
('Gideon','Maduku','m@gmail.com','Accountant');


--payment information
CREATE TABLE Payments(
id      SERIAL PRIMARY KEY,
Customers_id 	INTEGER,
payment_date   	DATE,
amount         	DECIMAL,
FOREIGN KEY (Customers_id) REFERENCES Customers (id)
);

INSERT INTO Payments(
Customers_id,payment_date,amount
)
VALUES('1','01-09-2018','150.75'),
('5','03-09-2018','150.75'),
('4','03-09-2018','700.60');

--product information
CREATE TABLE Products(
id      SERIAL PRIMARY KEY,
Product_Name    VARCHAR(100),
Description     VARCHAR(300),
Price           DECIMAL
);

INSERT INTO Products(
Product_Name,Description,Price
)
VALUES('Harley Davidson Chopper','This replica features working kickstand, front suspension, gear-shift lever','150.75'),
('Classic Car','Turnable front wheels, steering function','550.75'),
('Sports car','Turnable front wheels, steering function','700.60');


--order information
CREATE TABLE Orders(
id            SERIAL PRIMARY KEY,
Products_id          INTEGER,
Payments_id          INTEGER,
Employees_id         INTEGER,
date_required       DATE,
date_shipped        DATE,
Status              VARCHAR(20),
FOREIGN KEY (Products_id) REFERENCES Products (id),
FOREIGN KEY (Payments_id) REFERENCES Payments (id),
FOREIGN KEY (Employees_id) REFERENCES Employees (id)
);



INSERT INTO Orders(
Products_id,Payments_id,Employees_id,date_required,date_shipped,Status
)

VALUES('1','1','2','05-09-2018',DEFAULT,'Not shipped'),
('1','2','2','04-09-2018','03-09-2018','Shipped'),
('3','3','3','06-09-2018',DEFAULT,'Not shipped');
