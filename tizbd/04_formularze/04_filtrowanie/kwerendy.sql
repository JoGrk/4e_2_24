-- Lista rozwijana z nazwami krajów z których pochodzą klienci (tylko tych krajów) - wyświetla nazwy klientów z tego kraju

SELECT DISTINCT country
FROM customers
ORDER BY country;

SELECT customerName
FROM customers;

SELECT customerName
FROM customers
WHERE country='France';

-- 2. pole tekstowe, gdzie podajemy początek nazwy produkty i są wyświetlone produkty razem z ceną. Uwaga, ceny podajemy w zł, z dokładnością do dwóch miejsc po przecinku. Jeśli nic nie będzie wpisane do pola, powinny być wyświetlone wszystkie produkty. Jeśli brak produktów pasujących do wzorca, powinien być wyświetlony odpowiedni komunikat. 

SELECT productname, round(price,2)
FROM products
WHERE productname like 'ch%';

SELECT productname, round(price,2)
FROM products;