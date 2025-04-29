-- 1. Dodaj nowy towar:   'cukierki' o id 78, dostarczany przez dostawcę o id 1  z kategorii o id 2  (słodycze), cena 15, jednostka (unit) 10
INSERT INTO products
VALUES 
(NULL,'cukierki',1,2,'10',15);

-- 2. Dodaj nowego kuriera (shippers) - GPL, telefon 22 123 45 67
INSERT INTO shippers 
VALUES 
(NULL, 'GPL','22 123 45 67');
-- 3. dopisz nowy towar: 'karty' o cenie 20. podaj tylko te dwa pola
INSERT INTO products 
(productname, price)
VALUES 
('karty',20);
-- 4. zmień cenę produktu o nazwie karty na 10
UPDATE products
SET Price = 10
WHERE productname = 'karty';
-- 5. zmień nazwisko pracownika (employees) o id 3 na 'Fuller' (employeeID, LastName)
UPDATE employees
SET LastName = 'Fuller'
WHERE employeeID = 3;
-- 6. zwiększ cenę wszystkich produktów o 10 (products, price)
UPDATE products
SET price = price+10;

-- 7. Zmniejsz cenę wszystkich produktów o 10%
    UPDATE products
    SET price = price*0.9;

-- 8. zwiększ cenę o 5% wszystkich produktów dostarczanych przez dostawcę o id 4 (supplierID)
UPDATE products
SET price = price*1.05
WHERE supplierID = 4;
-- 9. zmień dostawcę produktów z kategorii 7 na dostawcę o id 3
UPDATE products
SET supplierID = 3
WHERE CategoryID = 7;
-- 10. w zamówieniu 10248 zmień numer pracownika na 3, datę na 5 lipca 1996 i numer dostawcy na 2 
UPDATE orders
SET employeeID = 3, orderdate = '1996-07-05', shipperid = 2
WHERE orderid = 10248;
-- 11. Usuń klientów o nazwie na literę M
UPDATE orders
SET customerID = NULL
WHERE customerID in (SELECT customerID
              FROM customers
             WHERE customerName LIKE 'M%');

DELETE
FROM customers
WHERE customerName LIKE 'M%';

-- 12. usuń produkty o cenie pomiędzy 10 a 20-
UPDATE order_details
SET productID = NULL
WHERE productid IN (SELECT productid
                    FROM products
                    WHERE price BETWEEN 10 AND 20 );