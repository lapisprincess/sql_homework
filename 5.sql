SELECT DISTINCT customerName
FROM customers NATURAL JOIN employees
WHERE contactLastName = lastName
	OR contactFirstName = firstName
ORDER BY customerName