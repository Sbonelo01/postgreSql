--1.Select all records from customer
SELECT * FROM Customer;

--2.Select records only from the name column in the Customers table.
SELECT First_Name FROM Customers;

--3.Show the name of the Customer whose CustomerID is 1.
SELECT First_Name FROM Customers WHERE Customer_ID=1;

--4.Update the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.
UPDATE Customers SET First_Name='Lerato Mabitso' WHERE Customer_ID=1;

--5.Delete the record from the Customers table for customer 2 (CustomerID = 2).
DELETE FROM Customers WHERE Customer_ID=2;

--6.Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.
SELECT COUNT (DISTINCT Status) FROM Orders;

--7.Return the maximum payment made on the payments table.
SELECT MAX(Amount) FROM Payments;

--8.Select all customers from the “Customers” table, sorted by the “Country” column.
SELECT * FROM Customers ORDER BY Country ASC;

--9.SELECT all products with a price BETWEEN R100 and R600.
SELECT * from products where price between '100' and '600';

--10.SELECT all fields from “Customers” where country is “Germany” AND city is “Berlin”.
SELECT * from customers
WHERE city='Berlin'
AND country='Germany';

--11.SELECT all fields from “Customers” where city is “Cape Town” OR “Durban”.
SELECT * from customers
WHERE city='Cape Town'
or city='Durban';

--12.SELECT all records from Products where the Price is GREATER than R500.
SELECT * from products
WHERE price > '500';

--13.Return the sum of the Amounts on the Payments table.
SELECT SUM(amount) FROM payments;

--14.Count the number of shipped orders in the Orders table.
SELECT count(*) from orders
where status='Shipped';

--15.Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
SELECT AVG(price) from products

--16.Using INNER JOIN create a query that selects all Payments with Customer information.
SELECT
   customers.customer_ID,
   First_Name,
   Last_Name,
   Email,
   Amount,
   Payment_Date,
   Phone,
   Country,
   City,
   Address
FROM
   customers
INNER JOIN payments ON customers.customer_ID  =  payments.customer_ID;

--17.Select all products that have turnable front wheels.
SELECT * FROM products 
WHERE description LIKE 'Turnable front wheels%'
