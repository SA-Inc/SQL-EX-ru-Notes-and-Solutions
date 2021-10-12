-- For each ship that participated in the Battle of Guadalcanal, get its name, displacement, and the number of guns.

SELECT DISTINCT o.ship, c.displacement, c.numGuns
FROM Classes AS c
-- get all data from Classess and join Ship data, if match set values, else set NULL from Ships side
-- (Classess Data stay and append with NULLs Ships Data)
LEFT JOIN Ships AS s ON s.class = c.class
-- get all data from Classess and Ships result table, and join Outcomes data, if match set values, else set NULL from Result table side
-- (Outcomes Data stay and append with NULLs Result Table)
RIGHT JOIN Outcomes AS o ON c.class = o.ship OR o.ship = s.name
WHERE o.battle = 'Guadalcanal'
