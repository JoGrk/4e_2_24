-- Towary, których WAGA >150 kg;
SELECT *
FROM towar
WHERE waga > 150;
-- całkowita wartość pola CENA jest trzycyfrowa;
SELECT *
FROM towar 
WHERE cena BETWEEN 100 AND 999;  
-- 23% podatek od jednej sztuki wynosi więcej niż 750 zł;
SELECT*
FROM Towar
WHERE cena*0.23 < 750;
-- ILOSC < 5 i dodatkowo  CENA < 10 zł lub CENA >10000 zł;
SELECT*
FROM Towar
WHERE ILOSC < 5 AND (cena < 10 OR cena > 1000);
-- cena 1 kg (CENA / WAGA) jest mniejsza od 10 zł i równocześnie większa od 5 zł;
SELECT*
FROM towar
WHERE cena/waga < 10 AND cena/waga > 5;
-- całkowita masa (ILOSC * WAGA) jest większa od ceny, a mniejsza od potrójnej ceny;
SELECT*
FROM towar
WHERE ILOSC*WAGA > cena AND ILOSC*WAGA < 3*cena;
-- 7. tylko ZAMÓWIONE towary, których waga =1;
SELECT *
FROM towar 
WHERE zamow = 'PRAWDA' AND waga = 1;
-- 8. nazwy towarów, których RODZAJ = NA i GD (również małymi literami);
SELECT nazwa,rodzaj
FROM towar
WHERE Rodzaj IN ('NA','GD');

-- 9. wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;
SELECT nazwa
FROM towar
WHERE nazwa NOT LIKE '%a%';
-- 10.Wyprodukowane w 1997 roku;
SELECT nazwa
FROM towar
WHERE DATA_PROD LIKE '1997-%';
-- 11. (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;
SELECT nazwa
FROM towar
WHERE DATA_PROD BETWEEN '1995-01-01' AND '1998-12-31'
    AND cena BETWEEN 10 AND 99 
        AND waga <0.5;
-- 12. jak wyżej + wyświetl tylko NAZWĘ, RODZAJ I CENĘ;
SELECT nazwa
FROM towar 
WHERE 
-- 13. rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;

-- 14. jak wyżej + - wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;

-- 15. jak wyżej + posortowane malejąco wg NAZWY ; 

-- 16 różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)