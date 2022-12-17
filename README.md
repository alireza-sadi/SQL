# SQL

### Install and Run

1. install Maria DB/My SQL ([Maria DB Download Page](https://mariadb.org/download/?t=mariadb&p=mariadb&r=10.10.2&os=windows&cpu=x86_64&pkg=msi&m=aliyun))

:warning: remember your password and database port for future.

:warning: If you want to type arabic/persian in your databases you should select the utf-8 in installition wizard.

2. open _MY SQL Client_ in your system.

- it will ask for a password that you set in installition wizard.

- if it don't ask ; can type this command to acces your root :

  `mysql -u root -p`

### Let's start :smiley:

At first need to create a database.

- for that , should type this command :

`create database    DATABASE_NAME;`

- for delete database type this command :

`drop database DATABASE_NAME;`

- after that can see your databases as a list by this command :

`show databases;`

next thing we have to do , use a database as main database.

- for that, should type this command :

`use     DATABASE_NAME; `

At third , need to create tables for each database

- use this command to create table :

```
create table TABLE-NAME(
    COLUMN-TITLE DATA-TYPES OPTIONAL-ATTRIBUTES,
    COLUMN-TITLE DATA-TYPES OPTIONAL-ATTRIBUTES,
    .
    .
    .
    COLUMN-TITLE DATA-TYPES OPTIONAL-ATTRIBUTES);

```

you can see Data Type in [here](https://github.com/alireza-sadi/SQL/blob/main/Concepts/SQL%20Data%20Types.md).

Now, insert row in table:

```
insert into   TABLE_NAME(column_1,column_2,column_3)
values(value_1,value_2,value_3);
```

And can see table with this command :

`select * from TABLE_NAME;`

Here it is a summery to how create database.

In below , I add some heading and make example for them.
