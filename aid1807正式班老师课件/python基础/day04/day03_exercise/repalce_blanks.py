# 2. 输入一个字符串,把输入的字符串中的空格全部去掉.
#    打印出处理后的字符串的长度和字符串内容
def huiwen():
    s = input("请输入字符串: ")
    r = s.replace(' ', '#')
    print(r)
    print(r[::-1])
    if r == r[::-1]:
        return True
    return False
print(huiwen())
