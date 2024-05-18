SELECT
    DATE_FORMAT(o.OrderDate, '%Y-%m') AS OrderMonth,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(Products.Price * OrderItems.Quantity) AS TotalSalesAmount
FROM
    Orders AS o
JOIN
    OrderItems ON o.OrderID = OrderItems.OrderID
JOIN
    Products ON OrderItems.ProductID = Products.ProductID
WHERE
    YEAR(o.OrderDate) = 2023
GROUP BY
    DATE_FORMAT(o.OrderDate, '%Y-%m');
