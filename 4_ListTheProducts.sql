SELECT 
    oi.OrderItemID,
    p.ProductID, 
    p.ProductName, 
    p.Price, 
    oi.Quantity
FROM 
    OrderItems AS oi
JOIN 
    Products AS p
ON 
    oi.ProductID = p.ProductID
ORDER BY oi.OrderId;
