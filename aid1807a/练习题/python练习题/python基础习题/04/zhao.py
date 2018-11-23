# .任意输入一段字符串，计算出输入"a"这个字符的个数，并打印出来

cnt = input("请输入一个字符串")

n = len(cnt)
m = 0
i = 0
while i < n:
    if cnt[i] == "a":
        m += 1
    i += 1
print(m)