DROP DATABASE IF EXISTS Test;
CREATE DATABASE Test;

USE Test;



DROP TABLE IF EXISTS Record;
CREATE TABLE Record(
    ID      INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    Name    VARCHAR(50)
);

ALTER TABLE Record AUTO_INCREMENT=900;


INSERT INTO Record VALUES (NULL,"Mohsen");
INSERT INTO Record VALUES (NULL,"Parsa");
INSERT INTO Record VALUES (NULL,"Ehsan");
INSERT INTO Record VALUES (NULL,"Hasan");
INSERT INTO Record VALUES (NULL,"Maryam");
INSERT INTO Record VALUES (NULL,"Armita");
INSERT INTO Record VALUES (NULL,"Akram");
INSERT INTO Record VALUES (NULL,"Hamidreza");
INSERT INTO Record VALUES (NULL,"Fariborz");
INSERT INTO Record VALUES (NULL,"Feri");
INSERT INTO Record VALUES (NULL,"Sobhan");
INSERT INTO Record VALUES (NULL,"Samira");
INSERT INTO Record VALUES (NULL,"Alireza");
INSERT INTO Record VALUES (NULL,"Navid");
INSERT INTO Record VALUES (NULL,"Navid");
INSERT INTO Record VALUES (NULL,"Navid");
INSERT INTO Record VALUES (NULL,"Navid");
INSERT INTO Record VALUES (NULL,"Navid");
INSERT INTO Record VALUES (NULL,"Navid");
INSERT INTO Record VALUES (NULL,"Hadis");

SELECT * FROM Record;

ALTER TABLE Record ADD LastName VARCHAR(50);
ALTER TABLE Record MODIFY LastName VARCHAR(100);
ALTER TABLE Record DROP COLUMN LastName;



DESCRIBE Record;

SELECT * FROM Record;
SELECT DISTINCT Name FROM Record; 
SELECT DISTINCT Name FROM Record ORDER BY ID DESC LIMIT 5; 


CREATE INDEX my_index ON Record(Name);



DROP TABLE IF EXISTS MyUser;
CREATE TABLE MyUser(
    Name        VARCHAR(50),
    Family      VARCHAR(50),
    PRIMARY KEY (Name,Family) -- Composite Primary Key
);
INSERT INTO MyUser VALUES ("Feri","Farbod");
INSERT INTO MyUser VALUES ("Feri","Farbodi");
INSERT INTO MyUser VALUES ("Ferii","Farbod");
INSERT INTO MyUser VALUES ("Ferii","Farbod");

DESCRIBE MyUser;

SELECT * FROM MyUser;

SELECT Name AS FirstName FROM MyUser;

RENAME TABLE Record TO Data;

SELECT Name AS FirstName FROM Data WHERE Name LIKE "F%";

RENAME TABLE Data TO Record;

SELECT Name AS FirstName FROM Record WHERE Name LIKE "___i%";

SELECT Name AS FirstName FROM Record WHERE Name IN ("Navid","Sobhan","Feri");

SELECT Name AS FirstName FROM Record WHERE Name = "Navid" OR Name="Sobhan" OR Name="Feri";

SELECT Name AS FirstName FROM Record WHERE ID BETWEEN 905 AND 910;


DROP VIEW IF EXISTS RecordView;
CREATE VIEW RecordView AS
SELECT DISTINCT Name AS FirstName FROM Record;

SELECT * FROM RecordView;




DROP TABLE IF EXISTS Record2;
CREATE TABLE Record2(
    ID      INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    Name    VARCHAR(50)  DEFAULT "NOT DEFINED"
);

INSERT INTO Record2 VALUES (NULL,DEFAULT);
INSERT INTO Record2 VALUES (NULL,DEFAULT);
INSERT INTO Record2 VALUES (NULL,"Ahmad");
INSERT INTO Record2 VALUES (NULL,DEFAULT);
SELECT * FROM Record2;





DROP   TABLE IF EXISTS Users;
CREATE TABLE Users( 
    ID          INTEGER unsigned    PRIMARY KEY auto_increment, 
    First       VARCHAR(30),
    Last        VARCHAR(30),
    CONSTRAINT check_name_len CHECK (LENGTH(First)>2 AND LENGTH(Last)>2)     
);

INSERT INTO Users VALUES(NULL, "Ali", "Ali");
INSERT INTO Users VALUES(NULL, "Al", "Al");
SELECT * FROM Users;