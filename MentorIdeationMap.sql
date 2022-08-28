

mysql> CREATE TABLE mentor_ideation_map    ( id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,      parent_mentor_id INT(10),      mentor_id INT(10),      status ENUM('active', 'inactive'),      creator_stamp DATETIME NOT NULL,      creator_user VARCHAR(100),       FOREIGN KEY (parent_mentor_id)       REFERENCES mentor(id)       ON UPDATE CASCADE       ON DELETE CASCADE,       FOREIGN KEY (mentor_id)       REFERENCES mentor(id)       ON UPDATE CASCADE       ON DELETE CASCADE    );
Query OK, 0 rows affected, 3 warnings (0.07 sec)

mysql> INSERT INTO mentor_ideation_map value(1, 1, 1, 'Active', '12-05-20 14:34:07', 'sai');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO mentor_ideation_map value(3, 1, 2, 'Active', '16-02-21 11:04:07', 'sravan');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor_ideation_map value(5, 1, 3, 'Active', '14-07-22 17:20:01', 'anil');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor_ideation_map value(19, 1, 4, 'Active', '05-05-21 11:34:07', 'vinay');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor_ideation_map value(34, 1, 5, 'Active', '10-07-20 14:34:07', 'ramesh');
Query OK, 1 row affected (0.01 sec)

mysql> select * from mentor_ideation_map;
+----+------------------+-----------+--------+---------------------+--------------+
| id | parent_mentor_id | mentor_id | status | creator_stamp       | creator_user |
+----+------------------+-----------+--------+---------------------+--------------+
|  1 |                1 |         1 | active | 2012-05-20 14:34:07 | sai          |
|  3 |                1 |         2 | active | 2016-02-21 11:04:07 | sravan       |
|  5 |                1 |         3 | active | 2014-07-22 17:20:01 | anil         |
| 19 |                1 |         4 | active | 2005-05-21 11:34:07 | vinay        |
| 34 |                1 |         5 | active | 2010-07-20 14:34:07 | ramesh       |
+----+------------------+-----------+--------+---------------------+--------------+
5 rows in set (0.00 sec)
