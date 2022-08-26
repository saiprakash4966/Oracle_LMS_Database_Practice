

mysql> create table User_Details(Id int PRIMARY KEY,email VARCHAR(50) not null ,first_name VARCHAR(50) not null,last_name VARCHAR(50) not null,Password VARCHAR(50) not null,contact_number VARCHAR(50) not null ,isverified boolean,creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc user_details;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| Id             | int         | NO   | PRI | NULL    |       |
| email          | varchar(50) | NO   |     | NULL    |       |
| first_name     | varchar(50) | NO   |     | NULL    |       |
| last_name      | varchar(50) | NO   |     | NULL    |       |
| Password       | varchar(50) | NO   |     | NULL    |       |
| contact_number | varchar(50) | NO   |     | NULL    |       |
| isverified     | tinyint(1)  | YES  |     | NULL    |       |
| creator_stamp  | datetime    | YES  |     | NULL    |       |
| creator_user   | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
9 rows in set (0.01 sec)

mysql> insert into user_details(Id,email,first_name,last_name,Password,contact_number,isverified,creator_stamp,creator_user)values(1,'saiprakash@gmail.com','Saiprakash','Beemari','Sai@123',9676113169,1,'01-01-20 09:05:00',1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into user_details values(2,'raghu@gmail.com','Raghu','gattu','Raghu@123',9080908090,1,'01-02-21 08:02:05',2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into user_details values(3,'manoj@gmail.com','manoj','gadham','Manoj@123',9090907090,1,'03-02-21 09:02:05',3);
Query OK, 1 row affected (0.01 sec)


mysql> insert into user_details values(4,'anji@gmail.com','anji','rajipeta','anji@123',9080908089,1,'09-02-21 02:03:05',4),(5,'chandu@gmail.com','chandu','reddy','chandu@123',9080908077,1,'09-02-19 02:04:05',5);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from user_details;
+----+----------------------+------------+-----------+------------+----------------+------------+---------------------+--------------+
| Id | email                | first_name | last_name | Password   | contact_number | isverified | creator_stamp       | creator_user |
+----+----------------------+------------+-----------+------------+----------------+------------+---------------------+--------------+
|  1 | saiprakash@gmail.com | Saiprakash | Beemari   | Sai@123    | 9676113169     |          1 | 2001-01-20 09:05:00 |            1 |
|  2 | raghu@gmail.com      | Raghu      | gattu     | Raghu@123  | 9080908090     |          1 | 2001-02-21 08:02:05 |            2 |
|  3 | manoj@gmail.com      | manoj      | gadham    | Manoj@123  | 9090907090     |          1 | 2003-02-21 09:02:05 |            3 |
|  4 | anji@gmail.com       | anji       | rajipeta  | anji@123   | 9080908089     |          1 | 2009-02-21 02:03:05 |            4 |
|  5 | chandu@gmail.com     | chandu     | reddy     | chandu@123 | 9080908077     |          1 | 2009-02-19 02:04:05 |            5 |
+----+----------------------+------------+-----------+------------+----------------+------------+---------------------+--------------+
5 rows in set (0.00 sec)
