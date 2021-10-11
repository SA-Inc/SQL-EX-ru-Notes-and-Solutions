-- In accordance with the Washington Naval Treaty concluded in the beginning of 1922, it was prohibited to build battle ships with a displacement of more than 35 thousand tons.
-- Get the ships violating this treaty (only consider ships for which the year of launch is known).
-- List the names of the ships.

SELECT DISTINCT s.name
FROM Classes AS c
JOIN Ships AS s ON s.class = c.class
WHERE s.launched IS NOT NULL AND c.type = 'bb' AND s.launched >= 1922 AND c.displacement > 35000
