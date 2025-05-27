-- Raport wyświetla dane dotyczące produktów (nazwa produktu, nazwa dostawcy, cena) w formie tabeli.

SELECT ProductName, Price
FROM products
    INNER JOIN suppliers ON products.SupplierID=suppliers.SupplierID;


SELECT ProductID,ProductName
FROM products;

UPDATE products
SET price = price + price * 0.1
WHERE ProductID = 1;
