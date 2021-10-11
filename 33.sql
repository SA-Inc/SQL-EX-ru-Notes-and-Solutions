-- Get the ships sunk in the North Atlantic battle.
-- Result set: ship.

SELECT ship
FROM Outcomes
WHERE battle = 'North Atlantic' AND result = 'sunk'
