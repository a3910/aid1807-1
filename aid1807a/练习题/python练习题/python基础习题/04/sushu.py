
for n in range(1, 201):
    for m in range(2, n):
        if n % m == 0:  # 不是质数
            break
    else:
        print(n)
