1.
mysql> select name, max(math+sci+eng+social+sports) from student;

2.
mysql> select name, position("a" in name)=2 as Bool from student;

OR

mysql> select name from student where name like '_a%';

3.


