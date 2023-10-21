SELECT productName
FROM orders NATURAL JOIN orderdetails 
	NATURAL JOIN products NATURAL JOIN productlines
	NATURAL JOIN customers
WHERE customerName = "Mini Wheels Co."
ORDER BY productLine