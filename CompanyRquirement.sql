

CREATE TABLE company_requirement
    (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
      company_id INT(10),
      requested_month DATETIME,
      city VARCHAR(100),
      is_doc_verification ENUM('yes', 'no'),
      requirement_doc_path VARCHAR(1024),
      no_of_engg INT,
      tech_stack_id INT(10),
      tech_type_id INT(10),
      maker_program_id INT(10),
      lead_id INT(10),
      ideation_engg_id INT(10),
      buddy_engg_id INT(10),
      special_remark VARCHAR(200),
      status ENUM('active', 'inactive'),
      creator_stamp DATETIME NOT NULL,
      creator_user VARCHAR(100),
       FOREIGN KEY (company_id) REFERENCES company(id)
       ON UPDATE CASCADE ON DELETE CASCADE,
       FOREIGN KEY (tech_stack_id) REFERENCES tech_stack(id)
       ON UPDATE CASCADE ON DELETE CASCADE,
       FOREIGN KEY (tech_type_id) REFERENCES tech_type(id)
       ON UPDATE CASCADE ON DELETE CASCADE,
       FOREIGN KEY (maker_program_id) REFERENCES maker_program(id)
       ON UPDATE CASCADE ON DELETE CASCADE,
       FOREIGN KEY (lead_id) REFERENCES mentor(id)
       ON UPDATE CASCADE ON DELETE CASCADE,
       FOREIGN KEY (ideation_engg_id) REFERENCES mentor(id)
       ON UPDATE CASCADE ON DELETE CASCADE,
       FOREIGN KEY (buddy_engg_id) REFERENCES mentor(id)
       ON UPDATE CASCADE ON DELETE CASCADE
    );
INSERT into company_requirement values(1,1,'12-01-18 01:00:00','Mumbai','yes','www.bl.com',200,111,1,1,1,1,5,'good','active','09-09-19 02:00:00','ram');
INSERT into company_requirement values(2,2,'03-03-20 01:00:00','Bangalore','yes','www.bl.com',300,222,2,2,2,3,5,'good','active','19-09-19 03:00:00','pinky');
INSERT into company_requirement values(3,3,'24-07-18 01:00:00','Hyderabad','yes','www.bl.com',400,333,3,3,3,5,5,'good','active','29-09-19 02:00:00','manoj');
INSERT into company_requirement values(4,4,'25-07-18 01:00:00','Pune','yes','www.bl.com',700,444,4,3,3,4,5,'good','active','29-09-19 02:00:00','manoj');
INSERT into company_requirement values(5,5,'26-07-18 01:00:00','chennai','yes','www.bl.com',800,555,5,3,3,5,5,'good','active','29-09-19 02:00:00','manoj');


mysql> select * from company_requirement;
+----+------------+---------------------+-----------+---------------------+----------------------+------------+---------------+--------------+------------------+---------+------------------+---------------+----------------+--------+---------------------+--------------+
| id | company_id | requested_month     | city      | is_doc_verification | requirement_doc_path | no_of_engg | tech_stack_id | tech_type_id | maker_program_id | lead_id | ideation_engg_id | buddy_engg_id | special_remark | status | creator_stamp       | creator_user |
+----+------------+---------------------+-----------+---------------------+----------------------+------------+---------------+--------------+------------------+---------+------------------+---------------+----------------+--------+---------------------+--------------+
|  1 |          1 | 2012-01-18 01:00:00 | Mumbai    | yes                 | www.bl.com           |        200 |           111 |            1 |                1 |       1 |                1 |             5 | good           | active | 2009-09-19 02:00:00 | ram          |
|  2 |          2 | 2003-03-20 01:00:00 | Bangalore | yes                 | www.bl.com           |        300 |           222 |            2 |                2 |       2 |                3 |             5 | good           | active | 2019-09-19 03:00:00 | pinky        |
|  3 |          3 | 2024-07-18 01:00:00 | Hyderabad | yes                 | www.bl.com           |        400 |           333 |            3 |                3 |       3 |                5 |             5 | good           | active | 2029-09-19 02:00:00 | manoj        |
|  4 |          4 | 2025-07-18 01:00:00 | Pune      | yes                 | www.bl.com           |        700 |           444 |            4 |                3 |       3 |                4 |             5 | good           | active | 2029-09-19 02:00:00 | manoj        |
|  5 |          5 | 2026-07-18 01:00:00 | chennai   | yes                 | www.bl.com           |        800 |           555 |            5 |                3 |       3 |                5 |             5 | good           | active | 2029-09-19 02:00:00 | manoj        |
+----+------------+---------------------+-----------+---------------------+----------------------+------------+---------------+--------------+------------------+---------+------------------+---------------+----------------+--------+---------------------+--------------+
5 rows in set (0.00 sec)
