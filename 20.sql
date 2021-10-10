-- Find the makers producing at least three distinct models of PCs.
-- Result set: maker, number of PC models.

SELECT p.maker, COUNT(*)
FROM Product AS p
WHERE p.type = 'PC'
GROUP BY p.maker
HAVING COUNT(p.model) >= 3
