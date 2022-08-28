CREATE TABLE mentor_tech_stack
    ->     ( id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->       mentor_id INT(10),
    ->       tech_stack_id INT(10),
    ->       status ENUM('active', 'inactive'),
    ->       creator_stamp DATETIME NOT NULL,
    ->       creator_user VARCHAR(100),
    ->        FOREIGN KEY (mentor_id)
    ->        REFERENCES mentor(id)
    ->        ON UPDATE CASCADE
    ->        ON DELETE CASCADE,
    ->        FOREIGN KEY (tech_stack_id)
    ->        REFERENCES tech_stack(id)
    ->        ON UPDATE CASCADE
    ->        ON DELETE CASCADE
    ->     );

mysql> INSERT INTO mentor_tech_stack VALUES(1, 1, 111, 'Active', '10-07-20 14:34:07', 'sai');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO mentor_tech_stack VALUES(2, 2, 222, 'Active', '10-07-20 14:34:07', 'raju');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO mentor_tech_stack VALUES(3, 3, 333, 'Active', '14-07-22 17:20:01', 'mahesh');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO mentor_tech_stack VALUES(4, 4, 444, 'Active', '05-05-21 11:34:07', 'vaibhav');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mentor_tech_stack VALUES(5, 5, 555, 'Active', '10-07-20 14:34:07', 'raju');
Query OK, 1 row affected (0.01 sec)

mysql> select * from mentor_tech_stack;
+----+-----------+---------------+--------+---------------------+--------------+
| id | mentor_id | tech_stack_id | status | creator_stamp       | creator_user |
+----+-----------+---------------+--------+---------------------+--------------+
|  1 |         1 |           111 | active | 2012-05-20 14:34:07 | sai          |
|  2 |         2 |           222 | active | 2010-07-20 14:34:07 | raju         |
|  3 |         3 |           333 | active | 2014-07-22 17:20:01 | mahesh       |
|  4 |         4 |           444 | active | 2005-05-21 11:34:07 | vaibhav      |
|  5 |         5 |           555 | active | 2010-07-20 14:34:07 | raju         |
+----+-----------+---------------+--------+---------------------+--------------+
5 rows in set (0.00 sec)
