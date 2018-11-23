'''创建库spiderdb,创建表t1,插入1条记录'''
import pymysql
import warnings

# 创建数据库连接对象
db = pymysql.connect("localhost","root","123456",
                      charset="utf8")
# 创建游标对象
cursor = db.cursor()
# execute(sql命令)
c_db = 'create database if not exists spiderdb charset utf8'
u_db = 'use spiderdb'
c_tab = 'create table if not exists t1(id int)'
ins = 'insert into t1 values(1)'

# 过滤警告
warnings.filterwarnings("ignore")
try:
    cursor.execute(c_db)
    cursor.execute(u_db)
    cursor.execute(c_tab)
    cursor.execute(ins)
    db.commit()
except Warning:
    pass

cursor.close()
db.close()






















