-- 1. Wyświetl nazwisko i imię oraz adres osób które:
-- A.płacą mniej niż 50;
SELECT imie,nazwisko,adres,oplaty
From osoba
    JOIN dom ON osoba.nrtel = dom.nrtel 
WHERE oplaty <50;
-- B. mieszkają w miejscowości o numerze 1, 2, 3;
SELECT imie,nazwisko,adres
From osoba
    JOIN dom ON osoba.nrtel = dom.nrtel 
WHERE nrmiejscow IN (1,2,3);
-- C. są głównymi abonentami;
SELECT imie,nazwisko,adres
From osoba
    JOIN dom ON osoba.nrtel = dom.nrtel 
WHERE CZY_GLOWNY = 'prawda'; 
-- 2. Wyświetl nazwisko, imię i zawód osób, które:
-- A. płacą za telefon między 40 a 80;
SELECT imie,nazwisko,zawod
FROM praca 
    JOIN osoba ON praca.symbzatr = osoba.symbzatr
        JOIN dom ON dom.nrtel = osoba.nrtel
WHERE oplaty BETWEEN 40 and 80;
-- B. mieszkają w miejscowości, której nazwa zaczyna się na ' P' lub na 'K';
SELECT imie,nazwisko,zawod
FROM praca 
    JOIN osoba ON praca.symbzatr = osoba.symbzatr
        JOIN dom ON dom.nrtel = osoba.nrtel
            JOIN miejscow ON dom.nrmiejscow=miejscow.nrmiejscow
WHERE nazwa LIKE 'P%' or nazwa LIKE 'K%';
-- C. w numerze telefonu występuje cyfra 3 na trzecim miejscu;
SELECT imie,nazwisko,zawod
FROM praca
    JOIN osoba ON praca.symbzatr = osoba.symbzatr
WHERE nrtel LIKE '__3%';
-- 3. Wyświetl nr telefonu, nazwisko, miejscowość adres i zawód osoby, która:
-- A. pracują w miejscu, gdzie w polu NAZWA znajduje się litera 'u';
-- B. mieszka w miejscowości, w której serwis prowadzi firma, której nazwa kończy się na 'A' (lub 'a') i w polu ADRES ma literę 'o';
-- C. pole SYMBZATR kończy się dużą lub małą literą 'm' lub 'k' ;