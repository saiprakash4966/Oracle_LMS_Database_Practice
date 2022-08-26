

mysql> create table Lab(Id int PRIMARY KEY,Name VARCHAR(50)not null,Location VARCHAR(50) not null,Address VARCHAR(50) not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.04 sec)
mysql> desc Lab;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Id            | int         | NO   | PRI | NULL    |       |
| Name          | varchar(50) | NO   |     | NULL    |       |
| Location      | varchar(50) | NO   |     | NULL    |       |
| Address       | varchar(50) | NO   |     | NULL    |       |
| Status        | varchar(50) | YES  |     | NULL    |       |
| creator_stamp | datetime    | YES  |     | NULL    |       |
| creator_user  | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into Lab values(1,'Bridgelabz','PUNE','MUMBAI','Open','08-08-19 01:02:00',1),
(2,'Bridgelabz','Bangalore','Karnataka','Open','09-08-19 01:02:00',2),
(3,'Bridgelabz','Secunderabad','Hyderabad','Open','09-08-19 01:02:00',3),
(4,'Bridgelabz','PUNE','MUMBAI','Open','08-08-19 01:02:00',4),
(5,'Bridgelabz','chennai','Taminadu','Open','08-08-19 01:02:00',5);

mysql> select * from Lab;
+----+------------+--------------+-----------+--------+---------------------+--------------+
| Id | Name       | Location     | Address   | Status | creator_stamp       | creator_user |
+----+------------+--------------+-----------+--------+---------------------+--------------+
|  1 | Bridgelabz | PUNE         | MUMBAI    | Open   | 2008-08-19 01:02:00 |            1 |
|  2 | Bridgelabz | Bangalore    | Karnataka | Open   | 2009-08-19 01:02:00 |            2 |
|  3 | Bridgelabz | Secunderabad | Hyderabad | Open   | 2009-08-19 01:02:00 |            3 |
|  4 | Bridgelabz | PUNE         | MUMBAI    | Open   | 2008-08-19 01:02:00 |            4 |
|  5 | Bridgelabz | chennai      | Taminadu  | Open   | 2008-08-19 01:02:00 |            5 |
+----+------------+--------------+-----------+--------+---------------------+--------------+
5 rows in set (0.00 sec)