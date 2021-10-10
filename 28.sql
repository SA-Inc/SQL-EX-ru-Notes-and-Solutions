-- Using Product table, find out the number of makers who produce only one model.

SELECT COUNT(maker) AS 'qty'
FROM (
  SELECT maker, COUNT(model) AS 'count'
  FROM Product
  GROUP BY maker
) a
WHERE count = 1
