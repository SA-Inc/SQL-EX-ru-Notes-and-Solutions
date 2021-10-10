-- List the models of any type having the highest price of all products present in the database.

WITH t AS (
  SELECT model, price
  FROM PC

  UNION 

  SELECT model, price
  FROM Laptop

  UNION 

  SELECT model, price
  FROM Printer
)

SELECT t.model
FROM t
WHERE t.price = (SELECT MAX(t.price) FROM t)
