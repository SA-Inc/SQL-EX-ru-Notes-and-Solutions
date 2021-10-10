-- Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.

Select distinct pr.maker
From Product as pr
Inner join PC as pc on pr.model = pc.model
Where pc.speed >= 450
