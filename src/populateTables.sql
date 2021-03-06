INSERT INTO Customers(first_name,last_name,gender,address,phone,email,city,country)
VALUES('John','Hibert','Male','284 chaucer st','084789657','john@gmail.com','Johannesburg','South Africa'),
('Thando','Sithole','Female','240 Sect 1','0794445584','thando@gmail.com','Cape Town','South Africa'),
('Leon','Glen','Male','81 Everton Rd,Gillits','0820832830','Leon@gmaiLeonl.com','Durban','South Africa'),
('Charl','Muller','Male','290A Dorset Ecke','0856872553','Charl.muller@yahoo.com','Berlin','Germany'),
('Julia','Julia','Female','2 Wernerring','0672445058','Js234@yahoo.com','Frankfurt','Germany');

INSERT INTO Employees(
first_name,last_name,email,job_title
)
VALUES('Kani','Matthew','mat@gmail.com','Manager'),
('Lesly','Cronje','LesC@gmail.com','Clerk'),
('Gideon','Maduku','m@gmail.com','Accountant');

INSERT INTO Payments(
customer_id,payment_id,payment_date,amount
)
VALUES('1',DEFAULT,'01-09-2018','150.75'),
('5',DEFAULT,'03-09-2018','150.75'),
('4',DEFAULT,'03-09-2018','700.60');

INSERT INTO Products(
product_name,description,price
)
VALUES('Harley Davidson Chopper','This replica features working kickstand, front suspension, gear-shift lever','150.75'),
('Classic Car','Turnable front wheels, steering function','550.75'),
('Sports car','Turnable front wheels, steering function','700.60');

INSERT INTO Orders(
product_id,payment_id,employee_id,date_required,date_shipped,status
)
VALUES('1','1','2','05-09-2018',DEFAULT,'Not shipped'),
('1','2','2','04-09-2018','03-09-2018','Shipped'),
('3','3','3','06-09-2018',DEFAULT,'Not shipped');