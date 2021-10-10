-- For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.

Select distinct maker, speed
From Product as pr
Join Laptop as l on l.model = pr.model
Where l.hd >= 10
