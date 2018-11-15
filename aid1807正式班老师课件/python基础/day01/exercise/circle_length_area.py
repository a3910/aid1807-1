# 1. 指定一个半径为r = 3 厘米的圆
#   1) 计算圆的周长是多少厘米
#   2) 计算圆的面积是多少平方厘米
from math import *
r = 3
c = 2*r*pi
print('c=',c)
s = pi*r**2
print('s=',s)
print('s=%d'%s,'厘米')
print('s=%.7f'%s,'厘米')
print('面积是:{0:.2f}平方厘米'.format(s))






# r = 3  # cm 半径
# pi = 3.1415  # 圆周率

# # 计算周长　
# length = pi * r * 2  # 周长
# print("周长是:", length)

# # 计算面积
# area = pi * r ** 2  # 面积
# print("面积是:", area)

n = int(input('输入任意整数'))
width = 1
max_width = 2 * n - 1

while n > 0:
    print(('*'*(2*width-1)).center(
        max_width))
    n -= 1
    width += 1  
