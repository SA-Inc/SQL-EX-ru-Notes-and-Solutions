-- List the names of lead ships in the database (including the Outcomes table).

SELECT s.name
FROM Ships AS s
WHERE s.name = s.class

UNION

SELECT o.ship AS name
FROM Outcomes AS o
WHERE o.ship IN (SELECT class FROM Classes)
