WITH numCust AS (
	SELECT customerNumber, salesRepEmployeeNumber AS employeeNumber
	FROM customers)
SELECT firstName, lastName, city, COUNT(customerNumber) AS numClients
FROM employees NATURAL JOIN offices NATURAL JOIN numCust
GROUP BY employeeNumber
ORDER BY  numClients DESC