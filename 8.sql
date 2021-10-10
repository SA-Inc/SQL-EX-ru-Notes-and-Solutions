-- Find the makers producing PCs but not laptops.

SELECT maker 
FROM Product
WHERE TYPE IN ('PC')
EXCEPT
SELECT maker 
FROM Product 
WHERE TYPE IN ('Laptop')
