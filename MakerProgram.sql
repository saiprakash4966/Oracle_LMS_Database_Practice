
mysql>  CREATE TABLE Maker_Program(Id int PRIMARY KEY,Program_Name VARCHAR(50)not null,Program_Type VARCHAR(50) not null,Program_Link VARCHAR(50) not null,Tech_stack_id int not null,tech_type_id int not null,is_Program_verified boolean,Description VARCHAR(100) not null,Status VARCHAR(50),creator_stamp datetime,creator_user VARCHAR(50) not null, FOREIGN KEY (tech_stack_id)       REFERENCES tech_stack(id)       ON UPDATE CASCADE       ON DELETE CASCADE,       FOREIGN KEY (tech_type_id)       REFERENCES tech_type(id)       ON UPDATE CASCADE       ON DELETE CASCADE);
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT into maker_program values(1,'Core Java','RFP','JAVAtpoint',111,1,1,'SoftwareDeveloper','Inprogress','24-01-20 03:04:00',"sai");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into maker_program values(2,'Python','CFP','PythonTutorial',222,2,1,'SoftwareEngineer','Inprogress','25-01-20 05:02:00','manoj');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into maker_program values(3,'Core Java','CFP','Javautorial',333,3,1,'AnalystProgrammer','Inprogress','10-01-20 05:02:00','nag');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into maker_program values(4,'HTML','RFP','HTMLTutorial',444,4,1,'ProjectEngineer','Inprogress','11-01-20 05:02:00','praveen');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into maker_program values(5,'ReactJS','CFP','Reacttutorial',555,5,1,'TestEngineer','Inprogress','12-01-20 05:02:00','raghu');
Query OK, 1 row affected (0.01 sec)

mysql> select * from maker_program;
+----+--------------+--------------+----------------+---------------+--------------+---------------------+-------------------+------------+---------------------+--------------+
| Id | Program_Name | Program_Type | Program_Link   | Tech_stack_id | tech_type_id | is_Program_verified | Description       | Status     | creator_stamp       | creator_user |
+----+--------------+--------------+----------------+---------------+--------------+---------------------+-------------------+------------+---------------------+--------------+
|  1 | Core Java    | RFP          | JAVAtpoint     |           111 |            1 |                   1 | SoftwareDeveloper | Inprogress | 2024-01-20 03:04:00 | sai          |
|  2 | Python       | CFP          | PythonTutorial |           222 |            2 |                   1 | SoftwareEngineer  | Inprogress | 2025-01-20 05:02:00 | manoj        |
|  3 | Core Java    | CFP          | Javautorial    |           333 |            3 |                   1 | AnalystProgrammer | Inprogress | 2010-01-20 05:02:00 | nag          |
|  4 | HTML         | RFP          | HTMLTutorial   |           444 |            4 |                   1 | ProjectEngineer   | Inprogress | 2011-01-20 05:02:00 | praveen      |
|  5 | ReactJS      | CFP          | Reacttutorial  |           555 |            5 |                   1 | TestEngineer      | Inprogress | 2012-01-20 05:02:00 | raghu        |
+----+--------------+--------------+----------------+---------------+--------------+---------------------+-------------------+------------+---------------------+--------------+
5 rows in set (0.00 sec)
