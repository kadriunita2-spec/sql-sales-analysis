--2. Product Profit Analysis

SELECT 
    P.ProductID,
    P.ProductName,
    SUM(OD.Quantity) AS TotalQuantity,
    SUM(OD.Quantity * OD.UnitPrice) AS Revenue,
    SUM(OD.Quantity * P.UnitCost) AS TotalCost,
    SUM(OD.Quantity * (OD.UnitPrice - P.UnitCost)) AS Profit
FROM dbo.Products AS P
INNER JOIN dbo.OrderDetails AS OD
    ON P.ProductID = OD.ProductID
GROUP BY 
    P.ProductID,
    P.ProductName
ORDER BY 
    Profit DESC;