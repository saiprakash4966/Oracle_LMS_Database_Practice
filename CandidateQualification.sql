

mysql> create table Candidate_Qualification(Id int PRIMARY KEY,Candidate_Id int not null,Diploma VARCHAR(50) not null,degree_Name VARCHAR(50) not null,is_degreeName_Verified boolean,employee_descipline VARCHAR(50) not null,is_employee_descipline_verified boolean,passing_year datetime,is_Passingyear_Verified boolean,aggr_is_passingyear_verified boolean,final_year_per_is_final_year_per_verified boolean,training_institue VARCHAR(50) not null,is_training_institute_verified boolean,training_duration_month datetime,is_training_duration_month_verified boolean,other_training VARCHAR(50),is_Other_training_verified boolean,creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc candidate_qualification;
+-------------------------------------------+-------------+------+-----+---------+-------+
| Field                                     | Type        | Null | Key | Default | Extra |
+-------------------------------------------+-------------+------+-----+---------+-------+
| Id                                        | int         | NO   | PRI | NULL    |       |
| Candidate_Id                              | int         | NO   |     | NULL    |       |
| Diploma                                   | varchar(50) | NO   |     | NULL    |       |
| degree_Name                               | varchar(50) | NO   |     | NULL    |       |
| is_degreeName_Verified                    | tinyint(1)  | YES  |     | NULL    |       |
| employee_descipline                       | varchar(50) | NO   |     | NULL    |       |
| is_employee_descipline_verified           | tinyint(1)  | YES  |     | NULL    |       |
| passing_year                              | datetime    | YES  |     | NULL    |       |
| is_Passingyear_Verified                   | tinyint(1)  | YES  |     | NULL    |       |
| aggr_is_passingyear_verified              | tinyint(1)  | YES  |     | NULL    |       |
| final_year_per_is_final_year_per_verified | tinyint(1)  | YES  |     | NULL    |       |
| training_institue                         | varchar(50) | NO   |     | NULL    |       |
| is_training_institute_verified            | tinyint(1)  | YES  |     | NULL    |       |
| training_duration_month                   | datetime    | YES  |     | NULL    |       |
| is_training_duration_month_verified       | tinyint(1)  | YES  |     | NULL    |       |
| other_training                            | varchar(50) | YES  |     | NULL    |       |'
| is_Other_training_verified                | tinyint(1)  | YES  |     | NULL    |       |
| creator_stamp                             | datetime    | YES  |     | NULL    |       |
| creator_user                              | int         | NO   |     | NULL    |       |
+-------------------------------------------+-------------+------+-----+---------+-------+
19 rows in set (0.00 sec)


mysql> insert into candidate_qualification values(1,270,'Yes','No',1,'good',1,'06-01-10 09:08:07',1,1,1,'Qspider',1,'20-02-09 01:08:00',1,'No',1,'01-05-11 05:06:00',1);

mysql> insert into candidate_qualification values(2,271,'No','Btech',1,'good',1,'07-01-10 06:08:07',1,1,1,'SAP',1,'21-02-09 02:08:00',1,'No',1,'01-05-11 05:06:00',2),
(3,272,'No','Btech',1,'good',1,'08-01-10 06:08:07',1,1,1,'SAP',1,'22-02-09 02:08:00',1,'No',1,'02-05-11 05:06:00',3),
(4,273,'Yes','No',1,'good',1,'09-01-10 06:08:07',1,1,1,'IT',1,'19-02-09 02:08:00',1,'No',1,'09-05-11 05:06:00',4),
(5,274,'No','Btech',1,'good',1,'11-01-10 06:08:07',1,1,1,'VLSI',1,'10-02-09 02:08:00',1,'No',1,'07-05-11 05:06:00',5);



mysql> select * from candidate_qualification;
+----+--------------+---------+-------------+------------------------+---------------------+---------------------------------+---------------------+-------------------------+------------------------------+-------------------------------------------+-------------------+--------------------------------+-------------------------+-------------------------------------+----------------+----------------------------+---------------------+--------------+
| Id | Candidate_Id | Diploma | degree_Name | is_degreeName_Verified | employee_descipline | is_employee_descipline_verified | passing_year        | is_Passingyear_Verified | aggr_is_passingyear_verified | final_year_per_is_final_year_per_verified | training_institue | is_training_institute_verified | training_duration_month | is_training_duration_month_verified | other_training | is_Other_training_verified | creator_stamp       | creator_user |
+----+--------------+---------+-------------+------------------------+---------------------+---------------------------------+---------------------+-------------------------+------------------------------+-------------------------------------------+-------------------+--------------------------------+-------------------------+-------------------------------------+----------------+----------------------------+---------------------+--------------+
|  1 |          270 | Yes     | No          |                      1 | good                |                               1 | 2006-01-10 09:08:07 |                       1 |                            1 |                                         1 | Qspider           |                              1 | 2020-02-09 01:08:00     |                                   1 | No             |                          1 | 2001-05-11 05:06:00 |            1 |
|  2 |          271 | No      | Btech       |                      1 | good                |                               1 | 2007-01-10 06:08:07 |                       1 |                            1 |                                         1 | SAP               |                              1 | 2021-02-09 02:08:00     |                                   1 | No             |                          1 | 2001-05-11 05:06:00 |            2 |
|  3 |          272 | No      | Btech       |                      1 | good                |                               1 | 2008-01-10 06:08:07 |                       1 |                            1 |                                         1 | SAP               |                              1 | 2022-02-09 02:08:00     |                                   1 | No             |                          1 | 2002-05-11 05:06:00 |            3 |
|  4 |          273 | Yes     | No          |                      1 | good                |                               1 | 2009-01-10 06:08:07 |                       1 |                            1 |                                         1 | IT                |                              1 | 2019-02-09 02:08:00     |                                   1 | No             |                          1 | 2009-05-11 05:06:00 |            4 |
|  5 |          274 | No      | Btech       |                      1 | good                |                               1 | 2011-01-10 06:08:07 |                       1 |                            1 |                                         1 | VLSI              |                              1 | 2010-02-09 02:08:00     |                                   1 | No             |                          1 | 2007-05-11 05:06:00 |            5 |
+----+--------------+---------+-------------+------------------------+---------------------+---------------------------------+---------------------+-------------------------+------------------------------+-------------------------------------------+-------------------+--------------------------------+-------------------------+-------------------------------------+----------------+----------------------------+---------------------+--------------+
5 rows in set (0.00 sec)

