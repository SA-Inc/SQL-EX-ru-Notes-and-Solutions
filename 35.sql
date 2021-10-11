-- Find models in the Product table consisting either of digits only or Latin letters (A-Z, case insensitive) only.
-- Result set: model, type.

SELECT model, type
FROM Product AS pd
WHERE model NOT LIKE '%[^a-z]%' OR model NOT LIKE '%[^A-Z]%' OR model NOT LIKE '%[^0-9]%'
