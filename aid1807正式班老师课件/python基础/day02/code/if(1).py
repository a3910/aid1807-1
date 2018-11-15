# if.py

# 输入一个数,判断这个数是奇数还是偶数,并打印出来
x = int(input("请输入一个整数: "))

if x % 2 == 1:
    print(x, '是奇数')
else:
    print(x, '是偶数')


def Judge_the_odd_and_even():
    x = int(input("请输入一个整数: "))
    if x % 2 == 0:
        return '偶数'
    else:
        return '奇数'
Judge_the_odd_and_even()
