

mysql> CREATE TABLE tech_stack    ( id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,      tech_name VARCHAR(100),      image_path VARCHAR(1024),      framework VARCHAR(100),      cur_status VARCHAR(50),      creator_stamp DATETIME NOT NULL,      creator_user VARCHAR(100)    );
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> INSERT INTO tech_stack values(111, 'Core Java', "https://docs.google.com/document/d/JlfQg7A3FezW2XeRMbOVMV2pedmcZyj4/gt", 'SpringBoot', 'Good', '12-05-20 14:34:07', 'sai');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO tech_stack values(222, 'python', "https://docs.google.com/document/d/JlfQgVMV2pedm7A3FezW2XeRMbOcZyj4/gt", 'python', 'Good', '16-02-21 11:04:07', 'prakash');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO tech_stack values(333, 'Core Java', "https://docs.google.com/document/d/eRMbOVMV2pJlfQg7A3FezW2XedmcZyj4/gt", 'SpringBoot', 'Good', '14-07-22 17:20:01', 'anil');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO tech_stack values(444, 'Php', "https://docs.google.com/document/d/JlfQg2pedm7A3FezW2XeRMbOVMVcZyj4/gt", 'php', 'Good', '10-07-20 14:34:07', 'vijay');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO tech_stack values(555, 'Not assigned', "https://docs.google.com/document/d/JlfVMV2pedmcQg7A3FezW2XeRMbOZyj4/gt", 'SpringBoot', 'Bad', '05-05-21 11:34:07', 'manoj');
Query OK, 1 row affected (0.01 sec)

mysql> select * from tech_stack;
+-----+--------------+------------------------------------------------------------------------+------------+------------+---------------------+--------------+
| id  | tech_name    | image_path                                                             | framework  | cur_status | creator_stamp       | creator_user |
+-----+--------------+------------------------------------------------------------------------+------------+------------+---------------------+--------------+
| 111 | Core Java    | https://docs.google.com/document/d/JlfQg7A3FezW2XeRMbOVMV2pedmcZyj4/gt | SpringBoot | Good       | 2012-05-20 14:34:07 | sai          |
| 222 | python       | https://docs.google.com/document/d/JlfQgVMV2pedm7A3FezW2XeRMbOcZyj4/gt | python     | Good       | 2016-02-21 11:04:07 | prakash      |
| 333 | Core Java    | https://docs.google.com/document/d/eRMbOVMV2pJlfQg7A3FezW2XedmcZyj4/gt | SpringBoot | Good       | 2014-07-22 17:20:01 | anil         |
| 444 | Php          | https://docs.google.com/document/d/JlfQg2pedm7A3FezW2XeRMbOVMVcZyj4/gt | php        | Good       | 2010-07-20 14:34:07 | vijay        |
| 555 | Not assigned | https://docs.google.com/document/d/JlfVMV2pedmcQg7A3FezW2XeRMbOZyj4/gt | SpringBoot | Bad        | 2005-05-21 11:34:07 | manoj        |
+-----+--------------+------------------------------------------------------------------------+------------+------------+---------------------+--------------+
5 rows in set (0.00 sec)
