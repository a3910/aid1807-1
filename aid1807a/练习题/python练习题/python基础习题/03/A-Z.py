
r = ""
m = ord('A')
n = ord('Z')
while m <= n:
    r = chr(m)
    m += 1
    print("结果是", r)
L = [x for x in range(ord('A'), ord('Z')+1)]
for x in L:
    print(chr(x), end ='')