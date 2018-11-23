

for left in range(1,10):
    #打印每一行
    for col in range(1, left + 1):
        print("%dX%d=%d" % (col, left, col * left), end = ' ')
    print()