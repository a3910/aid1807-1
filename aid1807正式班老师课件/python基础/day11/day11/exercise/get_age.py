# 练习:
#   已知有五位朋友在一起
#     第五个人说它比第四个人大2岁
#     第四个人说它比第三个人大2岁
#     第三个人说它比第二个人大2岁
#     第二个人说它比第一个人大2岁
#     第一个人说它10岁
#   编写程序:
#     1) 算出第5个人几岁
#     2) 算出第3个人几岁


# def age(n):  # n代表第n个人
#     if n == 1:
#         return 10
#     return age(n - 1) + 2


# print(age(5))
# print(age(3))

 # 2. 已知有列表:
L = [[3,5,8],10,[[13, 14],15,18],20]
def sum_list(L):
    s = 0
    for x in L:
        if type(x) is int:
            s += x
        else:
            print(x)
            s +=sum_list(x)
        print(s)
    return s
print(sum_list(L))

# L = [[3, 5, 8], 10, [[13, 14], 15, 18], 20]
# l = []
# n = int(input('a'))
# s = 0
# for x in range(1,n+1):
#     s += x
#     l.append(s)
# print(l)    