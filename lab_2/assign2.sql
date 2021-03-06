--Suppose we are having a vaccination drive and someone suggests we give the vaccines as per age.We want to vaccinate the eldest student first and youngest last with nobody under 18( as theremight be people under 18). Make a list containing name, rno and age in descending order of age.(sub query, alias, aggregation)
mysql> select name, rollno as rno, year(curdate())-year(dob) as age from student where year(curdate())-year(dob) >=18 order by age desc;

--Suppose the college was holding an event for sports for the students, one of the sports sectionshas a minimum age of 20 years for participating. Now give a count of women and men separatelythat qualify for this event from the students table. (sub queries, aggregation)
mysql> select count(case when gender='M' then 1 end) as male,
    -> count(case when gender='F' then 1 end) as female from Student
    -> where year(curdate())-year(dob)>=20;
    
--Display number of students whose maths score is more than the class avg score in all subjects.(sub query)
mysql> select count(*) as Student_num from student where math>(select avg(math+sci+social+eng+sports)/5 from student);

--Suppose the university expansion team was looking at how they should expand further and inwhat areas of the country. As of now they currently need the ratio of campus capacity that is inthe south to the west zone of the country. (Like, use resource mentioned towards the end)
mysql> select sum(cap) as south_zone from campus where pincode like '5%' or pincode like '6%';
mysql> select sum(cap) as west_zone from campus where pincode like '3%' or pincode like '4%';

--This year the college has decided to not only award the student who came first in the college(fromany batch/joining yrs) but also the student who has come second. Find the student who has thesecond highest avg in the table.(sub queries, aggregation, comparison, logical)
mysql> select name from student where (math+sci+social+eng+sports)/5= (select max(math+sci+social+eng+sports)/5 from student where (math+sci+social+eng+sports)/5 <(select max(math+sci+social+eng+sports)/5 from student));

--Display student???s name, rno, avg marks (???avg_marks???), score status (???score_status???) where scorestatus is ???High??? if above average and ???Low??? if below average. (sub queries)
mysql> select name, rollno as rno, (math+sci+eng+social+sports)/5 as avg_marks, if((math+sci+eng+social+sports)/5>= (select avg(math+sci+social+eng+sports)/5 from student), "High", "Low") as score_status from student;




