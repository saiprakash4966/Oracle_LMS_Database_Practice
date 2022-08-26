

mysql> create table TechStack(Id int PRIMARY KEY,Tech_Name VARCHAR(50)not null,image_path blob,framework_cur_status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.05 sec)


mysql> desc TechStack;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| Id                   | int         | NO   | PRI | NULL    |       |
| Tech_Name            | varchar(50) | NO   |     | NULL    |       |
| image_path           | blob        | YES  |     | NULL    |       |
| framework_cur_status | varchar(50) | YES  |     | NULL    |       |
| creator_stamp        | datetime    | YES  |     | NULL    |       |
| creator_user         | int         | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


mysql> insert into Techstack values(1,'Java','java.jpg','Spring','09-09-08 01:01:00',1),
(2,'Python','python.jpg','Falcon','11-09-08 02:01:00',2),
(3,'DotNet','net.jpg','dotnet4','12-09-08 03:01:00',3),
(4,'Java','java.jpg','Spring','13-09-08 04:01:00',4),
(5,'Python','python.jpg','Spring','14-09-08 05:01:00',5);



mysql> select * from techstack;
+----+-----------+------------------------+----------------------+---------------------+--------------+
| Id | Tech_Name | image_path             | framework_cur_status | creator_stamp       | creator_user |
+----+-----------+------------------------+----------------------+---------------------+--------------+
|  1 | Java      | 0x6A6176612E6A7067     | Spring               | 2009-09-08 01:01:00 |            1 |
|  2 | Python    | 0x707974686F6E2E6A7067 | Falcon               | 2011-09-08 02:01:00 |            2 |
|  3 | DotNet    | 0x6E65742E6A7067       | dotnet4              | 2012-09-08 03:01:00 |            3 |
|  4 | Java      | 0x6A6176612E6A7067     | Spring               | 2013-09-08 04:01:00 |            4 |
|  5 | Python    | 0x707974686F6E2E6A7067 | Spring               | 2014-09-08 05:01:00 |            5 |
+----+-----------+------------------------+----------------------+---------------------+--------------+
5 rows in set (0.00 sec)
