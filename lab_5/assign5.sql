1.
 create table marks_sem1 like student;
 INSERT INTO marks_sem1 SELECT * FROM student;
 alter table marks_sem1 add primary key (rollno);
 alter table marks_sem1 drop column name;
 alter table marks_sem1 drop column dob;
 alter table marks_sem1 drop column yjoin;
 alter table marks_sem1 drop column gender;
 alter table marks_sem1 drop column team;
  
2.
create table faculty (name varchar(20), fid char(4), subject varchar(20));
alter table faculty add primary key (fid);
insert into faculty values ('kakashi', '4003', 'math');
insert into faculty values ('guy', '5002', 'sports');
insert into faculty values ('kurenai', '5038', 'eng');

3.
create table sem1 (subject_id char(4) primary key, subject varchar(20), fid char(4), cap int, campus int);
insert into sem1 values ('101', 'math', '4003', 60, 101);
insert into sem1 values ('102', 'sports', '5002', 70, 101);
insert into sem1 values ('105', 'eng', '5038', 60, 104);
alter table sem1 add key(campus);
alter table sem1 add key(fid);

4.
alter table campus add primary key(cid);

5.
 alter table student drop math;
 alter table student drop sci;
 alter table student drop eng;
 alter table student drop social;
 alter table student drop sports;

 alter table student add column cid int;
 
update student set cid=109 where rollno=33;
update student set cid=101 where rollno=58;
update student set cid=110 where rollno=27;
update student set cid=104 where rollno=56;
update student set cid=104 where rollno=11;
update student set cid=101 where rollno=50;
update student set cid=113 where rollno=7;
update student set cid=107 where rollno=21;
update student set cid=109 where rollno=52;
update student set cid=109 where rollno=34;
update student set cid=110 where rollno=46;
 
ALTER TABLE student alter dob set default '2001-01-01';
ALTER TABLE student alter yjoin set default '2019';
ALTER TABLE student alter gender set default 'M';
ALTER TABLE student alter team set default 'R';

alter table student add foreign key(rollno) references marks_sem1(rollno);

