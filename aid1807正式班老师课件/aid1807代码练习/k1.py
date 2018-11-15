# 进程对象属性
# p.pid
# p.name
# p.is_alive()
# p.daemon

import multiprocessing as m
from time import *
a = 1
# 创建函数


def fun():
    global a
    print(a)
    a = 2
    print("这是子进程")


# 创建进程对象
p = m.Process(target=fun())


# 启动进程
p.start()

sleep(2)
print("这是父进程")

# 回收进程
p.join()

print("child a= ", a)
while True:
    #pass
    #continue
    break



进程与线程的区别和联系
两者都是多任务编程方式，都能够使用计算机的多核资源
进程的创建删除消耗的计算机资源比线程多
一个进程可以创建