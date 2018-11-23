
 # 4.给出一个数n 计算1+2**2+3**3+...+n**n的和
 # 　　(n最好小于20)
n = int(input('输入数字'))
def mymihe(n):
    z = 0
    for x in range(1, n + 1):
        y = x ** x
        z += y
    return z


def sum_nn(n):
    return sum(i ** i for i in range(1, n+1))


print(mymihe(n))
print(sum_nn(n))