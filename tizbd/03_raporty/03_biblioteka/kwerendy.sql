-- Zapytanie wybierające jedynie pola imie i nazwisko dla wszystkich rekordów w tabeli czytelnicy, posortowane rosnąco nazwiskami czytelników
SELECT imie, nazwisko
FROM czytelnicy
ORDER BY nazwisko;
-- wybierające jedynie pole tytul dla wszystkich utworów w tabeli książki, należącej do kategorii dramat
SELECT tytul 
FROM ksiazki
    JOIN Kategorie ON ksiazki.id_kategoria=kategorie.id
WHERE nazwa='dramat';
-- wybierające jedynie pole tytul wszystkich utworów w tabeli ksiązki, wypożyczonych przez czytelnika o identyfikatorze 2. W zapytaniu należy posłużyć się relacją
SELECT tytul
FROM ksiazki
    JOIN wypozyczenia ON ksiazki.id=wypozyczenia.id_ksiazka
WHERE id_czytelnik=3; 
-- wybierające jedynie pola imie i  nazwisko dla wszystkich rekordów w tabeli autorzy oraz obliczające liczbę tytułów danego autora znajdujących się w bazie biblioteka. Nazwa kolumny (alias) dla zliczania tytułów: ile_tytulow
SELECT imie, nazwisko, COUNT(*) AS ile_tytulow
FROM autorzy
    JOIN ksiazki ON autorzy.id=ksiazki.id_autor
GROUP BY id_autor;