SELECT 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    SUM(p.Price * oi.Quantity) AS TotalSpent 
FROM 
    Customers AS c
JOIN 
    Orders AS o
ON 
    c.CustomerID = o.CustomerID
JOIN 
    OrderItems AS oi
ON 
    o.OrderID = oi.OrderID
JOIN 
    Products AS p
ON 
    oi.ProductID = p.ProductID
GROUP BY 
    c.CustomerID, 
    c.FirstName, 
    c.LastName;
