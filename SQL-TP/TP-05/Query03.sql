DROP DATABASE IF EXISTS Test2;
CREATE DATABASE Test2;

USE Test2;

CREATE TABLE User(
    ID          INT             NOT NULL    UNIQUE,
    UName       VARCHAR(255)    NOT NULL    UNIQUE,     
    HashedPass  VARCHAR(255)    NOT NULL    
);

INSERT INTO User VALUES (1,"Mohi","1234");
INSERT INTO User VALUES (2,"Feri","2236");
INSERT INTO User VALUES (3,"Ahmad","1001");
INSERT INTO User VALUES (4,"Jafar","9900");

CREATE TABLE Email(
    ID          INT             NOT NULL    UNIQUE,
    Mail        VARCHAR(255)    NOT NULL,
    IsVerified  BOOLEAN         DEFAULT False,
    UserID      INT,
    CONSTRAINT `FK_Email_User` FOREIGN KEY (UserID) REFERENCES User(ID)
);

INSERT INTO Email VALUES (1, "m@m.com", True,  1);
INSERT INTO Email VALUES (2, "m@m2.com", False, 1);
INSERT INTO Email VALUES (3, "f@f.com", True, 2);

CREATE TABLE Job(
    ID          INT             NOT NULL    UNIQUE,
    Title       VARCHAR(255)    NOT NULL,
    UserID      INT,
    CONSTRAINT `FK_Email_User` FOREIGN KEY (UserID) REFERENCES User(ID)
);






DROP VIEW IF EXISTS UserInfo;
CREATE VIEW UserInfo AS
SELECT User.UName, Email.Mail
FROM User
LEFT JOIN Email
ON User.ID=Email.UserID;

SELECT * FROM UserInfo;

