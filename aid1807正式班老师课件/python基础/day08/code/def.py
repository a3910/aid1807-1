# def.py


# 此示例示意用def语句来定义一个函数并调用这个函数

# def say_hello():
#     print("hello world!")
#     print("hello tarena!")
#     print("hello everyone!")
#     # return None


# say_hello()  # 函数调用
# # say_hello()
# v = say_hello()
# print(v)  # None
def is_primes(x):
    if x <= 2:
        return False
    for i in range(2, x):
        if x % i == 0:
            return False
    return True
    
 
def get_zhiyishu(n):
    '''递归方式实现'''
    L = []
    # 如果n已经为素数，终止递归，把L 返回回去
    if is_primes(n):
        L.append(n)
        return L
    for i in range(2, n):
        if n % i == 0:
            L.append(i)  # i是质数数
            n = int(n / i)  # 转为整数
            L += get_zhiyishu(n)
            break  # 此处一定要加break 来终止循环
    return L
 
 
n = int(input("请输入一个数: "))
number = n
print(n, "的质因数是:", get_zhiyishu(n))
print(number,'=','*'.join([str(x)for x in get_zhiyishu(n)]),sep=' ')