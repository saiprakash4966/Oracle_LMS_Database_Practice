

mysql> desc  Company_Requirement;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| Id                   | int         | NO   | PRI | NULL    |       |
| Company_Id           | int         | NO   |     | NULL    |       |
| Requested_Month      | datetime    | YES  |     | NULL    |       |
| City                 | varchar(50) | NO   |     | NULL    |       |
| is_doc_verification  | tinyint(1)  | YES  |     | NULL    |       |
| requirement_doc_path | varchar(50) | YES  |     | NULL    |       |
| no_of_engg           | int         | NO   |     | NULL    |       |
| tech_stack_id        | int         | NO   |     | NULL    |       |
| tech_type_id         | int         | NO   |     | NULL    |       |
| maker_program_id     | int         | NO   |     | NULL    |       |
| lead_id              | int         | NO   |     | NULL    |       |
| Ideation_engg_id     | int         | NO   |     | NULL    |       |
| buddy_engg_id        | int         | NO   |     | NULL    |       |
| special_remarkStatus | varchar(50) | YES  |     | NULL    |       |
| creator_stamp        | datetime    | YES  |     | NULL    |       |
| creator_user         | int         | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
16 rows in set (0.00 sec)

mysql> insert into company_requirement values(1,404,'02-01-19 01:00:00','Mumbai',1,'www.bl.com',200,1,1,1,1,10,20,'good','09-09-19 02:00:00',1),
(2,405,'03-01-19 01:00:00','Bangalore',1,'www.bl.com',100,2,2,2,2,20,40,'good','19-09-19 03:00:00',2),
(3,406,'04-01-19 01:00:00','Hyderabad',1,'www.bl.com',300,1,1,1,1,30,60,'good','29-09-19 02:00:00',3),
(4,407,'05-01-19 01:00:00','Pune',1,'www.bl.com',400,1,1,1,1,40,80,'good','19-09-19 05:00:00',4),
(5,408,'06-01-19 01:00:00','Mumbai',1,'www.bl.com',500,1,1,1,1,50,90,'good','29-09-19 02:00:00',5);




mysql> select * from company_requirement;
+----+------------+---------------------+-----------+---------------------+----------------------+------------+---------------+--------------+------------------+---------+------------------+---------------+----------------------+---------------------+--------------+
| Id | Company_Id | Requested_Month     | City      | is_doc_verification | requirement_doc_path | no_of_engg | tech_stack_id | tech_type_id | maker_program_id | lead_id | Ideation_engg_id | buddy_engg_id | special_remarkStatus | creator_stamp       | creator_user |
+----+------------+---------------------+-----------+---------------------+----------------------+------------+---------------+--------------+------------------+---------+------------------+---------------+----------------------+---------------------+--------------+
|  1 |        404 | 2002-01-19 01:00:00 | Mumbai    |                   1 | www.bl.com           |        200 |             1 |            1 |                1 |       1 |               10 |            20 | good                 | 2009-09-19 02:00:00 |            1 |
|  2 |        405 | 2003-01-19 01:00:00 | Bangalore |                   1 | www.bl.com           |        100 |             2 |            2 |                2 |       2 |               20 |            40 | good                 | 2019-09-19 03:00:00 |            2 |
|  3 |        406 | 2004-01-19 01:00:00 | Hyderabad |                   1 | www.bl.com           |        300 |             1 |            1 |                1 |       1 |               30 |            60 | good                 | 2029-09-19 02:00:00 |            3 |
|  4 |        407 | 2005-01-19 01:00:00 | Pune      |                   1 | www.bl.com           |        400 |             1 |            1 |                1 |       1 |               40 |            80 | good                 | 2019-09-19 05:00:00 |            4 |
|  5 |        408 | 2006-01-19 01:00:00 | Mumbai    |                   1 | www.bl.com           |        500 |             1 |            1 |                1 |       1 |               50 |            90 | good                 | 2029-09-19 02:00:00 |            5 |
+----+------------+---------------------+-----------+---------------------+----------------------+------------+---------------+--------------+------------------+---------+------------------+---------------+----------------------+---------------------+--------------+
5 rows in set (0.00 sec)