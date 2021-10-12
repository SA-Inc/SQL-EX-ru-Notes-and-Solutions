-- Get the makers who produce only one product type and more than one model. Output: maker, type.

SELECT DISTINCT p.maker, p.type
FROM Product AS p
JOIN (
  SELECT maker
  FROM Product
  GROUP BY maker
  HAVING COUNT(DISTINCT type) = 1 AND COUNT(DISTINCT model) > 1
) t ON t.maker = p.maker
