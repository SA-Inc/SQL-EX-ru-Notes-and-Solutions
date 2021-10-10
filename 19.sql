-- For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
-- Result set: maker, average screen size.

SELECT p.maker, AVG(l.screen)
FROM Product AS p
JOIN Laptop AS l ON p.model = l.model
GROUP BY p.maker
