-- For each class, determine the year the first ship of this class was launched.
If the lead ship’s year of launch is not known, get the minimum year of launch for the ships of this class.
Result set: class, year.

SELECT c.class, MIN(s.launched)
FROM Classes AS c
LEFT JOIN Ships AS s ON s.class = c.class
GROUP BY c.class
