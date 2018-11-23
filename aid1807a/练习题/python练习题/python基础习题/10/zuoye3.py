
 # 3.给出一个数n,计算n的阶乘
 # n! = 1*2*3*4*...*n
n = int(input('输入数字'))
def jiecheng(n):
    y = 1
    for x in range(1, n + 1):
        y *= x
    return y

print(jiecheng(n))