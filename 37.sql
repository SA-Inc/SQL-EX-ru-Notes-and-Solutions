-- Find classes for which only one ship exists in the database (including the Outcomes table).

SELECT *
FROM (
  SELECT class 
  FROM (
    SELECT DISTINCT name, class
    FROM Ships
  ) b

  UNION ALL
  
  SELECT DISTINCT class
  FROM Classes AS c
  JOIN Outcomes AS o ON c.class = o.ship
  WHERE o.ship NOT IN (
    SELECT name
    FROM ships)
  ) a
GROUP BY class
HAVING COUNT(class) = 1
