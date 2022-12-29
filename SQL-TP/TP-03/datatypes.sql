
DROP TABLE IF EXISTS StringTable;
CREATE TABLE StringTable(
    ch      CHAR(1),       -- 1, 255
    b       BINARY(1),     -- 1, 255
    vch     VARCHAR(3000), -- 1, 65535
    Vb      VARBINARY(3000)-- 1, 65535
);

INSERT INTO StringTable VALUES("A","A","ABC","ABC");
SELECT ORD(ch) FROM StringTable;
SELECT * FROM StringTable;



DROP TABLE IF EXISTS BlobTable;
CREATE TABLE BlobTable(
    ch      TINYBLOB,       -- 1, 255
    b       BLOB(1),        -- 1, 65535 bytes of data
    vch     MEDIUMBLOB,     -- 1, 16777215 bytes of data
    Vb      LONGBLOB        -- 1, 4294967295
);




DROP TABLE IF EXISTS TextTable;
CREATE TABLE TextTable(
    ch      TINYTEXT,       -- 1, 255
    b       TEXT(1),        -- 1, 65535 bytes of data
    vch     MEDIUMTEXT,     -- 1, 16777215 bytes of data
    Vb      LONGTEXT        -- 1, 4294967295
);



-- THIS IS A BAD PRACTICE - WORST CASE
DROP TABLE IF EXISTS Cloths;
CREATE TABLE Cloths(
    ID INTEGER PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
    type            ENUM("SHAKET","SHOMIZ","COAT"),
    color           ENUM("RED","GREEN","BLUE","YELLOW","HOTPINK"),
    size            SET("FREESIZE","S","M","L","XL","XXL"),
    gender          ENUM("F","M","NB"),                     -- OK
    total           INTEGER       
    -- marital_status  ENUM("Married","Divorced","Single")  -- OK
);
-- THIS IS A BAD PRACTICE - WORST CASE
INSERT INTO Cloths VALUES(NULL,"SHOMIZ","GREEN",    "FREESIZE", "F",10);
INSERT INTO Cloths VALUES(NULL,"SHOMIZ","RED",      "M,L,XL",   "F",25);
INSERT INTO Cloths VALUES(NULL,"SHOMIZ","YELLOW",   "XL",       "F",30);
INSERT INTO Cloths VALUES(NULL,"COAT",  "BLUE",     "M,L",      "F",40);
INSERT INTO Cloths VALUES(NULL,"COAT",  "HOTPINK",  "L",        "M",45);
INSERT INTO Cloths VALUES(NULL,"SHAKET","YELLOW",   "M,XL",     "F", 3);
SELECT * FROM Cloths;

SELECT type, sum(total) 
FROM Cloths
GROUP BY type;

SELECT * FROM Cloths WHERE FIND_IN_SET('L',size)>0;

-- SELECT type, sum(total)
-- FROM Cloths
-- GROUP BY type
-- HAVING FIND_IN_SET('L',size)>0




DROP TABLE IF EXISTS Doors;
CREATE TABLE Doors(
    ID              INTEGER PRIMARY KEY AUTO_INCREMENT,
    DoorName        VARCHAR(30),
    IsDoorOpen      BIT
);
INSERT INTO Doors VALUES (NULL, "Door1", 0);
INSERT INTO Doors VALUES (NULL, "Door2", 1);
INSERT INTO Doors VALUES (NULL, "Door3", 1);
INSERT INTO Doors VALUES (NULL, "Door4", 0);
SELECT * FROM Doors;

SELECT ID,DoorName,
CASE
    WHEN IsDoorOpen = 1 THEN "OPEN"
    WHEN IsDoorOpen = 0 THEN "CLOSE"
    ELSE "UNKNOWN"
END AS DoorStatus
FROM Doors;



