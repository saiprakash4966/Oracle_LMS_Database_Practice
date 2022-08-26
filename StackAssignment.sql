

mysql> create table Stack_Assignment(Id int PRIMARY KEY,Requirement_Id int not null,Candidate_Id int not null,assign_date datetime,complte_date datetime,status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.05 sec)


mysql> desc Stack_Assignment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| Id             | int         | NO   | PRI | NULL    |       |
| Requirement_Id | int         | NO   |     | NULL    |       |
| Candidate_Id   | int         | NO   |     | NULL    |       |
| assign_date    | datetime    | YES  |     | NULL    |       |
| complte_date   | datetime    | YES  |     | NULL    |       |
| status         | varchar(50) | YES  |     | NULL    |       |
| creator_stamp  | datetime    | YES  |     | NULL    |       |
| creator_user   | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)


mysql> insert into stack_assignment values(1,1,1,'01-01-19 06:05:00','done','03-04-05 01:00:02',1),
(2,2,2,'02-01-19 07:05:00','done','05-04-05 01:00:02',2),
(3,3,3,'03-01-19 08:05:00','done','06-04-05 01:00:02',3),
(4,4,4,'04-01-19 09:05:00','done','07-04-05 01:00:02',4),
(5,5,5,'05-01-19 01:05:00','done','08-04-05 01:00:02',5);