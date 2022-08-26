

mysql> create table Mentor(Id int PRIMARY KEY,Name VARCHAR(50) not null,Mentor_Type VARCHAR(50) not null,Lab_Id int not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc Mentor;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Id            | int         | NO   | PRI | NULL    |       |
| Name          | varchar(50) | NO   |     | NULL    |       |
| Mentor_Type   | varchar(50) | NO   |     | NULL    |       |
| Lab_Id        | int         | NO   |     | NULL    |       |
| Status        | varchar(50) | YES  |     | NULL    |       |
| creator_stamp | datetime    | YES  |     | NULL    |       |
| creator_user  | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)


mysql> insert into mentor values(1,'Sunil','PracticeHead',11,'yes','09-09-08 07:00:09',1);

mysql> insert into mentor values(2,'Gunjan','Lead',11,'yes','11-09-08 06:00:09',2),
(3,'Srinath','supportmentor',12,'yes','12-09-08 02:00:09',3),
(4,'Mounika','supportmentor',13,'yes','13-09-08 03:00:09',4),
(5,'saranya','supportmentor',14,'yes','14-09-08 01:00:09',5);




mysql> select * from mentor;
+----+---------+---------------+--------+--------+---------------------+--------------+
| Id | Name    | Mentor_Type   | Lab_Id | Status | creator_stamp       | creator_user |
+----+---------+---------------+--------+--------+---------------------+--------------+
|  1 | Sunil   | PracticeHead  |     11 | yes    | 2009-09-08 07:00:09 |            1 |
|  2 | Gunjan  | Lead          |     11 | yes    | 2011-09-08 06:00:09 |            2 |
|  3 | Srinath | supportmentor |     12 | yes    | 2012-09-08 02:00:09 |            3 |
|  4 | Mounika | supportmentor |     13 | yes    | 2013-09-08 03:00:09 |            4 |
|  5 | saranya | supportmentor |     14 | yes    | 2014-09-08 01:00:09 |            5 |
+----+---------+---------------+--------+--------+---------------------+--------------+
5 rows in set (0.00 sec)

