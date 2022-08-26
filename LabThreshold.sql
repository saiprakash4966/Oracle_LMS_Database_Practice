

mysql> create table LabThreshold(Id int PRIMARY KEY,Lab_Id int not null,Lab_Capacity int not null,Lead_Threshold int not null,Ideation_engg_Threshold int not null,buddy_engg_threshold_status VARCHAR(100),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.07 sec)

mysql> desc LabThreshold;
+-----------------------------+--------------+------+-----+---------+-------+
| Field                       | Type         | Null | Key | Default | Extra |
+-----------------------------+--------------+------+-----+---------+-------+
| Id                          | int          | NO   | PRI | NULL    |       |
| Lab_Id                      | int          | NO   |     | NULL    |       |
| Lab_Capacity                | int          | NO   |     | NULL    |       |
| Lead_Threshold              | int          | NO   |     | NULL    |       |
| Ideation_engg_Threshold     | int          | NO   |     | NULL    |       |
| buddy_engg_threshold_status | varchar(100) | YES  |     | NULL    |       |
| creator_stamp               | datetime     | YES  |     | NULL    |       |
| creator_user                | int          | NO   |     | NULL    |       |
+-----------------------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)


mysql> insert into  LabThreshold values(1,20,200,10,50,'active','09-09-08 02:00:03',1),
(2,40,150,20,70,'active','19-09-08 02:00:03',2),
(3,26,100,30,90,'active','29-09-08 02:00:03',3),
(4,80,500,40,20,'active','11-09-08 02:00:03',4),
(5,50,60,85,40,'active','08-09-08 02:00:03',5);


mysql> select * from LabThreshold;
+----+--------+--------------+----------------+-------------------------+-----------------------------+---------------------+--------------+
| Id | Lab_Id | Lab_Capacity | Lead_Threshold | Ideation_engg_Threshold | buddy_engg_threshold_status | creator_stamp       | creator_user |
+----+--------+--------------+----------------+-------------------------+-----------------------------+---------------------+--------------+
|  1 |     20 |          200 |             10 |                      50 | active                      | 2009-09-08 02:00:03 |            1 |
|  2 |     40 |          150 |             20 |                      70 | active                      | 2019-09-08 02:00:03 |            2 |
|  3 |     26 |          100 |             30 |                      90 | active                      | 2029-09-08 02:00:03 |            3 |
|  4 |     80 |          500 |             40 |                      20 | active                      | 2011-09-08 02:00:03 |            4 |
|  5 |     50 |           60 |             85 |                      40 | active                      | 2008-09-08 02:00:03 |            5 |
+----+--------+--------------+----------------+-------------------------+-----------------------------+---------------------+--------------+
5 rows in set (0.00 sec)
