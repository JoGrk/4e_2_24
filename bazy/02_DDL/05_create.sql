-- Utwórz tabelę projekty z polami:
--  id_projektu, liczba, autonumerowanie, klucz podstawowy
--  nazwa_projektu tekst do 255 znaków, pole nie może być puste
-- start_projektu data
-- koniec_projektu data
-- koszt dokładne wartości liczbowe, do 500000, z dokładnością do dwóch miejsc po przecinku
-- utworzony stempel czasowy (data i czas), wartością domyślną jest current_timestamp

CREATE TABLE projekty(
    id_projektu int PRIMARY KEY AUTO_INCREMENT,
    nazwa_projektu varchar(255) not null, 
)



-- Utwórz tabelę etapy_projektu
-- id_etapu liczba z zakresu od 0 do 255
-- id_projektu liczba
-- opis_etapu tekst do 255 znaków, nie może być pusty
-- numer_etapu liczba z zakresu od 0 do 255
-- ukonczony wartość logiczna (prawda, fałsz)
-- klucz podstawowy na pola id_etapu i id_projektu
-- klucz obcy na polu id_projektu odwołujący się do tabeli projekty

-- ------------------------------------------------------------------------------------------------------------

-- utwórz tabelę autorzy
-- id_autora liczba, autonymerowanie, klucz podstawowy
-- nazwisko tekst do 255, nie puste
-- pozycja - typ wyliczeniowy, wartości beginer, silver, gold
-- wiek - liczba od 0 do 255
-- data_od data, domyślnie aktualna data


-- utwórz tabelę posty
-- id_postu liczba, autonumerowanie, klucz podstawowy 
-- tresc - duże ilości danych binarnych (tekst, zdjęcia)
-- kategoria - typ wyliczeniowy z wartościami : rozrywka, nauka, sport
-- utworzony - data i czas utworzenia, domyślne aktualna

-- utwórz tabelę autorzy_postow
-- pola id_postu,  
-- klucz podstawowy na polach id_postu i id_autora