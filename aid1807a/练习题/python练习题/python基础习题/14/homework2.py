
# 　　2.分解质因数，输入一个正整数，分解质因数
# 　　如：90则打印'2*3*3*5'
#      质因数是指最小能被原数整除的质数(不包括1)


def isprime(x):
    for i in range(2, x):
        if x % i == 0:
            return False
    return True


# def get_list(n):
#     '''从2开始，到n//2,对其所有数求余，能整除且为质数的放在primes里'''
#     primes = []  # 用来方所有质因数
#     last = n  # 保存除之后的数
#     while not isprime(last):
#         for i in range(2, last):
#             if last % i == 0:
#                 primes.append(i)
#                 last = int(last / i)
#                 break
#     primes.append(last)
#     return primes

#递归：
def get_list(n):
    for i in range(2, n):
        if n % i == 0:
            return [i] + get_list(int(n/i))
    return [n]

number = int(input('请输入一个正整数'))

L = get_list(number)  # 如果给出90,返回[2,3,3,5]
L2 = [str(x) for x in L]

print(number, '=', '*'.join(L2))