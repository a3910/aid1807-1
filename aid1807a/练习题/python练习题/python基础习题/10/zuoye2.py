
#  2.给出一个数n,打印0+1+2+3+.....+n的值
# 说明:争取用函数来做
n = int(input('输入数字'))
def mysum(n):
    y = 0
    for x in range(n + 1):
        y += x
    return y

print(mysum(n))