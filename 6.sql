SELECT productCode, productName
FROM products AS p1
WHERE NOT EXISTS
(	SELECT *
	FROM products AS p2
	WHERE p1.quantityInStock > p2.quantityInStock)