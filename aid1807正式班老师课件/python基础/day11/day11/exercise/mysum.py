# 练习:
#   用递归实现求和:
#     def mysum(n):
#         # 返回 1 + 2 + 3 + 4 + .... + n的和
#         ...

#     print(mysum(100))  # 5050


def mysum(n):
    if n == 1:
        return 1
    return n + mysum(n - 1)


print(mysum(20))  # 5050


# l = []
# n = int(input('a'))
# s = 0
# for x in range(1,n+1):
#     s += x
#     l.append(s)
# print(l)