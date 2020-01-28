--Select all records from customer
SELECT * FROM Customer;

--Select records only from the name column in the Customers table.
SELECT First_Name FROM Customers;

--Show the name of the Customer whose CustomerID is 1.
SELECT First_Name FROM Customers WHERE Customer_ID=105;

--Update the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.
UPDATE Customers SET First_Name='Sbonelo Mkhize' WHERE Customer_ID=105;

--Delete the record from the Customers table for customer 2 (CustomerID = 2).
DELETE FROM Customers WHERE Customer_ID=105;

--Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.
SELECT COUNT(Status) FROM Orders;

--Return the maximum payment made on the payments table.
SELECT MAX(Amount) FROM Payments;

--Select all customers from the “Customers” table, sorted by the “Country” column.
select * FROM Customers ORDER BY Country ASC;

--Select all products with a price BETWEEN R100 and R600.
select * from products where price between '100' and '600';

--Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.
select * from customers
WHERE city='Berlin'
AND country='Germany';

--Select all fields from “Customers” where city is “Cape Town” OR “Durban”.
select * from customers
WHERE city='Cape Town'
or city='durban';

--Select all records from Products where the Price is GREATER than R500.
select * from products
WHERE price > '500';

--Return the sum of the Amounts on the Payments table.
select SUM(amount) FROM payments;

--Count the number of shipped orders in the Orders table.
select count(*) from orders
where status='Shipped';

--Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
select AVG(price) from products

--Using INNER JOIN create a query that selects all Payments with Customer information.
SELECT customers.customer_ID, payments.payment_ID
FROM customers
INNER JOIN payments
ON customers.customer_ID = payments.customer_ID

--Select all products that have turnable front wheels.
SELECT * FROM products 
WHERE description LIKE 'Turnable front wheels%';