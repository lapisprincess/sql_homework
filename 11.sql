SELECT DISTINCT productName,  (MSRP * quantityInStock) - (buyPrice * quantityInStock) AS profit
FROM customers NATURAL JOIN products
ORDER BY profit