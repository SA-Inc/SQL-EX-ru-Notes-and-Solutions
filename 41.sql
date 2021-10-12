-- For each maker who has models at least in one of the tables PC, Laptop, or Printer, determine the maximum price for his products.
-- Output: maker; if there are NULL values among the prices for the products of a given maker, display NULL for this maker, otherwise, the maximum price.

SELECT p.maker, 

-- if one of price is NULL set for all maker NULL
CASE 
  WHEN SUM(
    CASE 
      WHEN t.price IS NULL THEN 1 
      ELSE 0 
    END) > 0 THEN NULL
  ELSE MAX(t.price)
END AS price

FROM (
  SELECT model, price
  FROM PC

  UNION ALL

  SELECT model, price
  FROM Laptop

  UNION ALL

  SELECT model, price
  FROM Printer
) t
JOIN Product AS p ON p.model = t.model
GROUP BY p.maker
