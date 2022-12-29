DROP TABLE IF EXISTS Book;
CREATE TABLE Book(
    ID          INTEGER     PRIMARY KEY,
    Name        VARCHAR(30),
    AuthorID    INTEGER
);
INSERT INTO Book VALUES(1,"Book1",1);
INSERT INTO Book VALUES(2,"Book2",1);
INSERT INTO Book VALUES(3,"Book3",2);




DROP TABLE IF EXISTS Author;
CREATE TABLE Author(
    ID      INTEGER,
    Name    VARCHAR(30)
);
INSERT INTO Author VALUES(1,"Author1");
INSERT INTO Author VALUES(2,"Author2");




-- DROP VIEW IF EXISTS BookAuthorView;
CREATE OR REPLACE VIEW BookAuthorView AS
SELECT  Book.Name AS BookName,
        Author.Name AS AuthorName
FROM Book
LEFT JOIN Author
ON Book.AuthorID=Author.ID;


SELECT BookName,AuthorName FROM BookAuthorView;