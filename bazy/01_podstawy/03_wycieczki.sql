-- 0. Wyświetl istniejące bazy danych, utwórz bazę Wycieczka
SHOW DATABASES;
CREATE DATABASE wycieczka_2;
USE wycieczka_2;
-- 1. W nowej bazie danych Wycieczki utwórz tabelę Przewodnicy o następujących polach


-- przewodnik - pole jednoznacznie identyfikuje wiersz, liczby powinny pojawiać się automatycznie 
-- Telefon domowy - w polu przechowywane są teksty o długości do 15 znaków
-- nazwisko - tekst o długości do 50 znaków, pole jest wymagane
-- imię - tekst o długości do 30 znaków
 CREATE TABLE przewodnicy (
    przewodnik int AUTO_INCREMENT PRIMARY KEY,
    telefon_domowy varchar(15),
    nazwisko varchar(50) NOT NULL,
    imie varchar(30)
 );


 

-- 2. Utwórz tabelę  Wycieczki o następujących polach:

-- kod wycieczki - teksty o długości 4 znaków, pole identyfikuje jednoznacznie daną wycieczkę
-- przewodnik - pole w którym wpisujemy numer przewodnika 
-- cena - podaj jako domyślną cenę 1000zł
-- data rozpoczęcia - pole przechowuje daty,
-- data zakończenia - pole przechowuje daty
-- przewodnik jest kluczem obcym odwołującym się do tabeli przewodnicy
CREATE TABLE wycieczki(
    kod_wycieczki char(4) PRIMARY KEY,
    przewodnik int NOT NULL,
    cena int DEFAULT 1000,
    data_rozpoczecia date,
    data_zakonczenia date,
    FOREIGN KEY(przewodnik) REFERENCES przewodnicy(przewodnik)

);
-- 3. Wyświetl istniejace tabele
SHOW TABLES; 
-- 4. Wyświetl opis obu tabel
DESC przewodnicy;
DESC wycieczki;
-- 5. Wpisz przykładowe dane (co najmniej dwie wycieczki i dwóch przewodników) - użyj różnych wersji instrukcji
INSERT INTO przewodnicy
(imie,nazwisko)
VALUES
('Igor','Kowalski'),
('Marek','Wieloryb');
INSERT INTO wycieczki
VALUES 
('2137', 1, 4200, '2024-09-21', '2024-09-23'),
('2115', 2, 4200, '2024-09-21', '2024-09-23');
-- 6. Wyświetl dane z obu tabel
SELECT*FROM przewodnicy;
SELECT*FROM wycieczki;
-- 7. Usuń po jednym wierszu z każdej z tabel (dobierz warunek)

 
 

 