-- 1. napisz zapytanie, które wyświetli nazwę i  cenę produktów
 SELECT nazwa, cena
 FROM Produkty; 
 
-- 2. wyświetl nazwy i ceny produktów, posortowane malejąco według ceny;
 SELECT nazwa, cena
 FROM Produkty
 ORDER BY cena desc;
-- 3. wyświetl nazwy i ceny produktów, posortowane malejąco według ceny, ale tylko te produkty, których cena jest mniejsza od 5
 SELECT nazwa, cena
 FROM Produkty
 WHERE cena < 5
 ORDER BY cena desc;
-- 4. dodatkowo interesują nas tylko produkty na literę B
SELECT nazwa, cena
 FROM Produkty
 WHERE cena < 5 AND nazwa LIKE 'B%'
 ORDER BY cena desc;
-- 5.jak wyżej, ale oprócz produktów na B zainteresowani jesteśmy produktami na literę S
 SELECT nazwa, cena
 FROM Produkty
 WHERE cena < 5 AND( nazwa LIKE 'B%' OR nazwa LIKE 'S%')
 ORDER BY cena desc;
-- 6. interesują nas produkty o cenie pomiędzy 5 a 10 złotych
 SELECT nazwa, cena
 FROM Produkty
 WHERE cena BETWEEN 5 AND 10
 ORDER BY cena desc;
-- 7. chcemy wypisać nazwy i ceny produktów, które są bułeczkami, sokami, chipsy (nazwa:  chleb, sok, chipsy)
SELECT nazwa, cena
 FROM Produkty
 WHERE nazwa in ('chleb','sok','chipsy');