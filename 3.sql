SELECT firstName, lastName
FROM employees
WHERE (firstName LIKE "M%" AND lastName LIKE "P%")
	OR (firstName LIKE "P%" AND lastName LIKE "M%")
ORDER BY lastName