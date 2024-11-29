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
-- tylko ZAMÓWIONE towary, których waga =1;

-- nazwy towarów, których RODZAJ = NA i GD (również małymi literami);

-- wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;

-- Wyprodukowane w 1997 roku;

-- (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;

-- jw. wyświetl tylko NAZWĘ, RODZAJ I CENĘ;

-- rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;

-- jw. - wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;

-- jw. posortowane malejąco wg NAZWY ; 

-- różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)