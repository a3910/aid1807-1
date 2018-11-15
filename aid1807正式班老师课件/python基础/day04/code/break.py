# break.py

i = 1
while i <= 6:
    print('循环开始时:', i)
    if i == 3:
        break
    print('循环结束时:', i)
    i += 1

print("i 的值是", i)
print("----------程序退出--------")


for i in range(1,4):
    if i <= 3:
        print('循环开始时:', i)
    else:        
        print('循环结束时:', 3-i)
    i += 1
print()
def fx(n):
    print("递归进入第", n, '层')
    if n == 3:
        return
    fx(n + 1)
    print("递归退出第", n, '层')


fx(1)  # 调用
print("程序结束")
