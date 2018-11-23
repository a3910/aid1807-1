
#  2.编写一个闹钟程序，启动时设置定时时间，到时间后打印一句话，然后程序退出
import time
import homework1
h = int(input('请输入小时'))
m = int(input('请输入分钟'))

while True:
    homework1.show_time()
    tt = time.localtime()
    if tt[3] == h and tt[4] == m:
        print('时间到，起床了!@#$%')
        break
