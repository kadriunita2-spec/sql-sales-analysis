--7. Sales Analysis by Country

SELECT
    C.Country,
    COUNT(DISTINCT O.OrderID) AS TotalOrders,
    COUNT(DISTINCT O.CustomerID) AS TotalCustomers,
    SUM(OD.Quantity * OD.UnitPrice) AS TotalSales,
    SUM(OD.Quantity) AS TotalUnitsSold
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails AS OD
    ON O.OrderID = OD.OrderID
GROUP BY
    C.Country
ORDER BY
    TotalSales DESC;
