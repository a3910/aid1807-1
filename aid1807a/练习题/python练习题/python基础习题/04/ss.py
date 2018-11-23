
#先假设没有'a'这个字符
cnt = 0
s = input("请输入任意字符生成字符串")
for c in s:
    if c == 'a':
        cnt += 1

print('a的个数是', cnt)
print("此时c变量的值为", c)