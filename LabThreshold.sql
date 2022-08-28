

mysql> CREATE TABLE lab_threshold
    ->      ( id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->        lab_Id INT(10),
    ->        lab_capacity INT,
    ->        lead_threshold INT,
    ->        ideation_engg_threshold INT,
    ->        buddy_engg_threshold INT,
    ->        status ENUM('active', 'inactive'),
    ->        creator_stamp DATETIME NOT NULL,
    ->        creator_user VARCHAR(100),
    ->        FOREIGN KEY (lab_id)
    ->        REFERENCES lab(id)
    ->        ON UPDATE CASCADE
    ->        ON DELETE CASCADE
    ->      );
Query OK, 0 rows affected, 2 warnings (0.06 sec)




mysql> INSERT INTO lab_threshold value(1, 1, 100, 5, 23, 5, 'Active', '23-05-13 10:23:45','sai');
Query OK, 1 row affected (0.02 sec)

mysql>
mysql> INSERT INTO lab_threshold value(2, 2, 50, 10, 21, 2, 'InActive', '13-05-18 10:43:15','prakash');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO lab_threshold value(3, 3, 150, 20, 15, 2, 'InActive', '03-05-19 10:20:03','vinay');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO lab_threshold value(4, 4, 150, 20, 15, 2, 'InActive', '03-05-19 10:20:03','manoj');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO lab_threshold value(5, 5, 150, 20, 15, 2, 'InActive', '03-05-19 10:20:03','raghu');
Query OK, 1 row affected (0.01 sec)

mysql> select * from lab_threshold;
+----+--------+--------------+----------------+-------------------------+----------------------+----------+---------------------+--------------+
| id | lab_Id | lab_capacity | lead_threshold | ideation_engg_threshold | buddy_engg_threshold | status   | creator_stamp       | creator_user |
+----+--------+--------------+----------------+-------------------------+----------------------+----------+---------------------+--------------+
|  1 |      1 |          100 |              5 |                      23 |                    5 | active   | 2023-05-13 10:23:45 | sai          |
|  2 |      2 |           50 |             10 |                      21 |                    2 | inactive | 2013-05-18 10:43:15 | prakash      |
|  3 |      3 |          150 |             20 |                      15 |                    2 | inactive | 2003-05-19 10:20:03 | vinay        |
|  4 |      4 |          150 |             20 |                      15 |                    2 | inactive | 2003-05-19 10:20:03 | vinay        |
|  5 |      5 |          150 |             20 |                      15 |                    2 | inactive | 2003-05-19 10:20:03 | vinay        |
+----+--------+--------------+----------------+-------------------------+----------------------+----------+---------------------+--------------+
5 rows in set (0.00 sec)
