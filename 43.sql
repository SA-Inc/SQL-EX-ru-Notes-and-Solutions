-- Get the battles that occurred in years when no ships were launched into water.

SELECT name
FROM Battles
WHERE DATEPART(year, date) NOT IN (
  SELECT launched
  FROM Ships
  WHERE launched IS NOT NULL
)
