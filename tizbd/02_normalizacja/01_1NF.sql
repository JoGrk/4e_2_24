-- 1. Utwórz bazę firma
 use 4e_2;
-- 2. Utwórz tabelę Pracownicy
-- idPracownika int autoinkrementacja
-- imię nazwisko
-- język
-- adres

CREATE TABLE Pracownicy(
    idPracownika int PRIMARY KEY AUTO_INCREMENT,
    imie_nazwisko varchar(255),
    jezyk varchar(255),
    adres varchar(255)
);



-- 3. wpisz dane:
INSERT INTO Pracownicy
(imie_nazwisko, jezyk, adres)
VALUES
('Jan Kowalski', 'PHP', 'os. Wl. Lokietka 3/4 Naklo nad Notecia'),
 ('Antoni Malinowski', 'HTML, CSS, PHP', 'Chrzastowo 1'),
 ('Jan Malinowski','Java,  HTML',  'ul. Ogrodowa 2, Nowa Wies Wielka'),
('Andrzej Ziemianski', 'JavaScript, CSS, HTML',  'ul. Sowia 5, Nowa Wies');
-- 4. Wykonaj zapytania

-- A. Wypisz pracowników, którzy znają język PHP

SELECT*
FROM Pracownicy
WHERE jezyk LIKE '%php%';

-- B. Wypisz pracowników, którzy znają język Java
SELECT*
FROM Pracownicy
WHERE jezyk LIKE '%Java%';
-- C. Wypisz pracowników mieszkających w Nakle nad Notecią
SELECT*
FROM Pracownicy
WHERE adres LIKE '%Naklo nad Notecia';
-- D. Wypisz pracowników mieszkających w Nowej Wsi
-- E. Wypisz wszystkie nazwy miejscowości pracowników
-- C. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)
    SELECT*
    FROM Pracownicy
    WHERE jezyk LIKE '%Java%' and jezyk not like '%JavaScript%';
-- 5. Jeśli masz problemy z wykonaniem zapytań, popraw strukturę tabeli i wpisz na nowo dane - tak, aby tych problemów już nie mieć