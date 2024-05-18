SELECT OrderId, OrderDate, FirstName, LastName, Email
FROM orders AS o
JOIN customers AS c
ON o.CustomerID = c.CustomerID;