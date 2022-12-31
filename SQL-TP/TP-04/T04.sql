DROP TABLE IF EXISTS Users;
CREATE TABLE Users(
    ID      INT             NOT NULL    PRIMARY KEY AUTO_INCREMENT,
    Name    VARCHAR(200)
);

DROP TABLE IF EXISTS Phone;
CREATE TABLE Phone(
    ID      INT             NOT NULL    PRIMARY KEY AUTO_INCREMENT,
    Number  VARCHAR(12)     DEFAULT "NOT EXIST",
    UserID  INT,
    CONSTRAINT  check_num_len  CHECK (LENGTH(Number)>3),
    FOREIGN KEY (UserID) REFERENCES Users(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Users VALUES (1, "Ehsan");
INSERT INTO Phone VALUES (100, "1111", 1);
INSERT INTO Phone VALUES (101, "1112", 1);
INSERT INTO Phone VALUES (102, DEFAULT, 1);


INSERT INTO Users VALUES (2, "Hasan");
INSERT INTO Phone VALUES (103, "2221", 2);


INSERT INTO Users VALUES (3, "Hadis");
INSERT INTO Phone VALUES (104, "9121", 3);
INSERT INTO Phone VALUES (105, "3355", 3);


DELETE FROM Users WHERE ID = 3;
-- DELETE FROM Phone WHERE UserID = 3;


SELECT * FROM Users;
SELECT * FROM Phone;


-- SELECT Users.Name, Phone.Number
-- FROM Users
-- LEFT JOIN Phone
-- ON Users.ID = Phone.UserID;


-- SELECT Users.Name, COUNT(Phone.Number)
-- FROM Users
-- LEFT JOIN Phone
-- ON Users.ID = Phone.UserID
-- GROUP BY Users.Name;


DROP TABLE IF EXISTS Cat;
CREATE TABLE Cat(
    ID      INT PRIMARY KEY NOT NULL UNIQUE,
    Val     VARCHAR(100),
    CatID   INT
);

INSERT INTO Cat VALUES(1,"Hat",NULL);
INSERT INTO Cat VALUES(11,"Cap",1);
INSERT INTO Cat VALUES(12,"Cowboy",1);
INSERT INTO Cat VALUES(13,"Winter",1);

INSERT INTO Cat VALUES(2,"Pants",NULL);
INSERT INTO Cat VALUES(21,"Bag",2);
INSERT INTO Cat VALUES(22,"Mom",2);
INSERT INTO Cat VALUES(221,"MomStyle",22);
INSERT INTO Cat VALUES(222,"MomFit",22);

SELECT * FROM Cat;
SELECT * FROM Cat WHERE ID=2 OR CatID=2;
SELECT * FROM Cat WHERE CONCAT(ID,"") LIKE "1%";


WITH recursive cte (ID, Val, CatID) AS (
  select     ID,
             Val,
             CatID
  from       Cat
  where      CatID = 1
  union all
  select     p.ID,
             p.Val,
             p.CatID
  from       Cat p
  inner join cte
          on p.CatID = cte.ID
)
select * from cte;