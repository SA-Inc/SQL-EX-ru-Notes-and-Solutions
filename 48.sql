-- Find the ship classes having at least one ship sunk in battles.

SELECT class
FROM classes
WHERE class IN (
  SELECT class
  FROM (
    SELECT s.name AS ship, c.class AS class
    FROM Classes AS c
    JOIN Ships AS s ON c.class = s.class

    UNION

    SELECT o.ship AS ship, c.class AS class
    FROM Classes AS c
    JOIN Outcomes AS o ON o.ship = c.class
) t
  JOIN outcomes AS o ON o.ship = t.ship
  WHERE o.result = 'sunk'
)
