---4. Customer Segmentation
WITH CustomerSales AS
(
    SELECT
        C.CustomerID,
        C.FirstName + ' ' + C.LastName AS CustomerName,
        SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
    FROM Customers AS C
    INNER JOIN Orders AS O
        ON C.CustomerID = O.CustomerID
    INNER JOIN OrderDetails AS OD
        ON O.OrderID = OD.OrderID
    GROUP BY
        C.CustomerID,
        C.FirstName,
        C.LastName
)
SELECT
    CustomerID,
    CustomerName,
    TotalSales,
    CASE
        WHEN TotalSales >= 10000 THEN 'High Value Customer'
        WHEN TotalSales >= 5000 THEN 'Medium Value Customer'
        ELSE 'Low Value Customer'
    END AS CustomerSegment
FROM CustomerSales
ORDER BY TotalSales DESC;

