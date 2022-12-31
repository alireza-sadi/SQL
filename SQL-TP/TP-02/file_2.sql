-- --------------------------------------------------
-- Publishers Table                                --
-- --------------------------------------------------
DROP TABLE IF EXISTS pubs;
CREATE TABLE IF NOT EXISTS pubs(
    ID              INT     NOT     NULL,
    Name            varchar(100),

    PRIMARY KEY(ID)
);

INSERT INTO pubs VALUES (1, "Fariborz");
INSERT INTO pubs VALUES (2, "Hadis");
INSERT INTO pubs VALUES (3, "Maryam");
INSERT INTO pubs VALUES (4, "Akram");
INSERT INTO pubs VALUES (5, "Mohsen");

SELECT * FROM pubs;

-- --------------------------------------------------
-- Books Table                                     --
-- --------------------------------------------------
DROP TABLE IF EXISTS books;
CREATE TABLE IF NOT EXISTS books(
    ID              int,
    Title           varchar(100),
    PubDate         date,
    PubID           int
);

INSERT INTO books VALUES (1, "Book1", "2019-12-03", 1);
INSERT INTO books VALUES (2, "Book2", "2014-11-28", 2);
INSERT INTO books VALUES (3, "Book3", now()       , 2);
INSERT INTO books VALUES (4, "Book4", "2014-11-28", 5);
INSERT INTO books VALUES (5, "Book5", "2014-11-29", NULL);
INSERT INTO books VALUES (6, "Book6", "2014-12-02", 5);

SELECT * FROM books;

SELECT * 
FROM books
LEFT JOIN pubs
ON books.PubID=pubs.ID;

SELECT * 
FROM books
RIGHT JOIN pubs
ON books.PubID=pubs.ID;
