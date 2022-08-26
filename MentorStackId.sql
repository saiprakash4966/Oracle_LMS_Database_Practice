mysql> create table Mentor_Tech_Stack(Id int PRIMARY KEY,Mentor_Id int not null,Tech_stack_id int not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc Mentor_Tech_Stack;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Id            | int         | NO   | PRI | NULL    |       |
| Mentor_Id     | int         | NO   |     | NULL    |       |
| Tech_stack_id | int         | NO   |     | NULL    |       |
| Status        | varchar(50) | YES  |     | NULL    |       |
| creator_stamp | datetime    | YES  |     | NULL    |       |
| creator_user  | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


mysql> insert into mentor_tech_stack values(1,50,111,'Available','03-09-08 02:02:01',1),
(2,51,112,'Available','04-09-08 03:02:01',2),
(3,52,113,'Available','05-09-08 04:02:01',3),
(4,53,114,'Available','06-09-08 05:02:01',4),
(5,54,115,'Available','07-09-08 06:02:01',5);


mysql> select * from mentor_tech_stack;
+----+-----------+---------------+-----------+---------------------+--------------+
| Id | Mentor_Id | Tech_stack_id | Status    | creator_stamp       | creator_user |
+----+-----------+---------------+-----------+---------------------+--------------+
|  1 |        50 |           111 | Available | 2003-09-08 02:02:01 |            1 |
|  2 |        51 |           112 | Available | 2004-09-08 03:02:01 |            2 |
|  3 |        52 |           113 | Available | 2005-09-08 04:02:01 |            3 |
|  4 |        53 |           114 | Available | 2006-09-08 05:02:01 |            4 |
|  5 |        54 |           115 | Available | 2007-09-08 06:02:01 |            5 |
+----+-----------+---------------+-----------+---------------------+--------------+
5 rows in set (0.00 sec)
