-- 4e_2_sprzezenia1
-- 3. Które osoby figurujące w bazie jako czytelnicy, nie wypożyczyły ani razu choćby jednej książki? (tabele: Czytelnik, Wypożyczenia, pola w kwerendzie: Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypozyczenia)

 SELECT Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypozyczenia
 FROM Czytelnik
    LEFT JOIN wypozyczenia ON czytelnik.ID=wypozyczenia.Czytelnik_ID
WHERE Data_wypozyczenia IS NULL;


-- 4. Kto nie ma kota? (Tabele: Ludzie, Koty, pola w kwerendzie: Imie, Nazwisko, Imie_kota, Rasa)
SELECT nazwisko,Imie_kota,Rasa
FROM Koty
   RIGHT JOIN Ludzie ON koty.ID_wlasciciela=Ludzie.ID
WHERE Imie_kota IS NULL;
   

-- 5.Jak ma na imię kot bez właściciela?   (Tabele: Ludzie, Koty, pola w kwerendzie: Imie_kota oraz nie wyświetlane pole Nazwisko - tylko dla kryterium) 
select Imie_kota, nazwisko
from Koty
   LEFT join ludzie on koty.id_wlasciciela=ludzie.id
where nazwisko is null;


-- 6. Wyświetl informacje o uczniach, którzy nie mają ocen  (tabele: Uczniowie, Oceny, pola w kwerendzie: imie, nazwisko, ocena, data)
SELECT imie, nazwisko, ocena, data
FROM Uczniowie LEFT JOIN Oceny on Uczniowie.IDucznia = Oceny.IDucznia
WHERE Ocena is null;
-- 7. Wyświetl informacje o przedmiotach, z których nie wystawiono żadnych ocen (tabele: Oceny, Przedmioty, pola w kwerendzie: Nazwa_przedmiotu, Nazwisko_nauczyciela, Data)
SELECT Nazwa_przedmiotu,Nazwisko_nauczyciela,data
FROM Przedmioty
   
----------------------------------------
-- 4e_2_sprzezenia2
--  sprzężenia 2

--  8. Właściciel wypożyczalni filmów (online) potrzebuje raportu o ich popularności (ile razy dany film został wypożyczony). Niestety przygotowane zestawienie nie uwzględniało filmów nigdy nie wypożyczonych. Napraw to. Przygotuj kwerendę wyświetlającą tytuły filmów nigdy nie wypożyczonych (tabele: Filmy, Wypożyczenia; pola w kwerendzie: Tytul, Gatunek, Data_wyp)

 

-- 9. Poprawiasz bazę danych pewnej przychodni. Twoim zadaniem jest wymusić więzy integralności między tabelami Pacjenci i Wizyty.

 

-- A. Odszukaj wiersze, które naruszają więzy integralności (tzn.w tabeli Wizyty występuje ID_pacjenta, którego nie ma w tabeli Pacjenci)
-- B. Być może w bazie brakuje pacjenta pacjenta Antoniego Mizerskiego (ubezpieczony), którego ktoś omyłkowo usunął z tabeli Pacjenci. Niestety nikt nie pamięta jaki miał identyfikator. Jeśli go odszukasz (przygotuj kwerendę), to dopisz Antoniego do tabeli Pacjenci.
 