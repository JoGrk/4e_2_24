-- Przygotuj tabelę starocie:
CREATE TABLE `starocie` (
  `kolor` varchar(20) default NULL,
  `rok` varchar(4) default NULL,
  `marka` varchar(20) default NULL,
  `mo` varchar(20) default NULL,
  `koszt` float(10,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES ('srebrny','1998','Porsche','Boxter','17992.539');
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES (NULL,'2000','Jaguar','XJ','15995.000');
INSERT INTO `starocie` (`kolor`,`rok`,`marka`,`mo`,`koszt`) VALUES ('czerwony','2002','Cadillac','Escalade','40215.898');
 
-- Zmodyfikuj tabelę:
-- 1. zmień nazwę tabeli starocie  na samochody
 ALTER TABLE starocie
 RENAME TO samochody;
-- 2. dodaj kolumnę id_samochodu : całkowity, nie pusty, autoinkrementacja, na początku tabeli, klucz podstawowy
ALTER TABLE samochody
ADD id_samochodu INT NOT NULL auto_increment primary key
first;
-- 3. Jako drugą dodaj kolumnę numer - tekst do 16 znaków
 ALTER TABLE samochody
 ADD numer varchar(16)
 AFTER id_samochodu;
-- 4. zmień nazwę pola mo na model (typ bez zmian)
 ALTER TABLE samochody
 CHANGE mo model varchar(20);
-- 5. Zmodyfikuj (modify) tabelę tak, aby kolumna kolor znalazła się za kolumną model, a kolumna rok miała typ daty i znalazła się na pierwszym miejscu w tabeli (modify też może wymagać podania typu modyfikowanego pola)
ALTER TABLE samochody
MODIFY kolor varchar(20) AFTER model,
MODIFY rok date FIRST;
 
-- 6. Zmień nazwę kolumny koszt na cena, precyzja 7 znaków, dwa miejsca po przecinku
 ALTER TABLE samochody
 CHANGE KOSZT CENA DEC(7,2);
-- 7. usuń kolumnę rok
ALTER TABLE samochody
DROP COLUMN rok;