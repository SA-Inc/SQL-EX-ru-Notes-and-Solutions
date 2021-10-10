-- Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.

SELECT p.maker, MAX(pc.price) AS Max_price
FROM Product AS p
JOIN PC as pc ON p.model = pc.model
GROUP BY p.maker
