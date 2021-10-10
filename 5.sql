-- Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.

Select model, speed, hd 
From PC
Where price < 600 and cd in ('12x', '24x')
