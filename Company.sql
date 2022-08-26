

mysql> create table Company(Id int PRIMARY KEY,Name VARCHAR(50) not null,Address VARCHAR(50) not null,Location VARCHAR(50) not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc Company;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Id            | int         | NO   | PRI | NULL    |       |
| Name          | varchar(50) | NO   |     | NULL    |       |
| Address       | varchar(50) | NO   |     | NULL    |       |
| Location      | varchar(50) | NO   |     | NULL    |       |
| Status        | varchar(50) | YES  |     | NULL    |       |
| creator_stamp | datetime    | YES  |     | NULL    |       |
| creator_user  | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into company values(1,'Bridgelabz','PUNE','Mumbai','Verified','20-01-22 05:00:09',1),
(2,'Bridgelabz','PUNE','Mumbai','Verified','25-01-22 05:00:09',2),
(3,'Bridgelabz','PUNE','Mumbai','Verified','24-01-22 05:00:09',3),
(4,'Bridgelabz','PUNE','Mumbai','Verified','29-01-22 05:00:09',4),
(5,'Bridgelabz','PUNE','Mumbai','Verified','10-01-22 05:00:09',5);

mysql> select * from company;
+----+------------+---------+----------+----------+---------------------+--------------+
| Id | Name       | Address | Location | Status   | creator_stamp       | creator_user |
+----+------------+---------+----------+----------+---------------------+--------------+
|  1 | Bridgelabz | PUNE    | Mumbai   | Verified | 2020-01-22 05:00:09 |            1 |
|  2 | Bridgelabz | PUNE    | Mumbai   | Verified | 2025-01-22 05:00:09 |            2 |
|  3 | Bridgelabz | PUNE    | Mumbai   | Verified | 2024-01-22 05:00:09 |            3 |
|  4 | Bridgelabz | PUNE    | Mumbai   | Verified | 2029-01-22 05:00:09 |            4 |
|  5 | Bridgelabz | PUNE    | Mumbai   | Verified | 2010-01-22 05:00:09 |            5 |
+----+------------+---------+----------+----------+---------------------+--------------+
5 rows in set (0.00 sec)