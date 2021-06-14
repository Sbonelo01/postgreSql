SELECT * FROM Customers;

SELECT first_name FROM Customers;

SELECT first_name FROM Customers WHERE customer_id=1;

UPDATE Customers SET first_name='Lerato Mabitso' WHERE customer_id=1;

DELETE FROM Customers WHERE customer_id=2;

SELECT COUNT(DISTINCT status) FROM Orders;

SELECT MAX(amount) FROM Payments;

SELECT * FROM Customers ORDER BY country ASC;

SELECT * FROM Products WHERE price between '100' and '600';

SELECT * FROM Customers
WHERE city='Berlin'
AND country='Germany';

SELECT * FROM Customers
WHERE city='Cape Town'
or city='Durban';

SELECT * FROM Products
WHERE price > '500';

SELECT SUM(amount) FROM Payments;

SELECT COUNT(*) FROM Orders
WHERE Status='Shipped';

SELECT AVG(price) FROM Products;

SELECT
   Customers.customer_id,
   Customers.first_name,
   Customers.last_name,
   Customers.email,
   Payments.amount,
   Payments.payment_Date,
   Customers.phone,
   Customers.country,
   Customers.city,
   Customers.address
FROM
   Customers
INNER JOIN Payments ON Customers.customer_id  =  Payments.customer_id;

SELECT * FROM Products 
WHERE description LIKE 'Turnable front wheels%';
