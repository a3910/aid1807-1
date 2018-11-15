'''
name :  Tedu
date :  2018-10-1
email:  xxx
modules: pymongo
This is a dict project for AID
'''

from socket import *
import os 
import time
import signal 
import pymysql
import sys

#定义需要的全局变量
DICT_TEXT = './dict.txt'
HOST = '0.0.0.0'
PORT = 8000
ADDR = (HOST,PORT)

#流程控制
def main():
    #创建数据库连接
    db = pymysql.connect\
    ('localhost','root','123456','dict')

    #创建套接字
    s = socket()
    s.setsockopt(SOL_SOCKET,SO_REUSEADDR,1)
    s.bind(ADDR)
    s.listen(5)

    #忽略子进程信号
    signal.signal(signal.SIGCHLD,signal.SIG_IGN)

    while True:
        try:
            c,addr = s.accept()
            print("Connect from",addr)
        except KeyboardInterrupt:
            s.close()
            sys.exit("服务器退出")
        except Exception as e:
            print(e)
            continue 

        #创建子进程
        pid = os.fork()
        if pid == 0:
            s.close()
            do_child(c,db)
        else:
            c.close()
            continue

def do_child(c,db):
    #循环接收客户端请求
    while True:
        data = c.recv(128).decode()
        print(c.getpeername(),":",data)
        if (not data) or data[0] == 'E':
            c.close()
            sys.exit(0)
        elif data[0] == 'R':
            do_register(c,db,data)
        elif data[0] == 'L':
            do_login(c,db,data)

def do_login(c,db,data):
    print("登录操作")
    l = data.split(' ')
    name = l[1]
    passwd = l[2]
    cursor = db.cursor()

    sql = "select * from user \
    where name='%s' and passwd='%s'"%(name,passwd)

    cursor.execute(sql)
    r = cursor.fetchone()

    if r == None:
        c.send(b'FALL')
    else:
        print("%s登录成功"%name)
        c.send(b'OK')

def do_register(c,db,data):
    print("注册操作")
    l = data.split(' ')
    name = l[1]
    passwd = l[2]
    cursor = db.cursor()
    
    sql = "select * from user where name='%s'"%name 
    cursor.execute(sql)
    r = cursor.fetchone()
    
    if r != None:
        c.send(b'EXISTS')
        return

    #用户不存在插入用户
    sql = "insert into user (name,passwd) values \
    ('%s','%s')"%(name,passwd)
    try:
        cursor.execute(sql)
        db.commit()
        c.send(b'OK')
    except:
        db.rollback()
        c.send(b'FALL')
    else:
        print("%s注册成功"%name)



def do_query():
    pass

def do_hist():
    pass



if __name__ == '__main__':
    main()