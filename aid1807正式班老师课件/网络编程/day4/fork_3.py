# import os
# from time import sleep

# pid = os.fork()

# if pid < 0:
#     print('failed')
# elif pid == 0:
#     sleep(3)
#     print("Child Process exit", os.getpid())
#     os._exit(2)
# else:
#     while True:
#         sleep(1)
#         # 通过非阻塞形式捕获子进程退出
#         pid1, status = os.waitpid(-1, os.WNOHANG)
#         print(pid1, status)
#         print(os.WEXITSTATUS(status))
#         if pid1 >0:
#             break
#     while True:
#         pass

# import os
# from time import sleep

# pid = os.fork()

# if pid == 0:
#     print("child PID:", os.getpid())
#     print("parent PID again:", os.getppid())
# elif pid > 0:
#     print("parent process:", os.getpid())
#     while True:
#         pass

# ps -aux,查看子进程pid是否是z，（z代表子进程）


#二级子进程处理僵尸问题
 
import os 
from time import sleep
 
def fun1():
    sleep(3)
    print("第一件事情")
 
def fun2():
    sleep(4)
    print("第二件事情")
 
pid = os.fork()
 
if pid < 0:
    print("create process failed")
elif pid == 0:
    #创建二级子进程
    pid1 = os.fork()
    if pid1 == 0:
        fun2() #执行fun2
    elif pid1 > 0:
        os._exit(0) #子进程退出
else:
    os.wait()
    fun1()
