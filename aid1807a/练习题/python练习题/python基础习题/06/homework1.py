
# 　　1.输入一个数，判断这个数是否是回数
# 　　　　12321  4567654  14841 　367763中心对称
#   回数是指中心对称的数
# 　　随意输入一个数，判断是否为回数

# n = input('请输入一个数判断是否为回数')
# y = len(n)
# x = y // 2
# z = x - 1
# a = "不是"
# b = "是"
# if y % 2 == 0:
#     while x < y:
#         if n[z] != n[x]:
#             print(a)
#             break
#     else:
#         print(b)
#         x += 1
#         z = z - 1

# else:
#     while x < y - 1:
#         if n[z] != n[x + 1]:
#             print(a)
#             break
#         else:
#             print(b)
#         x += 1
#         z = z - 1
# n = int(n)

# 　　1.输入一个数，判断这个数是否是回数
# 　　　　12321  4567654  14841 　367763中心对称
#   回数是指中心对称的数
# 　　随意输入一个数，判断是否为回数

#方法1
# number = input("请输入一个数")
# if number.isdigit():
#     length = len(number)
#     cmp_times = length // 2 #计算比较次数
#     for i in range(0,cmp_times):
#         if number[i] != number[-i-1]:
#             print("这个数不是回文数")
#             break
#     else:
#         print("这个数是回文数")
# else:
#     print("请输入正确数值(整数)")

#方法2
# number = input("请输入一个数")
# if number.isdigit():
#     if number == number[::-1]:
#         print("这个数是回文数")
#     else:
#         print("这个数不是回文数")
# else:
#     print("请输入正确数值(整数)")

#方法3
number = input("请输入一个数")

if number.isdigit():
    if list(number) == [x for x in reversed(number)]:
        print("这个数是回文数")
    else:
        print("这个数不是回文数")
else:
    print("请输入正确数值(整数)")