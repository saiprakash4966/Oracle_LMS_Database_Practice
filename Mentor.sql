

mysql> CREATE TABLE mentor    (id INT(10) NOT NULL PRIMARY KEY,      name VARCHAR(100),      mentor_type enum('Lead head','buddy mentor','support mentor'),      lab_id INT(10),      status ENUM('active', 'inactive'),      creator_stamp DATETIME NOT NULL,      creator_user VARCHAR(100),       FOREIGN KEY (lab_id)       REFERENCES lab(id)       ON UPDATE CASCADE       ON DELETE CASCADE    );
Query OK, 0 rows affected, 2 warnings (0.09 sec)

mysql> INSERT INTO mentor value(1, 'Atif', 'Support Mentor', 1, 'Active', '12-05-20 14:34:07', 'sunil');
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO mentor value(2, 'Ashish', 'Lead Head', 2, 'Active', '16-02-21 11:04:07', 'ashish');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor value(3, 'Srinath', 'Support Mentor', 3, 'Active', '14-07-22 17:20:01', 'srinath');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor value(4, 'Mounika', 'Support Mentor', 4, 'Active', '05-05-21 11:34:07', 'mounika');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor value(5, 'Saranya', 'Support Mentor', 5, 'Active', '05-05-21 11:34:07', 'saranya');
Query OK, 1 row affected (0.01 sec)

mysql> create table Mentor(Id int PRIMARY KEY,Name VARCHAR(50) not null,Mentor_Type VARCHAR(50) not null,Lab_Id int not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.04 sec)




mysql> select * from mentor;
+----+---------+----------------+--------+--------+---------------------+--------------+
| id | name    | mentor_type    | lab_id | status | creator_stamp       | creator_user |
+----+---------+----------------+--------+--------+---------------------+--------------+
|  1 | Atif    | support mentor |      1 | active | 2012-05-20 14:34:07 | sunil        |
|  2 | Ashish  | Lead head      |      2 | active | 2016-02-21 11:04:07 | ashish       |
|  3 | Srinath | support mentor |      3 | active | 2014-07-22 17:20:01 | srinath      |
|  4 | Mounika | support mentor |      4 | active | 2005-05-21 11:34:07 | mounika      |
|  5 | Saranya | support mentor |      5 | active | 2005-05-21 11:34:07 | saranya      |
+----+---------+----------------+--------+--------+---------------------+--------------+
5 rows in set (0.00 sec)
