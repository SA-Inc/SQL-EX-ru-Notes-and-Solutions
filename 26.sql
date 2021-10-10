-- Find out the average price of PCs and laptops produced by maker A.
-- Result set: one overall average price for all items.

WITH t AS (
  SELECT pc.price AS 'price'
  FROM Product AS pd
  JOIN PC AS pc ON pc.model = pd.model
  WHERE pd.maker = 'A'

  UNION ALL

  SELECT l.price AS 'price'
  FROM Product AS pd
  JOIN Laptop AS l ON l.model = pd.model
  WHERE pd.maker = 'A'
)

SELECT AVG(t.price)
FROM t
