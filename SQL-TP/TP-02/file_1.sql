DROP TABLE IF EXISTS books;
CREATE TABLE IF NOT EXISTS books(
    ID              int,
    Title           varchar(100),
    PubDate         date,
    PubName         varchar(100)
);

INSERT INTO books VALUES (1, "Book1", "2019-12-03", " Ehsan");
INSERT INTO books VALUES (2, "Book2", "2014-11-28", "Ehsan ");
INSERT INTO books VALUES (3, "Book3", now(),        " EhSan ");

SELECT * FROM books;

-- SELECT * FROM books WHERE PubName LIKE "%Ehsan%"