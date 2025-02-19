-- baza danych katalog
-- 1. Utwórz nową bazę danych. 

-- Przeimportuj do niej dane z arkusza 

-- Obliczenia dla wszystkich rekordów
-- 2. Policz ile jest pozycji w katalogu.
SELECT count(*)
FROM katalog;
-- 3. Jaki jest średni rok wydania płyty.
SELECT AVG(rok)
FROM katalog;

-- 4. Z którego roku najwcześniej pochodzą płyty.
SELECT MIN(rok)
FROM katalog;
-- Obliczenia w grupach rekordów
-- 5. Zapisz kwerendę podającą ile jest płyt poszczególnych wykonawców.
SELECT zespol, count(*)
FROM katalog
GROUP BY zespol;
-- 6. Zapisz kwerendę podającą ile jest płyt z poszczególnych lat.
SELECT rok, count(*)
FROM katalog
GROUP BY rok;

-- 7. Zapisz kwerendę podającą dla poszczególnych wykonawców rok wydania pierwszej (najwcześniejszej płyty).
SELECT zespol, MIN(rok)
FROM katalog
GROUP BY zespol;

-- Określenie kryterium (najpierw obliczanie potem kryterium)

-- 8. Zapisz kwerendę podającą wykonawców (wraz z ilością płyt), którzy mają więcej niż 4 płyty, posortowanych malejąco według nazwy wykonawców
SELECT zespol, COUNT(*)
FROM katalog
GROUP BY zespol
HAVING COUNT(*)>4 
ORDER BY zespol DESC;

-- 9. Zapisz kwerendę podającą wykonawców, którzy swoje pierwsze płyty wydali w roku 1969 lub 1977.
SELECT zespol,MIN(rok)
FROM katalog
GROUP BY zespol
HAVING MIN(rok)= 1969 OR MIN(rok)=1977;  

-- Określenie kryterium (najpierw kryteria, potem obliczanie)

-- 10. Utwórz kwerendę podającą ile płyt poszczególni wykonawcy wydali w latach 70 –tych.
SELECT zespol, count(*)
FROM katalog
WHERE rok BETWEEN 1970 AND 1979
GROUP BY zespol;



-- 11. Utwórz kwerendę podającą ile kilku płytowych albumów wydali poszczególni wykonawcy (tytuły zawierające „Disc ” lub „disc ” lub „vol. „).
SELECT zespol, count(*)
FROM katalog
WHERE tytul LIKE '%Disc%' OR tytul LIKE '%vol.%'
GROUP BY zespol;
 
--  12. Trzy zespoły, które mają najwięcej wydanych płyt
SELECT zespol, count(*)
FROM katalog
GROUP BY zespol
ORDER BY COUNT(*) DESC
LIMIT 3;