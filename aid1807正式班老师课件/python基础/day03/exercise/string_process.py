# 写程序,输入一个长长的字符串,然后判断你的姓名是
#   否存在于这个字符串中.
#   如果存在,则打印: '您的名字出现了'
#   否则提示: '没出现你的名字'
def zc():
    b = input('shuru')
    s = input('请输一行文字!')
    if b in s:
        print("您的名字出现了")
    else:
        print("没出现你的名字!")
zc()
