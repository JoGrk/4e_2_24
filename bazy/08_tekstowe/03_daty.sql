-- NOW()

-- 1. wyświetl aktualną datę i czas. 
select now();
-- DATE(), TIME() - tylko  data lub tylko czas ze typu datetime
select date(now()), time(now());

-- 2. Wyświetl w jednej kolumnie aktualną datę, w drugiej aktualny czas (wykorzystaj funkcję now)

-- CURDATE()

-- 3. Wyświetl bieżącą datę systemową
select CURDATE();
-- DATE_FORMAT(data, tekst_formatujący) %m  %d  %Y

-- 4. Wyświetl aktualną datę w formacie amerykańskim (miesiąc/dzień/rok)
SELECT DATE_FORMAT(current_date, "%m/%d/%Y");
SELECT CURRENT_date;

-- DATEDIFF(data1, data2) - różnica w dniach między datami

-- 5. Ile dni pozostało do końca roku szkolnego
SELECT DATEDIFF('2025-06-27', current_date);
-- DATE_ADD(data, INTERVAL n przedział_czasu) przedział_czasu to DAY, WEEK, MONTH, YEAR, n - ilość 

-- 6. Wyświetl dowolną datę, oraz datę dzień później, tydzień, miesiąc i rok
SELECT current_date, 
    DATE_ADD(current_date,INTERVAL 1 DAY),
    DATE_ADD(current_date,INTERVAL 1 week),
    DATE_ADD(current_date,INTERVAL 1 month),
    DATE_ADD(current_date,INTERVAL 1 year);


-- DATE_SUB(data, INTERVAL n przedział_czasu) przedział_czasu to DAY, WEEK, MONTH, YEAR, n - ilość 

-- 7. Wyświetl dowolną datę, oraz datę dzień wcześniej, tydzień, miesiąc i rok
SELECT current_date, 
    DATE_SUB(current_date,INTERVAL 1 DAY) AS day,
    DATE_SUB(current_date,INTERVAL 1 week) AS week,
    DATE_SUB(current_date,INTERVAL 1 month) AS month,
    DATE_SUB(current_date,INTERVAL 1 year) AS year;


-- DAY(data) MONTH(data) QUARTER(data) YEAR(data) - wyciągają z daty dzień, miesiąc, kwartał i rok

-- 8. wyciągnij z dowolnej daty dzień, miesiac, kwartał, rok
SELECT DAY(current_date), MONTH(current_date), QUARTER(current_date), YEAR(current_date);



-- WEEKDAY(data) wyświetla numer dnia tygodnia

-- 9. wyświetl numer aktualnego dnia tygodnia, czy tydzień zaczyna się od poniedziałku czy niedzieli?
select WEEKDAY(current_date)

select weekday(DATE_ADD(current_date, interval 1 day));