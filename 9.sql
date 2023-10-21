WITH sumPay AS
(	SELECT customerNumber, SUM(amount) as totalPayment
	FROM payments
	GROUP BY customerNumber)
SELECT customerNumber, customerName, totalPayment
FROM customers NATURAL JOIN sumPay 
ORDER BY totalPayment