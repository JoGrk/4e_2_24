-- 1. Utwórz tabelę vehicles : pole vehicledId całkowite, klucz podstawowy, make tekst do 100 znaków, wszystkie pola wymagane (bez null)
CREATE TABLE vehicles(
    vehicleId int primary key,
    year int,
    make varchar(100) 
);

-- 2. Dodaj do tabeli pole model (tekst do 100 znaków, pole wymagane
ALTER TABLE vehicles
ADD model varchar(100) NOT NULL;


-- 3. Jednym zapytaniem dodaj pole color i note
ALTER TABLE vehicles
ADD color varchar(50),
ADD note varchar(255);

-- 4. Kolumna note powinna mieć tylko do 100 znaków Zmień to.
ALTER TABLE vehicles 
MODIFY note varchar(100);

-- 5. Jednym zapytaniem zmień typ pola year i color (pole color ma zmienioną pozycję w tabeli)
ALTER TABLE vehicles
MODIFY year smallint,
MODIFY color varchar(20) AFTER make; 

-- 6. Zmień nazwę pola note na vehicleCondition
ALTER TABLE vehicles
CHANGE note vehicleCondition varchar(100);


-- 7. Usuń kolumnę vehicleCondition
ALTER TABLE vehicles
DROP COLUMN vehicleCondition;

-- 8. Ustaw wartość domyślną dla pola year na 2023
ALTER TABLE vehicles
ALTER year SET DEFAULT (2023);

-- 9. Zmień nazwę tabeli vehicles na cars
ALTER TABLE vehicles
RENAME TO cars;