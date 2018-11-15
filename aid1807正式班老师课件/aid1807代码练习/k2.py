def calculate():
    b = input('输入字符串')
    count_a = 0
    for a in b:
        if a == 'a':
            count_a += 1
    else:  # else子句只有在可迭代对象不能提供数时才会执行
        print('a的个数是:', count_a)

    count_blank = 0
    for a in b:
        if a == ' ':
            count_blank += 1
      # else子句只有在可迭代对象不能提供数时才会执行
    else:
        print('空格的个数是:', count_blank)


calculate()


# class mtrange:
#     def __init__(self, start, stop=None, step=1):
#         self.start = start
#         self.stop = stop
#         self.step = step

#     def mtrange()

