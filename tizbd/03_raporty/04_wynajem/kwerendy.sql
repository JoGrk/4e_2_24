-- Zapytanie 1: wybierające wszystkie wiersze z tabeli pokoje
SELECT *
FROM pokoje;

-- Zapytanie 2: wybierające z tabeli rezerwacje jedynie id pokoju, nazwę oraz sezon dla rezerwacji o liczbie dni przekraczającej tydzień
SELECT  id_pok, nazwa, sezon
FROM pokoje
    JOIN rezerwacje ON pokoje.id=rezerwacje.id_pok
WHERE liczba_dn > 7; 

-- Zapytanie 3: liczące sumę dni rezerwacji dla różnych sezonów. Alias dla pola z sumą dnia to razem_rezerwacji
SELECT SUM(liczba_dn) AS razem_rezerwacji, sezon
FROM rezerwacje
GROUP BY sezon;

