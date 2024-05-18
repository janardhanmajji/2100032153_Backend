SELECT 
    p.ProductID, 
    p.ProductName, 
    SUM(oi.Quantity) AS MostPopular
FROM 
    OrderItems AS oi
JOIN 
    Products AS p
ON 
    oi.ProductID = p.ProductID
GROUP BY 
    p.ProductID, 
    p.ProductName
ORDER BY 
    MostPopular DESC
LIMIT 1;
