use 4e_2_zadania;

-- Zapytanie 1: wybierające jedynie pola miesiac i rok z tabeli zadania dla zadania z datą 2020-07-01
SELECT miesiac,rok
FROM  zadania  
WHERE dataZadania = '2020-07-01';
-- ‒ Zapytanie 2: wybierające jedynie pola dataZadania i wpis z tabeli zadania dla zadań, których miesiąc to lipiec 
SELECT dataZadania, wpis
FROM zadania
WHERE miesiac = "lipiec";
-- ‒ Zapytanie 3: wybierające jedynie pole miesiąc i wyświetlające je bez powtórzeń, z tabeli zadania dla miesięcy zaczynających się na literę „l” (l jak lew, lizak)
SELECT DISTINCT miesiac
FROM zadania
WHERE miesiac LIKE 'l%';

-- ‒ Zapytanie 4:dodaje nowy wpis o tabeli zdania dla daty 2020-07-13, nowy wpis to „Wycieczka: jezioro”

INSERT INTO zadania(dataZadania, wpis, miesiac, rok)
VALUES ('2020-07-13','Wycieczka: jezioro', 'lipiec', '2020');