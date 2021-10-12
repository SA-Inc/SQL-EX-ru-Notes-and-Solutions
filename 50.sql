-- Find the battles in which Kongo-class ships from the Ships table were engaged.

SELECT DISTINCT o.battle
FROM Ships AS s
JOIN Outcomes AS o ON o.ship = s.name
WHERE s.class = 'Kongo'
