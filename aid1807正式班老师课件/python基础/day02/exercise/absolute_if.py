# 1. 写一个程序,输入一个数,用if语句计算这个
#   数的绝对值并打印出来


def abs():
    n = int(input("请输入一个数: "))
    if n >= 0:
        return n
    else:
        return -n
print(abs())


# n = int(input("请输入一个数: "))
# # 方法1
# # if n > 0:
# #     r = n  # 正数的情况
# # else:
# #     r = -n  # 负数的情况

# # 方法2
# r = n  # 先绑定
# if r < 0:  # 如果是负数,进行符号取反
#     r = -r

# print("绝对值是:", r)


 