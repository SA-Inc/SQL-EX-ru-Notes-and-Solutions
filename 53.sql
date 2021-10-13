-- With a precision of two decimal places, determine the average number of guns for the battleship classes.

SELECT CAST(AVG(numGuns * 1.0) AS NUMERIC(6, 2)) AS 'Avg-numGuns'
FROM Classes
WHERE type = 'bb'
