-- Management wants to know the cid of colleges in the uni that can support law.
mysql> select cid from campus where law= true;

-- Faculty wanted to inspect all the details of Dave excluding english and social.
mysql> select name, age, math, sci, sports from student where name = "dave";

-- Management wants to know the name and roll no of students who have qualified for scholarship.
-- Qualification parameter : math OR sci above 80
mysql> select name, rollno from student where math>80 or sci>80;

-- A teacher for social wants to know what are the distinct marks she gave her students.
mysql> select distinct social from student;

-- The english prof wishes to find the number of students failing in his class. Students below 70 fail. Count
-- manually or pro tip : google count in sql. Both will be graded equally just trying to pique your curiosity.
mysql> select count(eng) from student where eng<70;

-- The stem field wants to find the best qualified student to be head of their club as per marks. List the
-- students name and rollno. (stem is sci and math in this case)
mysql> select name, rollno, max(sci+math) as marks from student;

-- The Dept. of stem wants to know the college location of the university that does not provide engineering.
mysql> select loc from campus where engg = False;

-- What is the ratio of students in the campus that provides stem and does not provide stem (query and show
-- ratio by calc yourself, no need to divide just num/denom)


-- For all rounder find students who have score above 70 in all subj.
mysql> select name from student where math>70 and sci>70 and eng>70 and soci
al>70 and sports>70;

-- Find the count of students in each group if I split the students as per every 20 roll numbers in one group.
-- Note you can run multiple queries and count individually for this one or see if you can google a faster
-- way with sql itself. Both will be graded equally just trying to pique your curiosity.
