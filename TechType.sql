

mysql> create table TechType(Id int PRIMARY KEY,Type_Name VARCHAR(50) not null,Cur_Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.04 sec)
mysql> desc TechType;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Id            | int         | NO   | PRI | NULL    |       |
| Type_Name     | varchar(50) | NO   |     | NULL    |       |
| Cur_Status    | varchar(50) | YES  |     | NULL    |       |
| creator_stamp | datetime    | YES  |     | NULL    |       |
| creator_user  | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)



mysql> insert into techtype values(1,'Fullstack','active','07-09-02 01:02:09',1),
(2,'Frontend','active','08-09-02 05:02:09',2),
(3,'Backend','active','11-09-02 03:02:09',3),
(4,'Frontend','active','02-09-02 04:02:09',4),
(5,'Fullstack','active','05-09-02 09:02:09',5);


mysql> select * from techtype;
+----+-----------+------------+---------------------+--------------+
| Id | Type_Name | Cur_Status | creator_stamp       | creator_user |
+----+-----------+------------+---------------------+--------------+
|  1 | Fullstack | active     | 2007-09-02 01:02:09 |            1 |
|  2 | Frontend  | active     | 2008-09-02 05:02:09 |            2 |
|  3 | Backend   | active     | 2011-09-02 03:02:09 |            3 |
|  4 | Frontend  | active     | 2002-09-02 04:02:09 |            4 |
|  5 | Fullstack | active     | 2005-09-02 09:02:09 |            5 |
+----+-----------+------------+---------------------+--------------+
5 rows in set (0.00 sec)