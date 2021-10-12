-- Find the names of the ships having a gun caliber of 16 inches (including ships in the Outcomes table).

SELECT t.ship
FROM (
    SELECT s.name AS ship, c.class AS class
    FROM Classes AS c
    JOIN Ships AS s ON c.class = s.class

    UNION

    SELECT o.ship AS ship, c.class AS class
    FROM Classes AS c
    JOIN Outcomes AS o ON o.ship = c.class
) t
JOIN Classes AS c ON c.class = t.class
WHERE c.bore = 16
