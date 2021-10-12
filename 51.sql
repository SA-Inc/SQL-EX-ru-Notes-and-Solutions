-- Find the names of the ships with the largest number of guns among all ships having the same displacement (including ships in the Outcomes table).

WITH a AS (
  SELECT s.name AS ship, c.class AS class, c.numGuns AS numGuns, c.displacement AS displacement
  FROM Classes AS c
  JOIN Ships AS s ON c.class = s.class

  UNION

  SELECT o.ship AS ship, c.class AS class, c.numGuns AS numGuns, c.displacement AS displacement
  FROM Classes AS c
  JOIN Outcomes AS o ON o.ship = c.class
)

SELECT ship
FROM a
JOIN (
  SELECT displacement, MAX(numGuns) AS MaxNum
  FROM a
  GROUP BY displacement
) AS b ON a.displacement = b.displacement AND a.numGuns = b.MaxNum
