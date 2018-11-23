
# 　1.写一个程序，打印电子时间：
# 　　　格式为：
# 　　　　　HH:MM:SS
#    每过一秒刷新一次
import time

from sys import stdout


def show_time():
    tuple_time = time.localtime()  # 将当前时间转化为秒数元组
    str_time = '\r%02d:%02d:%02d' % (
        tuple_time[3], tuple_time[4], tuple_time[5])
    print(str_time, end='')


def run_time():
    while True:
        show_time()
        time.sleep(1)


__all__ = show_time()

if __name__ =='__main__':
    run_time()