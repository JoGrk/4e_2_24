-- 1. Utwórz bazę firma
 use 4e_2;
-- 2. Utwórz tabelę Pracownicy
-- idPracownika int autoinkrementacja
-- imię nazwisko
-- język
-- adres

CREATE TABLE Pracownicy2(
    idPracownika int,
    nazwisko varchar(255),
    imie varchar(255),
    jezyk varchar(255),
    ulica varchar(255),
    numer_domu varchar(255),
    miejscowosc varchar(255)
);



-- 3. wpisz dane:
INSERT INTO Pracownicy2
(idPraocwnika,imie, nazwisko, jezyk, ulica, numer_domu, miejscowosc)
VALUES
(1, 'Jan', 'Kowalski', 'PHP', 'os. Wl. Lokietka', '3/4', 'Naklo nad Notecia'),
 (2, 'Antoni', 'Malinowski', 'HTML','','1', 'Chrzastowo'),
 (2, 'Antoni', 'Malinowski', 'CSS','','1', 'Chrzastowo'),
 (2, 'Antoni', 'Malinowski', 'PHP','','1', 'Chrzastowo'),
 (3, 'Jan', 'Malinowski','Java', 'ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
 (3, 'Jan', 'Malinowski', 'HTML',  'ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
(4, 'Andrzej', 'Ziemianski', 'JavaScript',  'ul. Sowia', '5', 'Nowa Wies'),
(4, 'Andrzej', 'Ziemianski',  'CSS', 'ul. Sowia', '5', 'Nowa Wies'),
(4, 'Andrzej', 'Ziemianski',  'HTML', 'ul. Sowia', '5', 'Nowa Wies');

-- 4. Wykonaj zapytania

-- A. Wypisz pracowników, którzy znają język PHP

-- B. Wypisz pracowników, którzy znają język Java

-- C. Wypisz pracowników mieszkających w Nowej Wsi

-- D. Wypisz wszystkie nazwy miejscowości pracowników

-- E. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)

-- F. Jan Malinowski nauczył się C#

-- G. Jan Kowalski jednak nie umie PHP
