SELECT productCode, productName, customerName
FROM products NATURAL JOIN customers
EXCEPT
SELECT productCode, productName, customerName
FROM products NATURAL JOIN customers LEFT NATURAL JOIN orders NATURAL JOIN orderDetails
ORDER BY customerName, productCode