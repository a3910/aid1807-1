# 练习:
#   1. 用字符串 * 运算符打印三角形
#     要求输入一个整数,此整数代表最长的一行星离左侧的字节数
#   如:
#     请输入离左侧的距离: 3
#   打印如下:
#       *
#      ***
#     *****
#    *******


n = int(input('请输入离左侧的距离: '))
print(' ' * n + '   *')
print(' ' * n + '  ***')
print(' ' * n + ' *****')
print(' ' * n + '*******')

