-- Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
-- Result set: maker.

SELECT DISTINCT pd.maker
FROM Product AS pd
JOIN PC AS pc ON pd.model = pc.model
WHERE pc.ram = (SELECT MIN(ram) FROM pc)
AND pc.code IN (
  SELECT code 
  FROM (
    SELECT code, model, speed, ram 
    FROM pc 
    WHERE ram = (SELECT MIN(ram) FROM pc)
  ) a 
  WHERE speed = (
    SELECT MAX(speed) 
    FROM pc 
    WHERE ram = (SELECT MIN(ram) FROM pc)
  )
)
AND pd.maker IN (
  SELECT maker 
  FROM product 
  WHERE type = 'printer'
)
