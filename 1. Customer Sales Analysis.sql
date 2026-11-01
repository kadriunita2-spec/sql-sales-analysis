
---1. Customer Sales Analysis

SELECT 
    C.CustomerID,
    C.FirstName + ' ' + C.LastName AS CustomerName,
    C.City,
    C.Country,
    COUNT(DISTINCT O.OrderID) AS TotalOrders,
    SUM(OD.UnitPrice * OD.Quantity) AS TotalSales
FROM Customers AS C
INNER JOIN dbo.Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails AS OD
    ON O.OrderID = OD.OrderID
GROUP BY 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    C.City,
    C.Country
ORDER BY 
    TotalSales DESC;