# closure2.py


# 用闭包来创建任意的函数
# f(x)  = ax2 + bx + c

def get_fx(a, b, c):
    def fx(x):
        return a * x ** 2 + b * x + c
    return fx


f123 = get_fx(1, 2, 3)
print(f123(20))
print(f123(50))

f654 = get_fx(6, 5, 4)
print(f654(10))  # ...

