
# 2.写程序算出1~20的阶乘的和
# 　　1! + 2! + 3! + ... +20!
def jiecheng(n):
    if n == 1:
        return 1
    return n * jiecheng(n-1)


#方法１
# def sum_factor(n):
#     s = 0
#     for x in range(1,n+1):
#         s += jiecheng(x)
#     return s
# print(sum_factor(20))


#方法２
# def sum_fac(n):
#     return sum(map(jiecheng,range(1,n+1)))
# print(sum_fac(20))

def jiecheng_he(a):
    if jiecheng(a) == 1:
        return 1
    return jiecheng(a) + jiecheng_he(a - 1)


print(jiecheng_he(20))