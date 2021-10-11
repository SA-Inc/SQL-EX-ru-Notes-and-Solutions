-- One of the characteristics of a ship is one-half the cube of the calibre of its main guns (mw).
-- Determine the average ship mw with an accuracy of two decimal places for each country having ships in the database.

WITH t AS (
SELECT c.country, c.bore, s.name
FROM Classes AS c
JOIN Ships AS s ON s.class = c.class

UNION

SELECT c.country, c.bore, o.ship
FROM Classes AS c
JOIN Outcomes AS o ON o.ship = c.class
)

SELECT t.country, CAST(AVG(POWER(bore, 3.0) / 2.0) AS NUMERIC(6, 2)) AS weight
FROM t
GROUP BY t.country
