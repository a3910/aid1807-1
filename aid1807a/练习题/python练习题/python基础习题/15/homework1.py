
# 1.用生成器函数，生成质数，给出起始值begin和终止值stop,此生成器函数为
# 　　prime(begin, end)
#   如果[x for x in prime(10, 20)] --> [11,13,17,19]
#   练习使用yield

# 方法1
# def isprime(n):
#     for x in range(2, n):
#         if n % x == 0:
#             return False
#     return True


# def prime(begin, end):
#     for a in range(begin, end):
#         if isprime(a):
#             yield a

# L = [x for x in prime(10, 20)]

# print(L)

def primet(begin, end):
    if begin < 1:
        raise ValueError("begin不允许小于1")
    for p in range(begin, end):
        for x in range(2, p):
            if p % x == 0:
                break
        else:
            yield p

L = [x for x in primet(10, 20)]
print(L)
