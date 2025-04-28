-- 1. Wyświetl nazwy firm klientów  i daty zamówień
 SELECT OrderDate, CustomerName
 FROM orders
    JOIN customers ON orders.CustomerID = customers.CustomerID;

-- 2, Wyświetl dane spedytora z datą zamówienia
 SELECT shipperName,OrderDate
 FROM orders
    JOIN shippers ON orders.ShipperID = shippers.shipperID;
-- 3. Wyświetl nazwiska pracowników i daty zamówień
 SELECT lastname,OrderDate
 FROM orders
    JOIN employees on orders.employeeID = employees.employeeID;
-- 4. Wyświetl nazwy towarów, nazwy kategorii
 SELECT productName,CategoryName
 FROM products
    JOIN categories ON products.CategoryID = categories.CategoryID; 
-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
SELECT productName,CategoryName,OrderID
FROM products
    JOIN categories ON products.CategoryID = categories.CategoryID
    JOIN Order_Details ON products.ProductID = Order_Details.ProductID;
 
-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
 SELECT productName,CategoryName,OrderDate,CustomerID
FROM products
    JOIN categories ON products.CategoryID = categories.CategoryID
    JOIN Order_Details ON products.ProductID = Order_Details.ProductID
    JOIN orders ON Order_Details.OrderID = orders.OrderID;
-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
 SELECT productName,CategoryName,OrderDate, CustomerName
FROM products
    JOIN categories ON products.CategoryID = categories.CategoryID
    JOIN Order_Details ON products.ProductID = Order_Details.ProductID
    JOIN orders ON Order_Details.OrderID = orders.OrderID
    JOIN Customers ON orders.CustomerID = Customers.CustomerID;
-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)
 
-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów