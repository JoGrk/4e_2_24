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