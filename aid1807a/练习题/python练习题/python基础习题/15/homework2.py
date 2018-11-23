
# 2.写一个生成器函数，生成斐波那契数列的前n个数
# 　　fibnacci(n)

# n = int(input('需要生成多少斐波那契数'))
# def feibo(n):
#     L = [1, 1]
#     if n <= 2:
#         for x in range(n):
#             yield 1
#     else:
#         for x in range(n):
#             a = L[x] + L[x+1]
#             L.append(a)
#             yield L[x]

# L = [x for x in feibo(n)]
# print(L)


# def feibo(n):
#     L = [1, 1]
#     if n <= 2:
#         for x in range(n):
#             yield 1
#     else:
#         while len(L) - 2 < n:
#             L.append(L[-2]+L[-1])
#             yield L[-1]

# L = [x for x in feibo(10)]
# print(L)


# def fibo(n):
#     cnt = 0
#     L = [1, 1]
#     if cnt < n:
#         yield 1
#         cnt += 1
#     if cnt < n:
#         yield 1
#         cnt += 1
#     while cnt < n:
#         L.append(L[-2]+L[-1])
#         yield L[-1]
#         cnt += 1

# L = [x for x in fibo(10)]
# print(L)

#改进方法:1,不用列表减少内存消耗

# def fibo(n):
#     cnt = 0
#     a1 = 1
#     a2 = 1
#     if cnt < n:
#         yield 1
#         cnt += 1
#     if cnt < n:
#         yield 1
#         cnt += 1
#     while cnt < n:
#         # a3 = a1+a2
#         # a1 = a2
#         # a2 = a3
#         # yield a3
#         a1,a2 = a2, a1+a2
#         yield a2
#         cnt += 1

# L = [x for x in fibo(10)]
# print(L)
#方法3
def fibonacci(n):
    cnt = 0
    a1 = 1
    a2 = 1
    # while cnt < n and cnt < 2:
    while cnt < min(n, 2):
        yield 1
        cnt += 1
    while cnt < n:
        # a3 = a1+a2
        # a1 = a2
        # a2 = a3
        # yield a3
        a1,a2 = a2, a1+a2
        yield a2
        cnt += 1

L = [x for x in fibonacci(1)]
print(L)