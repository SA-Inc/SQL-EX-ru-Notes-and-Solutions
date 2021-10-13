-- With a precision of two decimal places, determine the average number of guns for all battleships (including the ones in the Outcomes table).

SELECT CAST(AVG(numGuns * 1.0) AS NUMERIC(6, 2)) AS 'Avg-numGuns'
FROM (
  SELECT s.name AS ship, c.numGuns
  FROM Classes AS c
  JOIN Ships AS s ON s.class = c.class
  WHERE c.type = 'bb'
  
  UNION
  
  SELECT o.ship AS ship, c.numGuns
  FROM Outcomes AS o
  JOIN Classes AS c ON o.ship = c.class
  WHERE c.type = 'bb'
) t
