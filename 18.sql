-- Find the makers of the cheapest color printers.
-- Result set: maker, price.

SELECT DISTINCT pd.maker, pr.price
FROM Product AS pd
JOIN Printer AS pr ON pd.model = pr.model
WHERE pr.color = 'y' AND pr.price = (
  SELECT MIN(price)
  FROM Printer
  WHERE color = 'y'
)
