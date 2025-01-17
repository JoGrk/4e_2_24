--  1.Sumę wartości wszystkich zamówień (suma pola wartosc z tabeli zamowienia)
SELECT SUM(wartosc)
FROM zamowienia; 
-- 2.  Średnią wartość wszystkich zamówień
SELECT AVG(wartosc)
FROM zamowienia;
-- 3. Ilość sprzedawców w bazie (tabela sprzedawcy)
SELECT COUNT(idsprzedawcy)
FROM sprzedawcy;

-- 4. Największą wartość zamówienia
SELECT MAX(wartosc)
FROM zamowienia;
-- GROUP BY 

-- 5.  tabela klienci; pogrupuj według miast i dla każdego miasta podaj najwyższą ocenę ( jaka jest najwyższa ocena w każdym z tych miast)
SELECT miasto,MAX(ocena)
FROM klienci
GROUP BY miasto;
-- 6. tabela zamówienia: pogrupuj według idsprzedawcy i dla każdego z nich podaj najwyższą wartość zamówienia
SELECT idsprzedawcy,MAX(wartosc)
FROM zamowienia
GROUP BY idsprzedawcy;
-- WHERE

-- 7. tabela zamowienia: pogrupuj według idsprzedawcy i dla każdego z nich podaj najwyższą wartość zamówienia, ale wybierz tylko daty zamówienia z lipca, sierpnia i września 2012 (..........WHERE date beteen '2012-07-01' AND .........)
SELECT idsprzedawcy,MAX(wartosc)
FROM zamowienia
WHERE data BETWEEN '2012-07-01' AND '2012-09-30'
GROUP BY idsprzedawcy;
-- HAVING

-- 8. tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, wyświetl tylko te dane, w których ta największa wartość jest większa od 2000 (......... HAVING max(wartosc) > 2000 ............)
SELECT idKlienta,MAX(wartosc)
FROM zamowienia
GROUP BY idKlienta
HAVING MAX(wartosc) > 2000;
-- 9.  tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, wyświetl tylko te dane, w których ta największa wartość jest z przedziału od 2000 do 6000
SELECT idKlienta,MAX(wartosc)
FROM zamowienia
GROUP BY idKlienta
HAVING MAX(wartosc) BETWEEN 2000 AND 6000;
-- WHERE i HAVING

-- 10. tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, ale do zamówienia wybierz tylko klientów o ID z zakresu od 3002 do 3007 (..... WHERE IDKlienta BETWEEN .... AND ....  ......... )
SELECT idKlienta,MAX(wartosc)
FROM zamowienia
WHERE idKlienta BETWEEN 3002 AND 3007 
GROUP BY idKlienta;


-- 11.  tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, do zamówienia wybierz tylko klientów o ID z zakresu od 3002 do 3007 (WHERE) , a następnie wyświetl tylko te wiersze, w których ta najwyższa wartość jest większa od 1000
SELECT idKlienta,MAX(wartosc)
FROM zamowienia
WHERE idKlienta BETWEEN 3002 AND 3007 
GROUP BY idKlienta
HAVING MAX(wartosc) > 1000;

-- 12. tabela zamowienia: pogrupuj według IDSprzedawcy, oblicz najwyższą wartość zmówienia, ale tylko dla sprzedawców o ID z zakresu od 5003 do 5008
SELECT idsprzedawcy,MAX(wartosc)
FROM zamowienia
WHERE idsprzedawcy BETWEEN 5003 AND 5008
GROUP BY idsprzedawcy;
-- 13. tabela zamówienia: oblicz ile było zamówień z datą '2012-08-17' (WHERE, bez group by)
SELECT COUNT(idzamowienia)
FROM zamowienia
WHERE data = '2012-08-17';


-- 14. tabela sprzedawcy: ilu jest sprzedawców, dla których podane jest miasto? (WHERE, not null, bez group by)

-- 15.tabela zamówienia: policz ile było zamówień dokonanych w poszczególnych dniach (pogrupuj według daty, policz idzamówienia)