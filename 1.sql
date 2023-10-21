SELECT customerName, addressLine1, 
  addressLine2, city, state, postalCode
FROM customers
WHERE salesRepEmployeeNumber IS NULL
ORDER BY customerName
