# 练习:
#   写一个程序,打印一个高度为4行的矩形方框
#    要求,输入一个整数,此整数代表矩形的宽度.
#   如:
#     输入矩形宽度: 10
#   打印如下:
#     ##########
#     #        #
#     #        #
#     ##########

#   如:
#     输入矩形宽度: 5
#   打印如下:
#     #####
#     #   #
#     #   #
#     #####

# w = int(input("输入矩形宽度: "))
# line1 = '#' * w  # 第一行
# line2 = '#' + ' ' * (w - 2) + '#'

# print(line1)
# print(line2)
# print(line2)
# print(line1)
def print_triangle(n):
    width = 1
    max_width = 2 * n - 1
    while n > 0:
        print(('*'*(2*width-1)).center(
            max_width))
        n -= 1
        width += 1
n = int(input('输入数字'))  
print_triangle(n)

     
