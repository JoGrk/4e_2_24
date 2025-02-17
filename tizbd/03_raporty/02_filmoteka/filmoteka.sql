-- a) Zwrócenie tytułów filmów, dla których gatunek to SF,
SELECT tytul 
FROM Filmy
Where gatunek='SF';
-- b) Zwrócenie wszystkich tytułów filmów wraz z nazwiskami reżyserów,
SELECT tytul, imie, nazwisko
FROM filmy  
    JOIN rezyserzy on filmy.rezyserid=rezyserzy.idrezyser

-- c) Zwrócenie filmów, dla których ocena w recenzji jest równa 4, 
SELECT tytul, gatunek, tresc
FROM filmy
    JOIN Recenzje on filmy.Recenzjaid=Recenzje.idRecenzja
WHERE ocena=4;