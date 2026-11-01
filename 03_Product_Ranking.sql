--3. Product Ranking by Category

WITH ProductRank AS
(
    SELECT
        P.ProductID,
        P.ProductName,
        P.CategoryID,
        P.UnitPrice,
        ROW_NUMBER() OVER
        (
            PARTITION BY P.CategoryID
            ORDER BY P.UnitPrice DESC
        ) AS ProductRank
    FROM Products AS P
)
SELECT
    ProductID,
    ProductName,
    CategoryID,
    UnitPrice,
    ProductRank
FROM ProductRank
WHERE ProductRank <= 2
ORDER BY
    CategoryID,
    ProductRank;
