

mysql> create table Candidate_BankDetails(Id int PRIMARY KEY,Candidate_Id int not null,Name VARCHAR(50) not null,Account_Number VARCHAR(50) not null,isAccountNumVerified boolean,IFSC_Code VARCHAR(50) not null,is_IFSC_Code_Verified boolean,Pan_Number VARCHAR(50) not null,is_PanNumber_Verified boolean,Aadhar_Num VARCHAR(50),Is_AadharNum_Verified boolean,creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc candidate_bankdetails;
+-----------------------+-------------+------+-----+---------+-------+
| Field                 | Type        | Null | Key | Default | Extra |
+-----------------------+-------------+------+-----+---------+-------+
| Id                    | int         | NO   | PRI | NULL    |       |
| Candidate_Id          | int         | NO   |     | NULL    |       |
| Name                  | varchar(50) | NO   |     | NULL    |       |
| Account_Number        | varchar(50) | NO   |     | NULL    |       |
| isAccountNumVerified  | tinyint(1)  | YES  |     | NULL    |       |
| IFSC_Code             | varchar(50) | NO   |     | NULL    |       |
| is_IFSC_Code_Verified | tinyint(1)  | YES  |     | NULL    |       |
| Pan_Number            | varchar(50) | NO   |     | NULL    |       |
| is_PanNumber_Verified | tinyint(1)  | YES  |     | NULL    |       |
| Aadhar_Num            | varchar(50) | YES  |     | NULL    |       |
| Is_AadharNum_Verified | tinyint(1)  | YES  |     | NULL    |       |
| creator_stamp         | datetime    | YES  |     | NULL    |       |
| creator_user          | int         | NO   |     | NULL    |       |
+-----------------------+-------------+------+-----+---------+-------+
13 rows in set (0.00 sec)

mysql> insert into candidate_bankdetails values(1,0001,'Saiprakash','020201010101',1,'ICIC0000101',1,'EHIPB2852L',1,'000100020003',1,'24-01-20 09:08:00',1),
(2,0002,'Manoj','020201010100',1,'ICIC0000101',1,'ABCDE1234F',1,'000400020003',1,'25-01-20 09:08:00',2),
(3,0003,'Anji','020201010102',1,'ICIC0000101',1,'GHIJK0000P',1,'000500020003',1,'26-01-20 09:08:00',3),
(4,0004,'Raghu','020201010103',1,'ICIC0000101',1,'ENMBV0098I',1,'000600020003',1,'22-01-20 09:08:00',4),
(5,0005,'Chandu','020201010104',1,'ICIC0000101',1,'FGTHY8989D',1,'000700020003',1,'28-01-20 09:08:00',5);


mysql> select * from candidate_bankdetails;
+----+--------------+------------+----------------+----------------------+-------------+-----------------------+------------+-----------------------+--------------+-----------------------+---------------------+--------------+
| Id | Candidate_Id | Name       | Account_Number | isAccountNumVerified | IFSC_Code   | is_IFSC_Code_Verified | Pan_Number | is_PanNumber_Verified | Aadhar_Num   | Is_AadharNum_Verified | creator_stamp       | creator_user |
+----+--------------+------------+----------------+----------------------+-------------+-----------------------+------------+-----------------------+--------------+-----------------------+---------------------+--------------+
|  1 |            1 | Saiprakash | 020201010101   |                    1 | ICIC0000101 |                     1 | EHIPB2852L |                     1 | 000100020003 |                     1 | 2024-01-20 09:08:00 |            1 |
|  2 |            2 | Manoj      | 020201010100   |                    1 | ICIC0000101 |                     1 | ABCDE1234F |                     1 | 000400020003 |                     1 | 2025-01-20 09:08:00 |            2 |
|  3 |            3 | Anji       | 020201010102   |                    1 | ICIC0000101 |                     1 | GHIJK0000P |                     1 | 000500020003 |                     1 | 2026-01-20 09:08:00 |            3 |
|  4 |            4 | Raghu      | 020201010103   |                    1 | ICIC0000101 |                     1 | ENMBV0098I |                     1 | 000600020003 |                     1 | 2022-01-20 09:08:00 |            4 |
|  5 |            5 | Chandu     | 020201010104   |                    1 | ICIC0000101 |                     1 | FGTHY8989D |                     1 | 000700020003 |                     1 | 2028-01-20 09:08:00 |            5 |
+----+--------------+------------+----------------+----------------------+-------------+-----------------------+------------+-----------------------+--------------+-----------------------+---------------------+--------------+
5 rows in set (0.00 sec)


