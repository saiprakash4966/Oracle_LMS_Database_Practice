

mysql> CREATE TABLE candidate_stack_assignment
    ->     ( id INT(10) NOT NULL PRIMARY KEY,
    ->       requirement_id INT(10),
    ->       candidate_id INT(10),
    ->       assigned_date DATE,
    ->       complete_date DATE,
    ->      status ENUM('active', 'inactive'),
    ->       creator_stamp DATETIME NOT NULL,
    ->       creator_user VARCHAR(100),
    ->        FOREIGN KEY (requirement_id) REFERENCES company_requirement(id)
    ->        ON UPDATE CASCADE ON DELETE CASCADE,
    ->        FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(Id)
    ->    ON UPDATE CASCADE ON DELETE CASCADE
    ->     );
Query OK, 0 rows affected, 3 warnings (0.10 sec)

mysql> INSERT into candidate_stack_assignment values(1,1,1,'01-01-19','01-01-20','active','03-04-05 01:00:02','saI');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT into candidate_stack_assignment values(2,2,2,'02-01-19','02-01-20','active','05-04-05 01:00:02','manoj');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into candidate_stack_assignment values(3,3,3,'03-01-19','03-01-20','active','06-04-05 01:00:02','vijay');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into candidate_stack_assignment values(4,4,4,'04-01-19','04-01-20','active','07-04-05 01:00:02','nithin');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into candidate_stack_assignment values(5,5,5,'05-01-19','05-01-20','active','08-04-05 01:00:02','vamsi');
Query OK, 1 row affected (0.01 sec)

mysql> select * from candidate_stack_assignment;
+----+----------------+--------------+---------------+---------------+--------+---------------------+--------------+
| id | requirement_id | candidate_id | assigned_date | complete_date | status | creator_stamp       | creator_user |
+----+----------------+--------------+---------------+---------------+--------+---------------------+--------------+
|  1 |              1 |            1 | 2001-01-19    | 2001-01-20    | active | 2003-04-05 01:00:02 | saI          |
|  2 |              2 |            2 | 2002-01-19    | 2002-01-20    | active | 2005-04-05 01:00:02 | manoj        |
|  3 |              3 |            3 | 2003-01-19    | 2003-01-20    | active | 2006-04-05 01:00:02 | vijay        |
|  4 |              4 |            4 | 2004-01-19    | 2004-01-20    | active | 2007-04-05 01:00:02 | nithin       |
|  5 |              5 |            5 | 2005-01-19    | 2005-01-20    | active | 2008-04-05 01:00:02 | vamsi        |
+----+----------------+--------------+---------------+---------------+--------+---------------------+--------------+
5 rows in set (0.01 sec)
