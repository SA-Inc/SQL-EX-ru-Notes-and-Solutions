-- Find the ships that `survived for future battles`; that is, after being damaged in a battle, they participated in another one, which occurred later.

SELECT DISTINCT after.ship
FROM (
  SELECT ship, result, date
  FROM Outcomes AS o
  JOIN Battles AS b ON o.battle = b.name
  WHERE result = 'damaged'
) before
JOIN (
  SELECT ship, result, date
  FROM Outcomes AS o
  JOIN Battles AS b ON o.battle = b.name
) after
ON before.ship = after.ship
WHERE after.date > before.date
