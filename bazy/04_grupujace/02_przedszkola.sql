-- 4. Wyświetl łączną liczbę miejsc we wszystkich przedszkolach
SELECT SUM(liczba_miejsc)
FROM przedszkola


-- 5. Jaka jest średnia liczba miejsc we wszystkich przedszkolach? Zmień nazwę kolumny na srednia_liczba_miejsc
SELECT AVG(liczba_miejsc) as srednia_liczba_miejsc
FROM przedszkola;


 
-- 6. Jaka jest maksymalna i minimalna liczba miejsc w przedszkolach? Zmień nazwę kolumn na najmniejsza_liczba i najwieksza_liczba
SELECT MAX(liczba_miejsc) as najwieksza_liczba,
MIN(liczba_miejsc) as najmniejsza_liczba
FROM przedszkola;

 
-- 7. Pogrupuj przedszkola według ilości miejsc, policz ile przedszkoli ma poszczególną liczbę miejsc. 
SELECT liczba_miejsc, COUNT(*)
FROM przedszkola
GROUP BY liczba_miejsc; 
 
-- 8. Zmodyfikuj powyższe zapytanie tak, aby były wyświetlone tylko te wiersze, w których liczba takich przedszkoli jest większa od dwóch.
SELECT liczba_miejsc, COUNT(*)
FROM przedszkola
GROUP BY liczba_miejsc
HAVING COUNT(*) >2;

 
-- 9.Jaka łączna liczba dzieci stara się o przyjęcie do przedszkoli?
SELECT COUNT(*)
FROM dzieci;
 
-- 10. Ile dzieci stara się do poszczególnych przedszkoli? (wyświetl Id_przedszkola oraz liczbę dzieci starających się o przyjęcie do tego przedszkola)
SELECT Id_przedszkola, COUNT(*)
FROM dzieci
GROUP BY Id_przedszkola;
 
-- 11. Zmodyfikuj powyższe zapytanie tak, aby wyświetlane były tylko te wiersze, w których liczba starających się dzieci jest większa od 30
SELECT Id_przedszkola, COUNT(*)
FROM dzieci
GROUP BY Id_przedszkola
HAVING COUNT(*) >30;
 
-- 12. Pogrupuj dane według wieku dzieci i wyświetl ile jest dzieci w poszczególnym wieku starających się o przyjęcie do przedszkola (wyświetl wiek dzieci oraz liczbę dzieci)

 
-- 13. Zmodyfikuj powyższe zapytanie tak, aby wyświetliło tylko dane dotyczące chłopców.

 
-- 14. Jaki jest średni wiek chłopców, a jaki średni wiek dziewczynek? (w jednym zapytaniu)

 
-- 15. Ile małych dzieci stara się do poszczególnych przedszkoli (do zapytania wybierz tylko trzylatków i czterolatków)