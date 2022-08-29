

mysql> CREATE TABLE candidate_documents
    -> (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->        candidate_id INT(10) NOT NULL,
    ->        doc_type VARCHAR(100),
    ->        doc_path VARCHAR(2048),
    ->        status ENUM('pending', 'received'),
    ->        creator_stamp DATETIME NOT NULL,
    ->        creator_user VARCHAR(100),
    ->        FOREIGN KEY (candidate_id)
    ->        REFERENCES fellowship_candidate(id)
    ->        ON UPDATE CASCADE
    ->        ON DELETE CASCADE
    ->      );


mysql> INSERT INTO candidate_documents VALUES(1, 1, "PAN NO", "https://docs.google.com/document/pan", "received", "24-02-22 13:34:25", "sai");
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO candidate_documents VALUES(2, 2, "ADHAR NO", "https://docs.google.com/document/aadhar", "received", "14-03-20 13:34:25", "manoj");
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO candidate_documents VALUES(3, 3, "PAN NO", "https://docs.google.com/document/pan", "received", "16-07-21 15:36:05", "saiprakash");
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO candidate_documents VALUES(4, 4, "ADHAR NO", "https://docs.google.com/document/aadhar", "received", "18-03-22 12:52:15", "raghu");
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO candidate_documents VALUES(5, 5, "AADHAR NO", "https://docs.google.com/document/aadhar", "pending", "19-08-21 14:03:25", "sridhar");
Query OK, 1 row affected (0.00 sec)


mysql> select * from candidate_documents;
+----+--------------+-----------+-----------------------------------------+----------+---------------------+--------------+
| id | candidate_id | doc_type  | doc_path                                | status   | creator_stamp       | creator_user |
+----+--------------+-----------+-----------------------------------------+----------+---------------------+--------------+
|  1 |            1 | PAN NO    | https://docs.google.com/document/pan    | received | 2024-02-22 13:34:25 | sai          |
|  2 |            2 | ADHAR NO  | https://docs.google.com/document/aadhar | received | 2014-03-20 13:34:25 | manoj        |
|  3 |            3 | PAN NO    | https://docs.google.com/document/pan    | received | 2016-07-21 15:36:05 | saiprakash   |
|  4 |            4 | ADHAR NO  | https://docs.google.com/document/aadhar | received | 2018-03-22 12:52:15 | raghu        |
|  5 |            5 | AADHAR NO | https://docs.google.com/document/aadhar | pending  | 2019-08-21 14:03:25 | sridhar      |
+----+--------------+-----------+-----------------------------------------+----------+---------------------+--------------+
5 rows in set (0.00 sec)







