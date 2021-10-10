-- Get the models and prices for all commercially available products (of any type) produced by maker B.

Select p.model, u.price
From Product as p
Join
(Select model, price from PC
Union
Select model, price from Laptop
Union
Select model, price from Printer) as u
on p.model = u.model
Where p.maker = 'B'
