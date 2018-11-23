
# 制作一个地图
map2048 = [[2, 0, 2, 4],
       [2, 2, 4, 4],
       [4, 8, 8, 2],
       [0, 8, 4, 2]]


def _remove_zero(L):
    '''删除列表里的零'''
    try:
        while True:
            i = L.index(0)  # index函数为在列表中寻找0，如果没有零则返回一个ValueError
            L.pop(i)
    except ValueError:
        pass


def _left_shift(L):
    # 删除所有的零
    _remove_zero(L)
    # 　合并相邻的两个相同的元素将左侧的值做乘二操作，将右侧的值置零

    for i in range(len(L) - 1):
        if L[i] == L[i+1]:
            L[i] *= 2
            L[i+1] = 0
    # 再次删除零
    _remove_zero(L)
    while len(L) < 4:
        L.append(0)


def test():
    for i in map2048:
        _left_shift(i)
        print(i)

if __name__ == "__main__":
    test()
