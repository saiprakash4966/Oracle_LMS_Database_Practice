

 mysql> create table tech_type(id int PRIMARY KEY,type_Name VARCHAR(50) not null,Cur_Status VARCHAR(50),creator_stamp datetime,creator_user varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into tech_type values(1,'Fullstack','active','07-09-02 01:02:09','sai'),
    -> (2,'Frontend','active','08-09-02 05:02:09','raghu'),
    -> (3,'Backend','active','11-09-02 03:02:09','anji'),
    -> (4,'Frontend','active','02-09-02 04:02:09','manoj'),
    -> (5,'Fullstack','active','05-09-02 09:02:09','prakash');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from tech_type;
+----+-----------+------------+---------------------+--------------+
| id | type_Name | Cur_Status | creator_stamp       | creator_user |
+----+-----------+------------+---------------------+--------------+
|  1 | Fullstack | active     | 2007-09-02 01:02:09 | sai          |
|  2 | Frontend  | active     | 2008-09-02 05:02:09 | raghu        |
|  3 | Backend   | active     | 2011-09-02 03:02:09 | anji         |
|  4 | Frontend  | active     | 2002-09-02 04:02:09 | manoj        |
|  5 | Fullstack | active     | 2005-09-02 09:02:09 | prakash      |
+----+-----------+------------+---------------------+--------------+
5 rows in set (0.00 sec)
