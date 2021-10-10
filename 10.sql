-- Find the printer models having the highest price. Result set: model, price.

Select model, price
From Printer
Where price = (
  Select MAX(price)
  From Printer
)
