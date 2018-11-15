# import copy
# a = [1,2,3,["a","b"]]
# b = copy.deepcopy(a)
# a[3].append(5)
# print(a)
# print(b)
# b = copy.copy(a)
# b[3].append(5)
# print(a)
# print(b)





# try:
#     tup = ('physics', 'chemistry', 1997, 2000)
#     print(tup)
#     del tup
#     print(tup)
# except NameError:
#     print('出错')


查找所有国家中英雄数量最多的前2名的国家名称和英雄数量
计算所有国家的平均攻击力



select user_id,count(user_id) from k1
group by user_id order by count(user_id) desc limit 10;



mysql> desc k1;
+------------+-----------+------+-----+-------------------+-----------------------------+
| Field      | Type      | Null | Key | Default           | Extra                       |
+------------+-----------+------+-----+-------------------+-----------------------------+
| comment_id | int(11)   | YES  |     | NULL              |                             |
| artcle_id  | int(11)   | YES  |     | NULL              |                             |
| user_id    | int(11)   | YES  |     | NULL              |                             |
| date       | timestamp | NO   |     | CURRENT_TIMESTAMP | on update CURRENT_TIMESTAMP |
+------------+-----------+------+-----+-------------------+-----------------------------+
4 rows in set (0.00 sec)

mysql> select * from k1;
+------------+-----------+---------+---------------------+
| comment_id | artcle_id | user_id | date                |
+------------+-----------+---------+---------------------+
|          1 |     10000 |   10000 | 2018-01-30 09:00:00 |
|          2 |     10001 |   10001 | 2018-01-30 10:00:00 |
|          3 |     10002 |   10000 | 2018-01-30 11:00:00 |
|          4 |     10003 |   10015 | 2018-01-30 11:00:00 |
|          5 |     10004 |   10006 | 2018-01-30 12:00:00 |
|          6 |    100025 |   10006 | 2018-01-31 13:00:00 |
|          7 |     10009 |   10000 | 2018-01-31 13:00:00 |
+------------+-----------+---------+---------------------+
7 rows in set (0.00 sec)

mysql> select user_id,count(user_id) from k1 group by user_id order by count(user_id) desc limit 10;
+---------+----------------+
| user_id | count(user_id) |
+---------+----------------+
|   10000 |              3 |
|   10006 |              2 |
|   10001 |              1 |
|   10015 |              1 |
+---------+----------------+
4 rows in set (0.00 sec)

use db1;
desc k2;
select * from k2;
update k2 set hobby='study,daze' where name ='小明';



alter table k2 modify id int primary key auto_increment;
load data infile '/var/lib/mysql-files/sanguo.csv'
into table MOSHOU
fields terminated by ','
lines terminated by '\n';