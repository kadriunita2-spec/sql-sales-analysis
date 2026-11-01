--8. Monthly Sales Trend

SELECT
    YEAR(O.OrderDate) AS SalesYear,
    MONTH(O.OrderDate) AS SalesMonth,
    DATENAME(MONTH, O.OrderDate) AS MonthName,
    COUNT(DISTINCT O.OrderID) AS TotalOrders,
    SUM(OD.Quantity * OD.UnitPrice) AS TotalSales,
    SUM(OD.Quantity) AS TotalUnitsSold
FROM Orders AS O
INNER JOIN OrderDetails AS OD
    ON O.OrderID = OD.OrderID
GROUP BY
    YEAR(O.OrderDate),
    MONTH(O.OrderDate),
    DATENAME(MONTH, O.OrderDate)
ORDER BY
    SalesYear,
    SalesMonth;