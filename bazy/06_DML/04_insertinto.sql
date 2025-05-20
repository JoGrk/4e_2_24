-- 1. Utwórz tabelę KatalogConfections zawierającą wszystkie dane o produktach z kategorii Confections
create table katalogConfections as
select products.*
from products 
inner join categories on products.CategoryID = categories.CategoryID
where CategoryName = "Confections";
-- 2. ze względu na nowy podatek podnieś cenę wszystkich artykułów kategorii Confections o 20% w tabeli Products
UPDATE products
inner join categories on products.CategoryID = categories.CategoryID
SET price = price*1.20
WHERE CategoryName = "Confections";

-- 3. Zmień nazwę tabeli KatalogConfections na KatalogTaniejJuzBylo 
ALTER TABLE KatalogConfections
RENAME TO KatalogTaniejJuzBylo;
-- 4. Skopiuj do tabeli KatalogTaniejJuzBylo wszystkie produkty z kategorii Beverages
insert into KatalogTaniejJuzBylo
select products.*
from products 
inner join categories on products.CategoryID = categories.CategoryID
where CategoryName = "Beverages";
-- 5. Do tabeli Archiwum przenieś dane z tabeli Orders dotyczące zamówień z 1996 roku (skopiuj - jeśli trzeba utwórz tabelę -i potem usuń)
CREATE TABLE Archiwum as
SELECT *
FROM Orders
WHERE OrderDate LIKE '1996%';
-- 6. Utwórz tabelę  Archiwum_Kontrahentów z danymi: nazwa dostawcy lub nazwa klienta, osoba do kontaktu, miasto, kraj z Włoch
CREATE TABLE Archiwum_Kontrahentow as
SELECT SupplierName, ContactName, City,country
FROM suppliers
WHERE Country = 'Italy'
UNION
SELECT customerName, ContactName, City,country
FROM customers
WHERE Country = 'Italy';

-- 7. Usuń klientów i dostawców z Włoch z tabel Customers i Suppliers (dwoma zapytaniam
UPDATE orders 
SET customerid = NULL
WHERE customerid IN (SELECT customerid FROM customers WHERE country = 'Italy');
DELETE FROM customers
WHERE country='Italy'; 

DELETE FROM products
WHERE supplierid IN (SELECT supplierid FROM suppliers WHERE country = 'Italy');

UPDATE order_details
SET productid = NULL 
WHERE productid IN (SELECT productid
                    FROM products
                    INNER JOIN suppliers ON products.supplierid = suppliers.supplierid WHERE country = 'Italy');




DELETE FROM suppliers
WHERE country = 'Italy';

-- 8. Do tabeli Archiwum_Kontrahentów dodaj kontrahentów z Niemiec i Francji
INSERT INTO Archiwum_Kontrahentow
SELECT SupplierName,ContactName,City,Country
FROM suppliers
WHERE country IN('Germany','France')
UNION 
SELECT CustomerName,ContactName,City,Country
FROM Customers 
WHERE country IN('Germany','France');
 

 

-- 9. Z tabeli Customers wybierz dane klientów z Niemiec i dodaj ich do tabeli Suppliers

-- 10. Utwórz tabelę Archiwum zawierającą wszystkie dane z tabeli Orders dotyczące zamówień z 1996 roku
CREATE TABLE archiwum as
SELECT * from Orders
where year(OrderDate) = 1996;
-- 11. Usuń z tabeli Orders wszystkie zamówienia z 1996 roku
DELETE from order_details
WHERE OrderID IN (SELECT OrderID FROM orders WHERE OrderDate LIKE '1996%' );

DELETE from orders
WHERE OrderDate LIKE '1996%';
-- 12. Do tabeli Archiwum dodaj wszystkie dane dotyczące zamówień ze stycznia 1997 roku
INSERT INTO Archiwum 
SELECT * 
FROM Orders
WHERE OrderDate LIKE '1997-01%';

 