
# 　　1.写一个函数isprime(x),判断x是否为素数，如果为素数返回True,否则返回False
def isprime(a):
    #判断小于0的数不是素数
    if a < 0:
        return False
    for x in range(2,a):
        if a % x == 0:
            return False
    else:
        return True


# 写一个函数prime_m2n(m,n)，返回从m开始到n结束范围内的素数，
#     返回这些质数的列表并打印，如：
# 　　  prime_m2n(5,10)，返回(5,7)
def prime_m2n(m, n):
    t = []
    for x in range(m, n + 1):
       if isprime(x):
           t.append(x)
    return t


# 写一个函数primes(n),返回指定范围n内的素数，返回全部素数的列表，并打印这些素数
#   　　primes(10) 返回 [1,2,3,5,7]
#     1)打印十个素数
#     2)打印100个素数
#     3)打印前200个素数
def primes1(n):
    return prime_m2n(1,n+1)


def primes(n):
    r = []
    x = 1
    while  len(r) < n:
        if isprime(x):
            r.append(x)
        x += 1
    return r


def prime1(n):
    x = 1
    r = []
    while True:
        if isprime(x):
            r.append(x)
        x += 1
        if len(r) == n:
            break
    return r

