-- List all printer makers. Result set: maker.

Select Distinct maker
From Product
Where type = 'Printer'
