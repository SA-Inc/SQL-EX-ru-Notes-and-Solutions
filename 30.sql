-- Under the assumption that receipts of money (inc) and payouts (out) can be registered any number of times a day for each collection point [i.e. the code column is the primary key], display a table with one corresponding row for each operating date of each collection point.
-- Result set: point, date, total payout per day (out), total money intake per day (inc).
-- Missing values are considered to be NULL.

SELECT
  CASE 
    WHEN i.point IS NULL THEN o.point 
    ELSE i.point 
  END AS point, 
  CASE 
    WHEN i.date IS NULL THEN o.date 
    ELSE i.date 
  END AS date,
  o.outcome AS outcome,
  i.income AS income
FROM (
  SELECT point, date, SUM(out) AS outcome
  FROM Outcome
  GROUP BY point, date
) o
FULL JOIN (
  SELECT point, date, SUM(inc) AS income
  FROM Income
  GROUP BY point, date
) i
ON i.date = o.date 
AND i.point = o.point
