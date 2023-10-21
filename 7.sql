WITH allcount AS
(	SELECT COUNT(employeeNumber) AS numEmps, city
	FROM employees NATURAL JOIN offices
	GROUP BY city)
SELECT *
FROM allcount
WHERE NOT EXISTS
(	SELECT *
	FROM allcount AS mins
	WHERE allcount.numEmps > mins.numEmps)
OR NOT EXISTS
(	SELECT *
	FROM allcount as maxes
	WHERE allcount.numEmps < maxes.numEmps)