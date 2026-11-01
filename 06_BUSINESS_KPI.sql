--6. Business KPI Analysis

SELECT
    COUNT(DISTINCT O.OrderID) AS TotalOrders,
    COUNT(DISTINCT O.CustomerID) AS TotalCustomers,
    SUM(OD.Quantity * OD.UnitPrice) AS TotalSales,
    SUM(OD.Quantity) AS TotalUnitsSold,
    SUM((P.UnitPrice - P.UnitCost) * OD.Quantity) AS TotalProfit
FROM Orders AS O
INNER JOIN OrderDetails AS OD
    ON O.OrderID = OD.OrderID
INNER JOIN Products AS P
    ON OD.ProductID = P.ProductID;
