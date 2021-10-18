--Recreate the original student table using joins
mysql> select * from student cross join marks_sem1 on student.rollno = marks_sem1.rollno;

--Show only name and sports score from sem1 of all students
mysql> select student.name, marks_sem1.sports from student inner join marks_sem1 on student.rollno = marks_sem1.rollno;

--Show name,math marks, roll no of students who study in a campus offering law.
mysql> select student.name, marks_sem1.math, student.rollno
    -> from student
    -> inner join marks_sem1 on student.rollno = marks_sem1.rollno
    -> inner join campus on student.cid = campus.cid
    -> where campus.law = 1;
    
--Write left join and right join queries on campus and student table. In the output file simplymention the difference in rows you encountered and what did you see in the extra row for certaincolumns. Try to understand why that happened.
mysql> select * from campus
    -> left join student
    -> on campus.cid = student.cid;
mysql> select * from campus
    -> right join student
    -> on campus.cid = student.cid;
