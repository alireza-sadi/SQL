DROP TABLE IF EXISTS Students;

CREATE TABLE Students(
    ID          INTEGER         NOT NULL    UNIQUE   PRIMARY KEY AUTO_INCREMENT,
    FirstName   VARCHAR(70),
    LastName    VARCHAR(70),
    NID         VARCHAR(10)     NOT NULL UNIQUE,
    CONSTRAINT student_uq UNIQUE (FirstName,LastName)
);

INSERT INTO Students VALUES (NULL,"Mohsen","Mohseni","1230000001");
INSERT INTO Students VALUES (NULL,"Mohsen","Mohseni","1230000001");
INSERT INTO Students VALUES (NULL,"Mohsen","Mohseni","1230000001");

INSERT INTO Students VALUES (NULL,"Hamid","Hamidi","1230000002");
INSERT INTO Students VALUES (NULL,"Hamid","Hamidi","1230000003");
INSERT INTO Students VALUES (NULL,"Hamid","Hamidii","1230000004");

SELECT * FROM Students;