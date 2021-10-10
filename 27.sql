-- Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
-- Result set: maker, average HDD capacity.

SELECT pd.maker, AVG(pc.hd)
FROM Product AS pd
JOIN PC AS pc ON pc.model = pd.model
WHERE pd.maker IN (
  SELECT maker
  FROM Product
  WHERE type = 'Printer'
)
GROUP BY pd.maker
