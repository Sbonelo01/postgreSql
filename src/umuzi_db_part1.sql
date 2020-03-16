--create a database called umuzi
CREATE DATABASE IF NOT EXISTS Umuzi;

--create a tables
CREATE TABLE Customers(
CUSTOMER_ID 	SERIAL  PRIMARY KEY,
First_Name		VARCHAR(50),
Last_Name		VARCHAR(50),
Gender			VARCHAR,
Address 		VARCHAR(200),
Phone			INTEGER,
Email			VARCHAR(100),
City			VARCHAR(20),
Country			VARCHAR(50)

);

INSERT INTO Customers(First_Name,Last_Name,Gender,Address,Phone,Email,City,Country)
VALUES('John','Hibert','Male','284 chaucer st','084789657','john@gmail.com','Johannesburg','South Africa'),
('Thando','Sithole','Female','240 Sect 1','0794445584','thando@gmail.com','Cape Town','South Africa'),
('Leon','Glen','Male','81 Everton Rd,Gillits','0820832830','Leon@gmaiLeonl.com','Durban','South Africa'),
('Charl','Muller','Male','290A Dorset Ecke','0856872553','Charl.muller@yahoo.com','Berlin','Germany'),
('Julia','Julia','Female','2 Wernerring','0672445058','Js234@yahoo.com','Frankfurt','Germany');

--emplyee information
CREATE TABLE Employees(
EMPLOYEE_ID SERIAL  PRIMARY KEY,
First_Name      VARCHAR(50),
Last_Name       VARCHAR(50),
Email           VARCHAR(100),
Job_Title       VARCHAR(20)
);

INSERT INTO Employees(
First_Name,Last_Name,Email,Job_Title
)
VALUES('Kani','Matthew','mat@gmail.com','Manager'),
('Lesly','Cronje','LesC@gmail.com','Clerk'),
('Gideon','Maduku','m@gmail.com','Accountant');


--payment information
CREATE TABLE Payments(
CUSTOMER_ID 	INTEGER,
Payment_ID      SERIAL PRIMARY KEY,
Payment_Date   	DATE,
Amount         	DECIMAL,
FOREIGN KEY (CUSTOMER_ID) REFERENCES Customers (CUSTOMER_ID)
);

INSERT INTO Payments(
CUSTOMER_ID,Payment_ID,Payment_Date,Amount
)
VALUES('1',DEFAULT,'01-09-2018','150.75'),
('5',DEFAULT,'03-09-2018','150.75'),
('4',DEFAULT,'03-09-2018','700.60');

--product information
CREATE TABLE Products(
Product_ID      SERIAL PRIMARY KEY,
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
ORDER_ID            SERIAL PRIMARY KEY,
Product_ID          INTEGER,
Payment_ID          INTEGER,
Employee_ID         INTEGER,
Date_Required       DATE,
Date_Shipped        DATE,
Status              VARCHAR(20),
FOREIGN KEY (Product_ID) REFERENCES Products (Product_ID),
FOREIGN KEY (Payment_ID) REFERENCES Payments (Payment_ID),
FOREIGN KEY (Employee_ID) REFERENCES Employees (Employee_ID)
);



INSERT INTO Orders(
Product_ID,Payment_ID,Employee_ID,Date_Required,Date_Shipped,Status
)

VALUES('1','1','2','05-09-2018',' ','Not shipped'),
('1','2','2','04-09-2018','03-09-2018','Shipped'),
('3','3','3','06-09-2018',' ','Not shipped');


