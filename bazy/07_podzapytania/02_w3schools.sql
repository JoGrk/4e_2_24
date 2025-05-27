-- Podzapytanie wybierające wiele wartości
-- 1. Wybierz dane klientów klientów, którzy nie kupili żadnego produktu z kategorii Confections

SELECT CustomerID
FROM orders
    INNER JOIN Order_Details ON orders.orderID = Order_Details.orderID
    INNER JOIN products ON products.productID = Order_Details.productID
    INNER JOIN categories ON categories.categoryID = products.categoryID
WHERE categoryName ='confections';


SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID
FROM orders
    INNER JOIN Order_Details ON orders.orderID = Order_Details.orderID
    INNER JOIN products ON products.productID = Order_Details.productID
    INNER JOIN categories ON categories.categoryID = products.categoryID
WHERE categoryName ='confections'
);
 
-- 2. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
SELECT CustomerID
FROM orders
WHERE OrderDate LIKE '1997%';


SELECT CustomerName, Address
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
    FROM orders
    WHERE OrderDate LIKE '1997%'
);


 
-- 3. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.

SELECT employeeID
from Customers 
    INNER JOIN orders ON Customers.CustomerID=orders.CustomerID
WHERE Country LIKE 'Argentina';

SELECT FirstName, LastName
FROM employees
WHERE employeeID NOT IN (SELECT employeeID
from Customers 
    INNER JOIN orders ON Customers.CustomerID=orders.CustomerID
WHERE Country LIKE 'Argentina'
);
-- 4. Wypisz nazwy i kraje klientów, którzy zawsze zamawiali tylko jeden produkt.

 
 
 
 
-- Podzapytania i zapytania DML
-- 1. Usuń wszystkich szczegóły zamówień (wiersze z OrderDetails) dotyczące produktu o nazwie "Chang"

-- 2. Zwiększ o 10% ceny wszystkich produktów z kategorii "Confections"

-- 3. Zmniejsz o 5% ceny wszystkich produktów dostarczanych przez dostawców z  Tokyo  (city)

-- 4. Usuń wszystkie produkty z kategorii  o opisie "Cheeses" (Description)  o cenie większej od 50

-- 5. Zwiększ o 10% cenę wszystkich produktów z kategorii o nazwie zaczynającej się na literę C 

-- 6. Usuwamy wszystkie produkty dostarczane przez dostawców z USA

-- 7. Usuń wszystkie zamówienia z Orders złożone przez klientów z Londynu ('London').

 
-- Podzapytania wybierające jedną wartość
-- 1. Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu danej kategorii 
 
-- 2. Dla każdego produktu podaj jego nazwę, cenę, średnią cenę wszystkich produktów oraz różnicę między ceną produktu a średnią ceną wszystkich produktów