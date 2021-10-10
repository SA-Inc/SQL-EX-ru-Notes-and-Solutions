-- Get hard drive capacities that are identical for two or more PCs.
-- Result set: hd.

Select hd
From PC
Group by hd
Having count(*) >= 2
