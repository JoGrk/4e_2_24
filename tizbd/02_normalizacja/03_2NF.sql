-- 1. Utwórz bazę firma
 use 4e_2;
-- 2. Utwórz tabelę Pracownicy
-- idPracownika int autoinkrementacja
-- imię nazwisko
-- język
-- adres

CREATE TABLE Pracownicy3(
    idPracownika int,
    nazwisko varchar(255),
    imie varchar(255),
    ulica varchar(255),
    numer_domu varchar(255),
    miejscowosc varchar(255)
);
CREATE TABLE Jezyki(
    idPracownika int,
    jezyk varchar(255)
);
ALTER TABLE Pracownicy3
ADD PRIMARY KEY(idPracownika);

ALTER TABLE Jezyki
ADD PRIMARY KEY(idPracownika,Jezyk);

-- 3. wpisz dane:
INSERT INTO Pracownicy3
(idPracownika, imie, nazwisko, ulica, numer_domu, miejscowosc)
VALUES
(1, 'Jan', 'Kowalski', 'os. Wl. Lokietka', '3/4', 'Naklo nad Notecia'),
 (2, 'Antoni', 'Malinowski','','1', 'Chrzastowo'),
 (3, 'Jan', 'Malinowski', 'ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
(4, 'Andrzej', 'Ziemianski',  'ul. Sowia', '5', 'Nowa Wies');

INSERT INTO Jezyki
(idPracownika,jezyk)
VALUES
(1,'PHP'),
 (2,'HTML'),
 (2,'CSS'),
 (2,'PHP'),
 (3,'Java'),
 (3,'HTML'),
(4,'JavaScript'),
(4,'CSS'),
(4,'HTML');
-- 4. Wykonaj zapytania

-- A. Wypisz pracowników, którzy znają język PHP
SELECT imie , nazwisko
FROM Pracownicy3,Jezyki
WHERE jezyk=PHP
-- B. Wypisz pracowników, którzy znają język Java

-- C. Wypisz pracowników mieszkających w Nowej Wsi

-- D. Wypisz wszystkie nazwy miejscowości pracowników

-- E. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)

-- F. Jan Malinowski nauczył się C#

-- G. Jan Kowalski jednak nie umie PHP
