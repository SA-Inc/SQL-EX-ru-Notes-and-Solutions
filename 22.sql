-- For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.
-- esult set: speed, average price.

SELECT speed, AVG(price) AS Avg_price
FROM PC
WHERE speed > 600
GROUP BY speed
