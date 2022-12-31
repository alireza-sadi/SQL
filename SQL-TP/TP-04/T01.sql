-- -----------------------------------------------------------
-- String functions
-- -----------------------------------------------------------
SELECT UPPER("Hello");
SELECT LOWER("Hello");

SELECT CONCAT("Hello","Goodbye");
SELECT CONCAT_WS("-","Hello","Goodbye");

SELECT LPAD("AAA",20,"[]");
SELECT LPAD("AAABBB",20,"[]");
SELECT RPAD("AAABBB",20,"-[]+");

SELECT REPLACE("Hello","e","E");
SELECT REVERSE("Hello");

SELECT STRCMP ("A","A");
SELECT STRCMP ("A","B");
SELECT STRCMP ("B","A");
SELECT STRCMP ("a","A");

SELECT REPEAT("ABC",20);
SELECT LOCATE("O","Hello");

SELECT MID("Hello To My Pretty World",7,12);

SELECT INSTR("Hello","O");

SELECT "Hello My World", INSERT("Hello My World",2,2,"[[]]");
SELECT "Hello My World", INSERT("Hello My World",2,4,"[[]]");
SELECT "Hello My World", INSERT("Hello My World",2,6,"[[]]");

SELECT LENGTH("Hello");

SELECT FORMAT(10.2444678,6);
SELECT TRUNCATE(10.2444678,6);

SELECT FORMAT(10.2488,3);
SELECT TRUNCATE(10.24488,3);