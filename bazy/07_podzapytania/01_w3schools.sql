-- select
-- 1.  Wypisać nazwę wszystkich towarów, cenę i pole ze średnią cenę wszystkich towarów
SELECT round(AVG(Price),2)
FROM products;

SELECT 
    productname,
    round(Price,2) as price,
    (SELECT round(AVG(Price),2)
     FROM products) AS avg_price
FROM products;

-- 2 . Wypisać nazwę towaru, cenę i różnicę między jego ceną a średnią ceną wszystkich towarów
SELECT 
    productname,
    price,
    round( price - (SELECT AVG(Price)
     FROM products), 2) AS dif_price
FROM products;

-- 3. wypisze nazwę towaru, cenę oraz ile razy jego cena jest większa od najmniejszej ceny wszystkich towarów (stosunek ceny do ceny minimalnej)
SELECT 
    productname,
    price,
    round(price/(SELECT min(price )from products),2 ) as weight_price
FROM products;

    

-- where
-- 4.  wybieramy te zamówienia, w których łączna ilość zamówionych produktów jest mniejsza od średniej ilości zamawianych produktów

-- 5. zapytanie zwracające nazwę najtańszego towaru

-- 6. zapytanie zwracające nazwy i ceny wszystkich produktów z kategorii Seafood o cenach niższych niż średnia cena produktów

-- 7. wyświetl nazwę i cenę towarów, które zostały zamówione (kiedykolwiek) w ilości co najmniej 15 sztuk (Quantity )

-- 8. wyświetl nazwę i cenę towarów, które zawsze są zamawiane w ilości co najmniej 15 sztuk (Quantity ) (i były co najmniej raz zamówione)

-- 9. Wyświetl nazwiska i imiona klientów (Customer Name), którzy nie korzystali z firmy  Speedy Express

-- 10. Wszystkie informacje o klientach, mających tę samą wartość w polu CustomerName (może wpisanych przez pomyłkę?)

-- update

-- 11 Podnieś o 10% ceny produktów z kategorii  "Confections"

-- 12  Dla zamówień klientów z UK zmień spedytora na "United Package"

-- 13. Dodaj nowy produkt z kategorii Confections dostarczony przez Exotic Liquid 
-- -- 