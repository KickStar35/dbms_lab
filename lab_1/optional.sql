1.
mysql> select name, max(math+sci+eng+social+sports) from student;

Output:
+--------+---------------------------------+
| name   | max(math+sci+eng+social+sports) |
+--------+---------------------------------+
| dwayne |                             434 |
+--------+---------------------------------+

2.
mysql> select name, position("a" in name)=2 as Bool from student;

Output:
+--------+------+
| name   | Bool |
+--------+------+
| dwayne |    0 |
| john   |    0 |
| dave   |    1 |
| randy  |    1 |
| kane   |    1 |
| tom    |    0 |
+--------+------+

3.

