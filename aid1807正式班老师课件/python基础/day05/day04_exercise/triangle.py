# 3. 用while语句实现打印三角形,输入一个整数,表示三角形的宽度和高度,打印出相应的直角三角形
#    如:
#    　　请输入三角形的宽度: 4
#    1) 打印如下三角形:
#       *
#       **
#       ***
#       ****
#    2) 打印如下三角形:
#          *
#         **
#        ***
#       ****
#    3) 打印如下三角形:
#       ****
#        ***
#         **
#          *
#    4) 打印如下三角形:
#       ****
#       ***
#       **
#       *


w = int(input("请输入三角形的宽度: "))

# 1) 打印如下三角形:
#    *
#    **
#    ***
#    ****
line = 1
while line <= w:
    # 根据行号来打印每行星号
    print('*' * line)
    line += 1


print('------------------------')
# 2) 打印如下三角形:
#       *
#      **
#     ***
#    ****
line = 1
while line <= w:
    # 先算空格的个数
    blanks = w - line
    print(' ' * blanks + '*' * line)
    line += 1

# 3) 打印如下三角形:
#    ****
#     ***
#      **
#       *
print('================================')
stars = w  # 星号个数
while stars > 0:
    # 先算空格个数
    blanks = w - stars
    print(' ' * blanks + '*' * stars)
    stars -= 1

# 4) 打印如下三角形:
#    ****
#    ***
#    **
#    *
print('+++++++++++++++++++++++++++++')
stars = w  # 星号个数
while stars > 0:
    print('*' * stars)
    stars -= 1

#   *
#  ***
# *****
#*******
print('+++++++++++++++++++++++++++++')
line=1  # 星号个数
while line <= w:
    # 先算空格的个数
    blanks = w - line
    print(' ' * blanks + '*' * ((line * 2)-1))
    line += 1
#  *******
#   *****
#    ***
#     *
print('+++++++++++++++++++++++++++++')
stars = w  # 星号个数
while stars > 0:
    # 先算空格个数
    blanks = w - stars
    print(' ' * blanks + '*' *((stars * 2)-1))
    stars -= 1

    
