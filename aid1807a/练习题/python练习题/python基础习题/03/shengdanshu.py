
# 3.输入一个整数(代表树干的高度)
#   　　打印出如下一棵树
#     输入：2
#  *
# ***
#  *
#  *
#     输入:3
#   *
#  ***
# *****
#   *
#   *
#   *
hight = int(input("请输入树干高度"))
#打印树冠
n = 1
while n <= hight:        
    #星星数
    stars = 2 * n - 1 #(1,3,5)
    #空格数
    blank = hight - n
    #算出树冠
    leaf = " " * blank + "*" * stars
    print(leaf)
    n += 1
#打印树干
n = 1
while n <= hight:
    blanks = hight - 1
    t = " " * blanks + "*"
    print(t)
    n += 1