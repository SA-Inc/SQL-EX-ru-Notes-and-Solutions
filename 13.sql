-- Find out the average speed of the PCs produced by maker A.

Select avg(speed)
From Product as pr
Join PC as pc on pc.model = pr.model
Where pr.maker = 'A'
