

//QUERY1 :- find all candidate having java technology

mysql> select id, creator_user,program_Name from maker_program where program_Name='core Java';
+----+--------------+--------------+
| id | creator_user | program_Name |
+----+--------------+--------------+
|  1 | sai          | Core Java    |
|  3 | nag          | Core Java    |
+----+--------------+--------------+
2 rows in set (0.00 sec)




//QUERY2 :- find all mentors and ideations have java technology

mysql> select id,creator_user,tech_name  from tech_stack where tech_name='core java';
+-----+--------------+-----------+
| id  | creator_user | tech_name |
+-----+--------------+-----------+
| 111 | sai          | Core Java |
| 333 | anil         | Core Java |
+-----+--------------+-----------+
2 rows in set (0.00 sec)




//QUERY7 :- find name of candidate which did not assign technology

mysql> select id,creator_user,tech_Name from tech_stack  where  tech_Name='Not Assigned';
+-----+--------------+--------------+
| id  | creator_user | tech_Name    |
+-----+--------------+--------------+
| 555 | manoj        | Not assigned |
+-----+--------------+--------------+
1 row in set (0.00 sec)


//QUERY8 :- find name of cnadidate which is not submit documents

mysql> select candidate_id,doc_type,creator_user,status from candidate_documents where status='pending';
+--------------+-----------+--------------+---------+
| candidate_id | doc_type  | creator_user | status  |
+--------------+-----------+--------------+---------+
|            5 | AADHAR NO | sridhar      | pending |
+--------------+-----------+--------------+---------+
1 row in set (0.00 sec)



//QUERY9 :- find name of candidate which is not submit bank details


mysql> select candidate_Id ,creator_user,Account_Number from candidate_bank_details where Account_Number='Not submitted';
+--------------+--------------+----------------+
| candidate_Id | creator_user | Account_Number |
+--------------+--------------+----------------+
|            3 |            3 | Not submitted  |
+--------------+--------------+----------------+
1 row in set (0.00 sec)


//QUERY10 :-find name of candidates which is joined in Jan month

mysql> select Id,First_Name,Last_Name,Joining_Date from fellowship_candidate where Joining_Date='2025-01-22 07:09:00';
+----+------------+-----------+---------------------+
| Id | First_Name | Last_Name | Joining_Date        |
+----+------------+-----------+---------------------+
|  1 | Sai        | Beemari   | 2025-01-22 07:09:00 |
+----+------------+-----------+---------------------+
1 row in set (0.00 sec)



//QUERY11:-find name of candidates which is end of couse in sep

mysql> select id ,type_Name ,creator_user from tech_type where creator_stamp='2007-09-02 01:02:09';
+----+-----------+--------------+
| id | type_Name | creator_user |
+----+-----------+--------------+
|  1 | Fullstack | sai          |
+----+-----------+--------------+
1 row in set (0.00 sec)


QUERY13:-find all candidates which is passed out in 2020 year

mysql> select Id ,CIC_ID,First_Name,Last_Name from fellowship_candidate where creator_stamp='2020-02-22 07:09:00';
+----+--------+------------+-----------+
| Id | CIC_ID | First_Name | Last_Name |
+----+--------+------------+-----------+
|  5 |      5 | Anji       | Kurma     |
+----+--------+------------+-----------+
1 row in set (0.00 sec)


QUERY22 :-find all condidate and mentors which is related to lab= banglore/mumbai/pune

mysql> select Id ,Name from lab where Location='PUNE';
+----+------------+
| Id | Name       |
+----+------------+
|  1 | Bridgelabz |
|  4 | Bridgelabz |
+----+------------+
2 rows in set (0.00 sec)












