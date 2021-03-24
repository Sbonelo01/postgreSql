
--1.Select all records from customer
SELECT * FROM Customers;

--2.Select records only from the name column in the Customers table.
SELECT first_name FROM Customers;

--3.Show the name of the Customer whose CustomerID is 1.
SELECT first_name FROM Customers WHERE Customers.id=1;

--4.Update the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.
UPDATE Customers SET first_name='Lerato Mabitso' WHERE Customers.id=1;

--5.Delete the record from the Customers table for customer 2 (CustomerID = 2).
DELETE FROM Customers WHERE Customers.id=2;

--6.Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.
SELECT COUNT (DISTINCT Status) FROM Orders;

--7.Return the maximum payment made on the payments table.
SELECT MAX(amount) FROM Payments;

--8.Select all customers from the “Customers” table, sorted by the “Country” column.
SELECT * FROM Customers ORDER BY Country ASC;

--9.SELECT all products with a price BETWEEN R100 and R600.
SELECT * from Products where Price between '100' and '600';

--10.SELECT all fields from “Customers” where country is “Germany” AND city is “Berlin”.
SELECT * from Customers
WHERE city='Berlin'
AND country='Germany';

--11.SELECT all fields from “Customers” where city is “Cape Town” OR “Durban”.
SELECT * from Customers
WHERE city='Cape Town'
or city='Durban';

--12.SELECT all records from Products where the Price is GREATER than R500.
SELECT * from Products
WHERE Price > '500';

--13.Return the sum of the Amounts on the Payments table.
SELECT SUM(amount) FROM Payments;

--14.Count the number of shipped orders in the Orders table.
SELECT count(*) from Orders
where Status='Shipped';

--15.Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
SELECT AVG(Price) from Products;

--16.Using INNER JOIN create a query that selects all Payments with Customer information.
SELECT
   customers.id,
   customers.first_name,
   customers.Last_Name,
   customers.Email,
   payments.Amount,
   payments.Payment_Date,
   customers.Phone,
   customers.Country,
   customers.City,
   customers.Address
FROM
   Customers
INNER JOIN Payments ON Customers.id  =  payments.id;

--17.Select all products that have turnable front wheels.
SELECT * FROM Products 
WHERE description LIKE 'Turnable front wheels%';