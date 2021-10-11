1.
a) create table marks_sem1 like student;
 INSERT INTO marks_sem1 SELECT * FROM student;
 alter table marks_sem1 add primary key (rollno);
  alter table marks_sem1 drop column name;
  alter table marks_sem1 drop column dob;
  alter table marks_sem1 drop column yjoin;
  alter table marks_sem1 drop column gender;
  alter table marks_sem1 drop column team;
