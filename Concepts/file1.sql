-------------------------------------
-- create database                 --
-------------------------------------

DROP DATABASE IF EXISTS bookshop;

CREATE DATABASE IF NOT EXISTS bookshop;


SHOW DATABASES;
-------------------------------------
-- use database                    --
-------------------------------------

USE bookshop;

-------------------------------------
-- create table                    --
-------------------------------------

DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books(
    ID INT  UNIQUE     AUTO_INCREMENT,
    Name VARCHAR(100),
    Author VARCHAR(100));

SHOW TABLES;
-------------------------------------
-- insert into tables              --
-------------------------------------

INSERT INTO books VALUES(1,'pride and prejudice','Jane Austen');

SELECT * FROM books;