# coding=utf-8
# 打印全世界所有的文字
try:
    for code in range(0, 65536):
        ch = chr(code)
        print(ch,end='')

except Exception as e:
    print(e)
