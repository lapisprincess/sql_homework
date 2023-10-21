WITH quantities AS 
(	SELECT orderNumber, SUM(quantityOrdered) AS orderQuantity
	FROM orderdetails 
	GROUP BY orderNumber)
SELECT customerName, AVG(orderQuantity)
FROM quantities NATURAL JOIN orders NATURAL JOIN customers
GROUP BY customerNumber
ORDER BY customerName