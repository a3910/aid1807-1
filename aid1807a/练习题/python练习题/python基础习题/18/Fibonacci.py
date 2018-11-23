
# 　　写一个实现在迭代器协议的类，让此类可以生成前n个斐波那契数列
# 　　class Fibonacci:
#        def __init__(self, n):
#            ....
#        ....

#   for x in Fobonacci(8):
#       print(x)  --> 1 1 2 3 4 7 11 18


class Fibonacci:
    a1 = 1
    a2 = 1

    def __init__(self, n):
        self.n = n

    def __iter__(self):
        # self.n = self.beg
        return self

    def __next__(self):
        a2 = 1
        a1 = 1
        L = [1, 1]
        while len(L)+1 <= self.n:
            a1, a2 = a2, a1+a2
            L.append(a2)
            # if len(L) >= self.n:
            #     break
            return a2


for x in Fibonacci(8):
    print(x)
