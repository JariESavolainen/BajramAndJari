DROP TABLE  SFC_Number;
CREATE TABLE SFC_Number (
 SFCNr INTEGER PRIMARY KEY,
 first_name TEXT NOT NULL,
 last_name TEXT NOT NULL,
 email text NOT NULL UNIQUE,
 phone text NOT NULL UNIQUE
);

DROP TABLE PaikkaVaraus;
CREATE TABLE PaikkaVaraus (
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
 era_nr  integer not NULL,
 alkuPvm   INTEGER NOT NULL,
 loppuPvm   INTEGER NOT NULL,
 tyyppi	INTEGER NOT NULL --11119 talvi 22228 
);

--DROP TABLE KaasunOsto;
CREATE TABLE KaasunOsto(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
 pvm   INTEGER NOT NULL 
);

--DROP TABLE SahkonMaksu;
CREATE TABLE SahkonMaksu(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
alkuLukema integer,
loppuLukema integer,
 pvm   INTEGER NOT NULL 
);

DROP TABLE SaunaMaksu;
CREATE TABLE SaunaMaksu(
 id INTEGER PRIMARY KEY,
 SFCNr INT references SFC_Number(SFCNr),
 maksu float NOT NULL,
 pvm   INTEGER NOT NULL 
);

