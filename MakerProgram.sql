

mysql> create table Maker_Program(Id int PRIMARY KEY,Program_Name VARCHAR(50)not null,Program_Type VARCHAR(50) not null,Program_Link VARCHAR(50) not null,Tech_stack_id int not null,tech_type_id int not null,is_Program_approved boolean,Description VARCHAR(100) not null,Status VARCHAR(50),creator_stamp datetime,creator_user int not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc Maker_Program;
+---------------------+--------------+------+-----+---------+-------+
| Field               | Type         | Null | Key | Default | Extra |
+---------------------+--------------+------+-----+---------+-------+
| Id                  | int          | NO   | PRI | NULL    |       |
| Program_Name        | varchar(50)  | NO   |     | NULL    |       |
| Program_Type        | varchar(50)  | NO   |     | NULL    |       |
| Program_Link        | varchar(50)  | NO   |     | NULL    |       |
| Tech_stack_id       | int          | NO   |     | NULL    |       |
| tech_type_id        | int          | NO   |     | NULL    |       |
| is_Program_approved | tinyint(1)   | YES  |     | NULL    |       |
| Description         | varchar(100) | NO   |     | NULL    |       |
| Status              | varchar(50)  | YES  |     | NULL    |       |
| creator_stamp       | datetime     | YES  |     | NULL    |       |
| creator_user        | int          | NO   |     | NULL    |       |
+---------------------+--------------+------+-----+---------+-------+
11 rows in set (0.01 sec)

mysql> insert into maker_program values(1,'JavaFullstack','RFP','JAVAtpoint',10,44,1,'SoftwareDeveloper','Inprogress','24-01-20 03:04:00',1);

mysql> insert into maker_program values(2,'Python','CFP','PythonTutorial',20,24,1,'SoftwareEngineer','Inprogress','25-01-20 05:02:00',2),
(3,'SQL','CFP','SQLTutorial',50,27,1,'AnalystProgrammer','Inprogress','10-01-20 05:02:00',3),
(4,'HTML','RFP','HTMLTutorial',70,28,1,'ProjectEngineer','Inprogress','11-01-20 05:02:00',4),
(5,'Angular','CFP','aAngulartutorial',80,25,1,'TestEngineer','Inprogress','12-01-20 05:02:00',5);


mysql> select * from maker_program;
+----+---------------+--------------+------------------+---------------+--------------+---------------------+-------------------+------------+---------------------+--------------+
| Id | Program_Name  | Program_Type | Program_Link     | Tech_stack_id | tech_type_id | is_Program_approved | Description       | Status     | creator_stamp       | creator_user |
+----+---------------+--------------+------------------+---------------+--------------+---------------------+-------------------+------------+---------------------+--------------+
|  1 | JavaFullstack | RFP          | JAVAtpoint       |            10 |           44 |                   1 | SoftwareDeveloper | Inprogress | 2024-01-20 03:04:00 |            1 |
|  2 | Python        | CFP          | PythonTutorial   |            20 |           24 |                   1 | SoftwareEngineer  | Inprogress | 2025-01-20 05:02:00 |            2 |
|  3 | SQL           | CFP          | SQLTutorial      |            50 |           27 |                   1 | AnalystProgrammer | Inprogress | 2010-01-20 05:02:00 |            3 |
|  4 | HTML          | RFP          | HTMLTutorial     |            70 |           28 |                   1 | ProjectEngineer   | Inprogress | 2011-01-20 05:02:00 |            4 |
|  5 | Angular       | CFP          | aAngulartutorial |            80 |           25 |                   1 | TestEngineer      | Inprogress | 2012-01-20 05:02:00 |            5 |
+----+---------------+--------------+------------------+---------------+--------------+---------------------+-------------------+------------+---------------------+--------------+
5 rows in set (0.00 sec)