

mysql> create table Fellowship_Candidate(Id int PRIMARY KEY,CIC_ID int not null,First_Name VARCHAR(50) not null,Middle_Name VARCHAR(50) not null,Last_Name VARCHAR(50) not null,EmailID VARCHAR(50) not null,Hired_City VARCHAR(50) not null,Degree VARCHAR(50),HiredDate date,Mobile_Number VARCHAR(50) not null,Permanent_Pincode VARCHAR(50) not null,HiredLab VARCHAR(50) not null,Attitude VARCHAR(50) not null,Communication_Remark VARCHAR(50),Knowledge_Remark VARCHAR(50),Aggregate_Remark VARCHAR(50),creator_stamp datetime,creator_user int not null,Birth_Date datetime not null,isBirthhDateVerified boolean,Parent_Name VARCHAR(50) not null,Parent_Occupation VARCHAR(50) not null ,ParentMobile_Number VARCHAR(50) not null,Parents_AnnualSalary double not null,Local_Address VARCHAR(50) not null,Permanent_Address VARCHAR(50) not null,Photo_Path blob,Joining_Date datetime not null,Candidate_Status VARCHAR(50) not null,Personal_Information VARCHAR(50),Bank_information VARCHAR(50),Educational_Information VARCHAR(50),Document_Status VARCHAR(50),Remark VARCHAR(50));
Query OK, 0 rows affected (0.08 sec)

mysql> desc fellowship_candidate;
+-------------------------+-------------+------+-----+---------+-------+
| Field                   | Type        | Null | Key | Default | Extra |
+-------------------------+-------------+------+-----+---------+-------+
| Id                      | int         | NO   | PRI | NULL    |       |
| CIC_ID                  | int         | NO   |     | NULL    |       |
| First_Name              | varchar(50) | NO   |     | NULL    |       |
| Middle_Name             | varchar(50) | NO   |     | NULL    |       |
| Last_Name               | varchar(50) | NO   |     | NULL    |       |
| EmailID                 | varchar(50) | NO   |     | NULL    |       |
| Hired_City              | varchar(50) | NO   |     | NULL    |       |
| Degree                  | varchar(50) | YES  |     | NULL    |       |
| HiredDate               | date        | YES  |     | NULL    |       |
| Mobile_Number           | varchar(50) | NO   |     | NULL    |       |
| Permanent_Pincode       | varchar(50) | NO   |     | NULL    |       |
| HiredLab                | varchar(50) | NO   |     | NULL    |       |
| Attitude                | varchar(50) | NO   |     | NULL    |       |
| Communication_Remark    | varchar(50) | YES  |     | NULL    |       |
| Knowledge_Remark        | varchar(50) | YES  |     | NULL    |       |
| Aggregate_Remark        | varchar(50) | YES  |     | NULL    |       |
| creator_stamp           | datetime    | YES  |     | NULL    |       |
| creator_user            | int         | NO   |     | NULL    |       |
| Birth_Date              | datetime    | NO   |     | NULL    |       |
| isBirthhDateVerified    | tinyint(1)  | YES  |     | NULL    |       |
| Parent_Name             | varchar(50) | NO   |     | NULL    |       |
| Parent_Occupation       | varchar(50) | NO   |     | NULL    |       |
| ParentMobile_Number     | varchar(50) | NO   |     | NULL    |       |
| Parents_AnnualSalary    | double      | NO   |     | NULL    |       |
| Local_Address           | varchar(50) | NO   |     | NULL    |       |
| Permanent_Address       | varchar(50) | NO   |     | NULL    |       |
| Photo_Path              | blob        | YES  |     | NULL    |       |
| Joining_Date            | datetime    | NO   |     | NULL    |       |
| Candidate_Status        | varchar(50) | NO   |     | NULL    |       |
| Personal_Information    | varchar(50) | YES  |     | NULL    |       |
| Bank_information        | varchar(50) | YES  |     | NULL    |       |
| Educational_Information | varchar(50) | YES  |     | NULL    |       |
| Document_Status         | varchar(50) | YES  |     | NULL    |       |
| Remark                  | varchar(50) | YES  |     | NULL    |       |
+-------------------------+-------------+------+-----+---------+-------+
34 rows in set (0.00 sec)


mysql>  insert into fellowship_candidate values(1,0000000001,'Sai','Prakash','Beemari','Sai@gmail.com','Karimnagar','Btech','24-01-22','9090908099','505001','Yes','good','good','good','good','25-02-22 09:05:00',1,'30-01-20 08:00:00',1,'Nagaraju','Chef','9080907060',20000,'Ramngar','Karimnagar','Sai.jpg','25-01-22 07:09:00','NA','Yes','ICICI','Done','Approved','No'),
 
mysql> insert into fellowship_candidate values(2,0000000002,'Manoj','Kumar','Gadham','Manoj@gmail.com','Karimnagar','Btech','25-01-22','9090908095','505001','Yes','good','bad','good','good','27-02-22 08:05:00',1,'22-01-20 06:00:00',1,'Raju','Farmer','9080907070',40000,'Rampur','Karimnagar','Manoj.jpg','17-02-22 07:09:00','NA','Yes','AXIS','Done','Approved','No'),(3,0000000003,'Raghu','chandra','Gattu','Raghu@gmail.com','Karimnagar','Btech','26-01-22','9090908096','505001','Yes','good','bad','good','good','28-02-22 07:05:00',1,'23-01-20 05:00:00',1,'Shankar','Driver','9080907080',60000,'MmThota','Karimnagar','Raghu.jpg','18-02-22 07:09:00','NA','Yes','HDFC','Done','Approved','No'),(4,0000000004,'Chandu','Reddy','Vangala','Chandu@gmail.com','Karimnagar','Btech','27-01-22','9090908097','505001','Yes','good','good','good','good','20-02-22 06:05:00',1,'25-01-20 04:00:00',1,'Sreenu','Carpenter','9080907099',80000,'Vidyanagar','Karimnagar','Chandu.jpg','19-05-22 07:09:00','NA','Yes','ICICI','Done','Approved','No'),(5,0000000005,'Anji','Rajipeta','Kurma','Anji@gmail.com','Karimnagar','Btech','28-01-22','9090908098','505001','Yes','good','good','good','good','20-02-22 07:09:00',1,'27-01-20 09:00:00',1,'Laxman','Painter','9080907000',90000,'Kaman','Karimnagar','Anji.jpg','20-01-22 07:09:00','NA','Yes','CANARA','Done','Approved','No');


mysql> select * from fellowship_candidate;
+----+--------+------------+-------------+-----------+------------------+------------+--------+------------+---------------+-------------------+----------+----------+----------------------+------------------+------------------+---------------------+--------------+---------------------+----------------------+-------------+-------------------+---------------------+----------------------+---------------+-------------------+------------------------+---------------------+------------------+----------------------+------------------+-------------------------+-----------------+--------+
| Id | CIC_ID | First_Name | Middle_Name | Last_Name | EmailID          | Hired_City | Degree | HiredDate  | Mobile_Number | Permanent_Pincode | HiredLab | Attitude | Communication_Remark | Knowledge_Remark | Aggregate_Remark | creator_stamp       | creator_user | Birth_Date          | isBirthhDateVerified | Parent_Name | Parent_Occupation | ParentMobile_Number | Parents_AnnualSalary | Local_Address | Permanent_Address | Photo_Path             | Joining_Date        | Candidate_Status | Personal_Information | Bank_information | Educational_Information | Document_Status | Remark |
+----+--------+------------+-------------+-----------+------------------+------------+--------+------------+---------------+-------------------+----------+----------+----------------------+------------------+------------------+---------------------+--------------+---------------------+----------------------+-------------+-------------------+---------------------+----------------------+---------------+-------------------+------------------------+---------------------+------------------+----------------------+------------------+-------------------------+-----------------+--------+
|  1 |      1 | Sai        | Prakash     | Beemari   | Sai@gmail.com    | Karimnagar | Btech  | 2024-01-22 | 9090908099    | 505001            | Yes      | good     | good                 | good             | good             | 2025-02-22 09:05:00 |            1 | 2030-01-20 08:00:00 |                    1 | Nagaraju    | Chef              | 9080907060          |                20000 | Ramngar       | Karimnagar        | 0x5361692E6A7067       | 2025-01-22 07:09:00 | NA               | Yes                  | ICICI            | Done                    | Approved        | No     |
|  2 |      2 | Manoj      | Kumar       | Gadham    | Manoj@gmail.com  | Karimnagar | Btech  | 2025-01-22 | 9090908095    | 505001            | Yes      | good     | bad                  | good             | good             | 2027-02-22 08:05:00 |            1 | 2022-01-20 06:00:00 |                    1 | Raju        | Farmer            | 9080907070          |                40000 | Rampur        | Karimnagar        | 0x4D616E6F6A2E6A7067   | 2017-02-22 07:09:00 | NA               | Yes                  | AXIS             | Done                    | Approved        | No     |
|  3 |      3 | Raghu      | chandra     | Gattu     | Raghu@gmail.com  | Karimnagar | Btech  | 2026-01-22 | 9090908096    | 505001            | Yes      | good     | bad                  | good             | good             | 2028-02-22 07:05:00 |            1 | 2023-01-20 05:00:00 |                    1 | Shankar     | Driver            | 9080907080          |                60000 | MmThota       | Karimnagar        | 0x52616768752E6A7067   | 2018-02-22 07:09:00 | NA               | Yes                  | HDFC             | Done                    | Approved        | No     |
|  4 |      4 | Chandu     | Reddy       | Vangala   | Chandu@gmail.com | Karimnagar | Btech  | 2027-01-22 | 9090908097    | 505001            | Yes      | good     | good                 | good             | good             | 2020-02-22 06:05:00 |            1 | 2025-01-20 04:00:00 |                    1 | Sreenu      | Carpenter         | 9080907099          |                80000 | Vidyanagar    | Karimnagar        | 0x4368616E64752E6A7067 | 2019-05-22 07:09:00 | NA               | Yes                  | ICICI            | Done                    | Approved        | No     |
|  5 |      5 | Anji       | Rajipeta    | Kurma     | Anji@gmail.com   | Karimnagar | Btech  | 2028-01-22 | 9090908098    | 505001            | Yes      | good     | good                 | good             | good             | 2020-02-22 07:09:00 |            1 | 2027-01-20 09:00:00 |                    1 | Laxman      | Painter           | 9080907000          |                90000 | Kaman         | Karimnagar        | 0x416E6A692E6A7067     | 2020-01-22 07:09:00 | NA               | Yes                  | CANARA           | Done                    | Approved        | No     |
+----+--------+------------+-------------+-----------+------------------+------------+--------+------------+---------------+-------------------+----------+----------+----------------------+------------------+------------------+---------------------+--------------+---------------------+----------------------+-------------+-------------------+---------------------+----------------------+---------------+-------------------+------------------------+---------------------+------------------+----------------------+------------------+-------------------------+-----------------+--------+
5 rows in set (0.00 sec)




