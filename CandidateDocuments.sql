

mysql> create table Candidate_Document(id int PRIMARY KEY,candidate_id int not null,doc_type VARCHAR(50) not null,doc_path blob,status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc Candidate_Document;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id            | int         | NO   | PRI | NULL    |       |
| candidate_id  | int         | NO   |     | NULL    |       |
| doc_type      | varchar(50) | NO   |     | NULL    |       |
| doc_path      | blob        | YES  |     | NULL    |       |
| status        | varchar(50) | YES  |     | NULL    |       |
| creator_stamp | datetime    | YES  |     | NULL    |       |
| creator_user  | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into candidate_document values(1,0101,'AAdhar','www.sai.com','Received','22-01-20 01:05:09',1);

mysql> insert into candidate_document values(2,0102,'AAdhar','www.manu.com','Received','23-01-20 02:05:09',2),
(3,0103,'AAdhar','www.manu.com','Received','23-01-20 03:05:09',3),
(4,0104,'AAdhar','www.pdf.com','Received','24-01-20 04:05:09',4),
(5,0105,'AAdhar','www.word.com','Received','25-01-20 05:05:09',5);

mysql> select * from candidate_document;
+----+--------------+----------+----------------------------+----------+---------------------+--------------+
| id | candidate_id | doc_type | doc_path                   | status   | creator_stamp       | creator_user |
+----+--------------+----------+----------------------------+----------+---------------------+--------------+
|  1 |          101 | AAdhar   | 0x7777772E7361692E636F6D   | Received | 2022-01-20 01:05:09 |            1 |
|  2 |          102 | AAdhar   | 0x7777772E6D616E752E636F6D | Received | 2023-01-20 02:05:09 |            2 |
|  3 |          103 | AAdhar   | 0x7777772E6D616E752E636F6D | Received | 2023-01-20 03:05:09 |            3 |
|  4 |          104 | AAdhar   | 0x7777772E7064662E636F6D   | Received | 2024-01-20 04:05:09 |            4 |
|  5 |          105 | AAdhar   | 0x7777772E776F72642E636F6D | Received | 2025-01-20 05:05:09 |            5 |
+----+--------------+----------+----------------------------+----------+---------------------+--------------+
5 rows in set (0.00 sec)

