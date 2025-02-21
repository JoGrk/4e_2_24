-- 1. Tabela Order_Details. Wyświetl sumę wszystkich sprzedanych ilości (Quantity)
SELECT sum(quantity)
FROM Order_Details;
-- 2. Products. 

-- A.Wyświetl najpierw 23% podatek z ceny (price) oraz nazwę produktu (productname). 

SELECT Price *0.23, productname 
FROM Products;
-- B.Następnie wyświetl średni 23% podatek z cen wszystkich produktów
SELECT AVG(Price *0.23)
FROM Products;
-- 3 Products. Zlicz ilość produktów.
SELECT COUNT(*)
FROM Products;
-- 4. Product. Pogrupuj produkty według CategoryID i oblicz dla każdej kategorii najwyższą i najniższą cenę. Dane posortuj malejąco według CategoryID
SELECT CategoryID ,MAX(Price), MIN(Price)
FROM Products
GROUP BY CategoryID
ORDER BY CategoryID DESC;
-- 5. Products

-- A. Wyświetl wszystkie towary sprzedawane w butelkach ( unit zawiera tekst  "bottle")
SELECT unit,productname
FROM Products
WHERE unit LIKE '%bottle%';
-- B. Pogrupuj według kategorii (CategoryID)  i policz ilość produktów w każdej kategorii. Do zapytania wybierz tylko produkty sprzedawane w butelkach.
SELECT CategoryID, COUNT(*)
FROM Products
WHERE unit LIKE '%bottle%'
GROUP BY CategoryID;
-- 6. Customers
-- A. Policz, ilu jest klientów w poszczególnych krajach. Dane posortuj malejąco według ilości klientów
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
ORDER BY COUNT(*) DESC;
-- B.  Policz, ilu jest klientów w poszczególnych krajach. Dane posortuj malejąco według ilości klientów, wyświetl tylko te kraje, w których jest co najmniej 10 klientów
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
HAVING count(*)>=10
ORDER BY COUNT(*) DESC;
-- 7. Products

-- A. Dla poszczególnych dostawców (SupplierID) oblicz maksymalną cenę.
SELECT SupplierID, MAX(price)
FROM Products
GROUP BY SupplierID;
-- B. Wyświetl supplierID, cenę oraz unit produktów sprzedawanych w paczkach (pole unit zawiera tekst 'pkg') 
SELECT SupplierID, price, unit 
FROM Products
WHERE unit LIKE '%pkg%';
-- C. Dla poszczególnych dostawców (SupplierID) oblicz maksymalną cenę, do zapytania wybierz tylko produkty sprzedawane w paczkach
SELECT supplierID, max(price)
FROM Products
WHERE unit LIKE '%pkg%'
group by supplierID;

-- D. Dla poszczególnych dostawców (SupplierID) oblicz maksymalną cenę, do zapytania wybierz tylko produkty sprzedawane w paczkach, ale wyświetl tylko te wiersze, w których maksymalna cena jest większa od 50
SELECT supplierID, max(price)
FROM Products
WHERE unit LIKE '%pkg%'
group by supplierID
HAVING MAX(price)>50;

-- 8. OrderDetails


-- A. Dla poszczególnych produktów (productID) podaj średnią, minimalną oraz maksymalną ilość sprzedawaną w ramach zamówienia (quantity)
SELECT productID, AVG(Quantity), MAX(Quantity), MIN(Quantity)
FROM Order_Details
GROUP BY ProductID; 
-- B. z powyższego zestawienia wybierz tylko te wiersze, w których ta średnia ilość jest mniejsza od 20
SELECT productID, AVG(Quantity), MAX(Quantity), MIN(Quantity)
FROM Order_Details
GROUP BY ProductID
HAVING AVG(quantity)<20;

-- 9. 
-- A.  jakiego kraju jest najwięcej klientów (jest tylko jeden taki kraj)
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
ORDER BY COUNT(*) DESC
LIMIT 1;
-- B. wymień trzy id kategorii z najdroższymi produktami (o największej średniej)