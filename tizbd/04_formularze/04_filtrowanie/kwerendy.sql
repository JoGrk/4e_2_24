-- Lista rozwijana z nazwami krajów z których pochodzą klienci (tylko tych krajów) - wyświetla nazwy klientów z tego kraju

SELECT DISTINCT country
FROM customers
ORDER BY country;

SELECT customerName
FROM customers;

SELECT customerName
FROM customers
WHERE country='France';
