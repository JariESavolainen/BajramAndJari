DROP TABLE  Customer;
CREATE TABLE Customer(
 SFCNr INTEGER PRIMARY KEY,-- 500000 ja yli virtuaalisilta 
 rekNr text,--oletus AKU-303
 first_name TEXT NOT NULL, --oletus Oskari
 last_name TEXT NOT NULL, --Olematon
 email text NOT NULL,-- tama on myos kayttajatunnus
 phone text NOT NULL,
 streetAddress test,
 postNr text,
 city text,
 state text,	
 identified bool, -- tunnistettuHenkilloisyys
 balance real,--rahatilanne +maksettu -velkaa
 password text
);

--DROP TABLE  logininfo;
--CREATE TABLE logininfo(
--user
--)





DROP TABLE Reservation;
CREATE TABLE Reservation(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,--
 era_nr  integer not NULL,
 alkuPvm   INTEGER NOT NULL,
 loppuPvm   INTEGER NOT NULL,
 tyyppi	INTEGER NOT NULL --varauksen tyyppi on viitenumero laskussa 11119 talvi 22228 
);

DROP TABLE GasPurhase;
CREATE TABLE GasPurhase(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
 pvm   INTEGER NOT NULL 
);

DROP TABLE ElectricityPayment;
CREATE TABLE ElectricityPayment(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
 alkuLukema integer,
 loppuLukema integer,
 pvm   INTEGER NOT NULL 
);

DROP TABLE SaunaPayment;
CREATE TABLE SaunaPayment(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
 pvm   INTEGER NOT NULL 
);
