-- Ascertain amount generated from each product
Use angies_berry_corner;

Select p.product_id,
	   p.name,
       Sum(tr.Amount) as Total_Amount
From transaction_report tr
	Join products p
		On p.product_id=tr.product_id
Group by name -- Grouping by name helps to sum up Amount for individual products
Order by name