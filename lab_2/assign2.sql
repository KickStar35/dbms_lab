--Suppose we are having a vaccination drive and someone suggests we give the vaccines as per age.We want to vaccinate the eldest student first and youngest last with nobody under 18( as theremight be people under 18). Make a list containing name, rno and age in descending order of age.(sub query, alias, aggregation)
select name, rollno as rno, year(curdate())-year(dob) as age from student where year(curdate())-year(dob) >=18 order by age desc;

--Suppose the college was holding an event for sports for the students, one of the sports sectionshas a minimum age of 20 years for participating. Now give a count of women and men separatelythat qualify for this event from the students table. (sub queries, aggregation)
mysql> select count(case when gender='M' then 1 end) as male,
    -> count(case when gender='F' then 1 end) as female from Student
    -> where year(curdate())-year(dob)>=20;
    
--Display number of students whose maths score is more than the class avg score in all subjects.(sub query)




















