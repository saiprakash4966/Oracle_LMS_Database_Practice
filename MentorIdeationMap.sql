

mysql> create table Mentor_Ideation_Map(Id int PRIMARY KEY,Parent_Mentor_Id int not null,Mentor_id int not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc Mentor_Ideation_Map;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| Id               | int         | NO   | PRI | NULL    |       |
| Parent_Mentor_Id | int         | NO   |     | NULL    |       |
| Mentor_id        | int         | NO   |     | NULL    |       |
| Status           | varchar(50) | YES  |     | NULL    |       |
| creator_stamp    | datetime    | YES  |     | NULL    |       |
| creator_user     | int         | NO   |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


mysql> insert into mentor_ideation_map values(1,50,1,'good','07-06-05 02:04:01',1),
(2,51,2,'good','08-06-05 03:04:01',2),(3,52,1,'good','09-06-05 04:04:01',3),(4,53,4,'good','10-06-05 07:04:01',4),(5,54,1,'good','11-06-05 02:04:01',5);

mysql> select * from mentor_ideation_map;
+----+------------------+-----------+--------+---------------------+--------------+
| Id | Parent_Mentor_Id | Mentor_id | Status | creator_stamp       | creator_user |
+----+------------------+-----------+--------+---------------------+--------------+
|  1 |               50 |         1 | good   | 2007-06-05 02:04:01 |            1 |
|  2 |               51 |         2 | good   | 2008-06-05 03:04:01 |            2 |
|  3 |               52 |         1 | good   | 2009-06-05 04:04:01 |            3 |
|  4 |               53 |         4 | good   | 2010-06-05 07:04:01 |            4 |
|  5 |               54 |         1 | good   | 2011-06-05 02:04:01 |            5 |
+----+------------------+-----------+--------+---------------------+--------------+
5 rows in set (0.00 sec)