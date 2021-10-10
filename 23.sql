-- Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
-- Result set: maker

SELECT p.maker
FROM Product AS p
JOIN PC AS pc ON pc.model = p.model
WHERE pc.speed >= 750

INTERSECT

SELECT p.maker
FROM Product AS p
JOIN Laptop AS l ON l.model = p.model
WHERE l.speed >= 750
