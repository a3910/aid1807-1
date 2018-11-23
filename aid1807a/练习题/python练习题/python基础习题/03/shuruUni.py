
m = int(input("请输入起始数值"))
n = int(input("请输入结束数值"))

print("十进制编码    十六进制编码　　　　文字")

while m <= n:
    print(' ' * 3, m, ' ' * 6, hex(m), ' ' * 11, chr(m))
    m = m + 1
else:
    print("请输入正确数值")
