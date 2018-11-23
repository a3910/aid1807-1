
# 　　5)完全数：
# 　　　　1 + 2 + 3 = 6 (6为完全数)
# 　　　　1, 2, 3都为6的因数
# 　　　　完全数是指除自身以外的所有的因数之和相加，等于自身的数，求100个完全数并打印

# 　　　　最好打印因数

#求无限个完全数
n = 1
perfect = []  #用于保存完全数的列表
while True:
    yinshu = [] #用于保存因数的列表
    for x in range(1, n):
        if n % x == 0:
            yinshu.append(x)
    if sum(yinshu) == n:
        perfect.append(n)
        print(perfect)
    n += 1