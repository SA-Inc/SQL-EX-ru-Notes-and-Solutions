-- For each class, find out the number of ships of this class that were sunk in battles.
-- Result set: class, number of ships sunk.

SELECT class, SUM(r) sunks 
FROM (
SELECT name, class,
  CASE 
    WHEN result = 'sunk' 
    THEN 1 ELSE 0 
    END r 
FROM Ships AS s 
LEFT JOIN Outcomes AS o ON o.ship = s.name

UNION

SELECT ship, class,
  CASE 
    WHEN result = 'sunk' 
    THEN 1 ELSE 0 
    END r
FROM Classes c
JOIN (
  SELECT * 
  FROM Outcomes
  WHERE NOT Ship IN (
    SELECT name 
    FROM Ships
  )
) AS ot ON ot.ship = c.class
) AS b GROUP BY class
