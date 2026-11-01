--5. Inventory Analysis

WITH ProductAnalysis AS
(
    SELECT
        P.ProductID,
        P.ProductName,
        P.CategoryID,
        P.UnitPrice,
        P.StockQuantity,
        ROW_NUMBER() OVER
        (
            PARTITION BY P.CategoryID
            ORDER BY P.UnitPrice DESC
        ) AS ProductRank,
        SUM(P.UnitPrice * P.StockQuantity) OVER
        (
            PARTITION BY P.CategoryID
        ) AS CategoryStockValue
    FROM Products AS P
)
SELECT
    ProductID,
    ProductName,
    CategoryID,
    UnitPrice,
    StockQuantity,
    ProductRank,
    CategoryStockValue
FROM ProductAnalysis
ORDER BY
    CategoryID,
    ProductRank;
