mysql -u root
-- 1. Utwórz bazę danych Studenci i przejdź do niej.
 CREATE DATABASE studenci2;
 USE studenci2; 
 
-- 2. Utwórz tabelę studenci. Tabela powinna zawierać następujące kolumny:
-- id_studenta - identyfikator studenta , 4 znaki, stała szerokość, klucz główny,
-- nazwisko - nazwisko studenta, 25 znaków, wartość wymagana (NOT NULL),
-- imie - imię studenta, 25 znaków,
 CREATE TABLE studenci(
    id_studenta char(4) PRIMARY KEY,
    nazwisko varchar(25) NOT NULL,
    imie varchar(25)
 );
-- 3. Utwórz tabelę oceny. Tabela powinna zawierać następujące kolumny:
-- id_studenta - identyfikator studenta, który otrzymał ocenę, 4 znaki,
-- nazwa przedmiotu - 25 znaków,
-- ocena - liczba, domyślnie 3
-- dzien - data wystawienia oceny,
-- identyfikator studenta i nazwa przedmiotu tworzą klucz główny tabeli.
 
CREATE TABLE oceny(
    id_studenta char(4),
    nazwa_przedmiotu varchar(25),
    ocena int DEFAULT 3,
    dzien date ,
    PRIMARY KEY(id_studenta,nazwa_przedmiotu)
);

-- 4. Wyświetl opisy (desc) obu tabel
DESC studenci;
DESC oceny;
 
-- 5. Wstaw dane dwóch studentów i trzy oceny
INSERT INTO studenci
(id_studenta,nazwisko,imie)
VALUES
('2137','Kowalski','Jan'),
('2155','Chmura','Tomasz');
 
 INSERT INTO oceny
 (id_studenta,nazwa_przedmiotu,ocena,dzien)
 VALUES
 ('2137','matma',1,'2024-09-13'),
 ('2137','polski',1,'2024-09-13'),
 ('2155','wf',6,'2024-09-13');


 
 