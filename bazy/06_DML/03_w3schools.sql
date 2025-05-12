-- 1. Usuń klientów z Meksyku
UPDATE orders
SET customerID = NULL
WHERE customerID IN (SELECT customerID 
                    FROM customers
                    WHERE Country LIKE 'Mexico' );
DELETE FROM customers
WHERE country LIKE 'Mexico';
 
-- 2. Usuń produkty o cenie mniejszej niż 15
UPDATE order_details
SET productID = NULL 
WHERE productID IN(SELECT productID
                    FROM products
                    WHERE price<15
                );
 DELETE 
 FROM products
 WHERE price<15;


-- 3. Zmień numer dostawcy produktu o id 2 na dostawcę o id 3
 update products
 set supplierID = 3
 where productID = 2;
-- 4, Zmień osobę do kontaktów na siebie dla klienta o numerze 1
 
-- 5. Zmniejsz o 5% cenę wszystkich produktów dostarczanych przez dostawcę o numerze 7
 UPDATE products
 SET price = price*0.95
 WHERE supplierID = 7;
-- 6. Zwiększ cenę produktów z kategorii 1 o 10%
 
-- 7. Dodaj nową kategorię produktów
 
-- 8. Z tabeli Pracownicy (Employees) usuń pracownika o numerze 3 (EmployeeID). 

-- 9. Dodaj jeszcze jednego dostawcę (tabela Shippers)

-- 10. Podnieś cenę Tofu do 30 (ProductName -nazwa produktu, Price - cena, tabela Products)

-- 11. Podnieś o 10% cenę (Price) wszystkich produktów o nazwie (ProductName) zaczynającej się na literę C) (tabela Products)

-- 12. Usuń z tabeli OrderDetails zamówienia o ID 10443 oraz 10440 (OrderID).

-- 13. Zmień adres (Address), miasto (City) i kraj (Country) dostawcy o numerze 2  (SupplierID) na ul. Pocztową, Nakło, Polskę. (tabela Suppliers) -->