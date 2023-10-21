SELECT customerName, creditLimit
FROM customers
WHERE creditLimit >= 100000 AND creditLimit <= 200000
ORDER BY customerName