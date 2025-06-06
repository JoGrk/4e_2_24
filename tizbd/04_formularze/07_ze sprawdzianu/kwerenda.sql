--  Nowy produkt. Formularz:
-- Lista rozwijana z nazwą dostawcy (jako value id dostawcy)
-- pole tekstowe do wpisania nazwy towaru
-- suwak (range) do ustawienia ceny dla wartości od 0 do 200.
-- Przycisk
SELECT SupplierName, SupplierID
FROM Suppliers;

-- Po wybraniu dostawcy, wstawieniu nazwy produktu, wybraniu ceny zostaje dodany do bazy nowy produkt
INSERT INTO Products
(SupplierID, ProductName, price)
values
(1,'guma',3);
-- Grupa opcji: minimalna, średnia, maksymalna. Po wybraniu Raport wyświetlający średnie , minimalne lub maksymalne ceny produktów dostarczanych przez poszczególnych dostawców w formie tabeli (nazwa dostawcy, minimalna, średnia lub maksymalna cena)
SELECT SupplierName, FORMAT( MIN(price),2,'pl_PL') as price 
FROM Products
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
GROUP BY products.SupplierID;

SELECT SupplierName, FORMAT( AVG(price),2,'pl_PL') as price 
FROM Products
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
GROUP BY products.SupplierID;

SELECT SupplierName, FORMAT( MAX(price),2,'pl_PL') as price 
FROM Products
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
GROUP BY products.SupplierID;

-- 3. Modyfikacja ceny produktów. Formularz:

-- lista rozwijana wyświetlająca nazwy produktów (jako value id produktu)
-- pole typu range do wpisania nowej ceny. Zakres danych od 5 do 300. 
-- przycisk

-- po wybraniu produktu, ustawieniu ceny i kliknięciu na przycisk zostaje ustawiona cena wybranego produktu na wartość wybraną w polu range

SELECT productname, productid
from products;

UPDATE products
SET price=100
WHERE productid=1;