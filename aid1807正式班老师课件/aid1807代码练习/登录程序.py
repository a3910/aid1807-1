# 登录程序.py

from mysql_1 import MysqlHelp
from hashlib import sha1

usename = input('请输入用户名;')
password = input('输入密码:')

#给password加密
s1 = sha1()
s1.update(password.encode("utf-8"))
password2=s1.hexdigest()
print(password2)

mysql=MysqlHelp('db3')
sql_select = "select password from user where \
          usename=%s;"
result=mysql.getALL(sql_select,[usename])
print(result)
if not result:
    print("用户名不存在")
elif result[0][0] == password:
    print("登录成功")
else:
    print("密码错误")