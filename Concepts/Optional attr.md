## optional attributes for each column in SQL Tables

| Optional Attributes|  Description | 
|--------------- | -------------------|
| NOT NULL | Each row must contain a value for that column, null values are not allowed |
| DEFAULT value | Set a default value that is added when no other value is passed |
| UNSIGNED | Used for number types, limits the stored data to positive numbers and zero |
| AUTO INCREMENT | MySQL automatically increases the value of the field by 1 each time a new record is added |
| PRIMARY KEY | Used to uniquely identify the rows in a table. The column with PRIMARY KEY setting is often an ID number, and is often used with AUTO_INCREMENT |

Each table should have a primary key column (in this case: the "id" column). Its value must be unique for each record in the table.

Refrence : [W3SCHOOLS](https://www.w3schools.com/php/php_mysql_create_table.asp)
