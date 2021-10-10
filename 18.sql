-- Get the laptop models that have a speed smaller than the speed of any PC.
-- Result set: type, model, speed.

SELECT DISTINCT pr.type, l.model, l.speed
FROM Product AS pr
LEFT JOIN Laptop AS l ON pr.model = l.model
WHERE l.speed < ALL(
  SELECT speed
  FROM PC
)
