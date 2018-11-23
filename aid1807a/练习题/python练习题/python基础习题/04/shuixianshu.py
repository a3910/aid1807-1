
for n in range(100,1000):
    if (n // 100) ** 3 + ((n % 100) // 10) ** 3 + (n % 10) ** 3 == n:
        print(n)    
