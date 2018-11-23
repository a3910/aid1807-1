
# 　　1.一个球从100米高空落下，每次落地后反弹高度为原高度的一般，再落下，写程序算出
# 　　皮球在第10次落地后反弹多高，并经过多少米路程
# 　　(建议用循环和递归两种方法)
# 方法a
# high = int(input('请输入第一次下落的高度'))
# times = int(input('请输入球的反弹次数'))
# meter = 0  # 求反弹的路程
# last_high = 0  # 求最后的高度
# last_high = high
# for x in range(times):
#     meter += last_high
#     last_high = last_high / 2
#     meter += last_high


# print('第十次后共走了', meter, '米')
# print('第十次后弹起的高度是', last_high, '米')


# 方法1
# def gaodu(n):
#     for x in range(10):
#         n = n / 2
#     return n


# def lucheng(n):
#     a = n
#     for x in range(10):
#         n = n * 2
#         a += n
#     return a*2 - 100


# print(gaodu(100))
# print(lucheng(gaodu(100)))

# #方法2
# def gaodu_(n):
#     if n == 0:
#         return 100
#     return gaodu_(n-1) / 2


# def lucheng_(n):
#     if n == 0:
#         return gaodu_(n)
#     return lucheng_(n-1) + gaodu_(n) * 2

# lucheng_1 = lucheng_(10) - gaodu_(10)


# print(gaodu_(10))
# print(lucheng_1)

# 方法b:
def ball(hight, times):    # --> ('路程'，'最后高度')
    if 1 == times:
        return(hight+hight/2, hight/2)
    elif times < 1:
        return (0, hight)
    else:  # 一定大于1
        meter = hight + hight/2
        last_high = hight / 2
        h, t = ball(last_high, times - 1)
        return(meter+h, t)

meter, last_high = ball(100, 10)
print(meter, last_high)
