

mysql> create table Hired_Candidate(Id int PRIMARY KEY,First_Name VARCHAR(50) not null,Middle_Name VARCHAR(50) not null,Last_Name VARCHAR(50) not null,EmailID VARCHAR(50) not null,Hired_City VARCHAR(50) not null,Degree VARCHAR(50),HiredDate date,Mobile_Number VARCHAR(50) not null,Permanent_Pincode VARCHAR(50) not null,HiredLab VARCHAR(50) not null,Attitude VARCHAR(50) not null,Communication_Remark VARCHAR(50),Knowledge_Remark VARCHAR(50),Aggregate_Remark VARCHAR(50),Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc hired_Candidate;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| Id                   | int         | NO   | PRI | NULL    |       |
| First_Name           | varchar(50) | NO   |     | NULL    |       |
| Middle_Name          | varchar(50) | NO   |     | NULL    |       |
| Last_Name            | varchar(50) | NO   |     | NULL    |       |
| EmailID              | varchar(50) | NO   |     | NULL    |       |
| Hired_City           | varchar(50) | NO   |     | NULL    |       |
| Degree               | varchar(50) | YES  |     | NULL    |       |
| HiredDate            | date        | YES  |     | NULL    |       |
| Mobile_Number        | varchar(50) | NO   |     | NULL    |       |
| Permanent_Pincode    | varchar(50) | NO   |     | NULL    |       |
| HiredLab             | varchar(50) | NO   |     | NULL    |       |
| Attitude             | varchar(50) | NO   |     | NULL    |       |
| Communication_Remark | varchar(50) | YES  |     | NULL    |       |
| Knowledge_Remark     | varchar(50) | YES  |     | NULL    |       |
| Aggregate_Remark     | varchar(50) | YES  |     | NULL    |       |
| Status               | varchar(50) | YES  |     | NULL    |       |
| creator_stamp        | datetime    | YES  |     | NULL    |       |
| creator_user         | int         | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
18 rows in set (0.01 sec)


mysql> insert into hired_candidate values(1,'Sai','Prakash','Beemari','Sai@gmail.com','Karimnagar','Btech','24-01-22','9090908099','505001','Yes','good','good','good','good','accepted','25-02-22',1);

mysql> insert into hired_candidate values(2,'Manoj','Kumar','Gadham','Manoj@gmail.com','Karimnagar','Mtech','25-01-22','8090908099','505001','Yes','good','bad','good','good','accepted','26-02-22',2);

mysql> insert into hired_candidate values(3,'Raghu','chandra','vangala','Manoj@gmail.com','Karimnagar','Mtech','25-01-22','8090908090','505001','Yes','good','bad','good','good','accepted','27-02-22',3),(4,'Chandu','reddy','','chandu@gmail.com','Karimnagar','Mtech','25-01-22','8090908089','505001','Yes','good','bad','good','good','rejected','28-02-22',4),
(5,'Anji','kurma','rajipeta','anji@gmail.com','Karimnagar','Btech','27-01-22','8090908096','505001','Yes','good','bad','bad','good','accepted','29-03-22',5);