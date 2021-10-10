-- For the ships in the Ships table that have at least 10 guns, get the class, name, and country.

Select c.class, s.name, c.country
From Ships as s
Join Classes as c on c.class = s.class
Where c.numGuns >= 10
