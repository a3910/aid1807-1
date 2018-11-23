
# n = 0
# while n <= 30:
#     print(n)
#     n += 2
# for x in range(31):
#     if x % 2 != 0:
#         break
#     print(x)

L = [x for x in range(31) if x % 2 == 0]
print(L)