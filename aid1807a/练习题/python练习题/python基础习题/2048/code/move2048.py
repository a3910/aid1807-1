
import random
# 制作一个地图


# 设置游戏开始时的地图


def reset():
    global map2048
    map2048 = [[0, 0, 0, 0],
               [0, 0, 0, 0],
               [0, 0, 0, 0],
               [0, 0, 0, 0]]
    fill_to_zero()
    fill_to_zero()
    # fill_to_zero()


def _remove_zero(L):
    '''删除列表里的零'''
    try:
        while True:
            i = L.index(0)  # index函数为在列表中寻找0，如果没有零则返回一个ValueError
            L.pop(i)
    except ValueError:
        pass


def _left_shift(L):
    old = L.copy()
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
    # 当新列表与旧列表不同时返回True否则返回False
    return L != old

# 左操作


def left():
    ret = False
    for r in map2048:
        if _left_shift(r):
            ret = True
    return ret

# 右操作，先将所有行左右翻转，在左移操作，在左右翻转


def right():
    ret = False
    for r in map2048:
        r.reverse()
    ret = left()
    # for r in map2048:
    #     _left_shift(r)
    for r in map2048:
        r.reverse()
    return ret


def test():
    for r in map2048:
        _left_shift(r)
        # print(r)
# 上操作


def up():
    ret = False
    # 对每一列进行操作,i代表列索引
    for i in range(4):
        L = []
        for r in map2048:
            L.append(r[i])  # 将每一行的第i列放入L中
        if _left_shift(L):
            ret = True
        # 再将列表放回原列中
        for j in range(4):
            map2048[j][i] = L[j]
    return ret

# 下操作


def down():
    map2048.reverse()
    ret = up()
    map2048.reverse()
    return ret


def fill_to_zero():
    s = [2, 4]
    n = random.choice(s)
    L = []
    for r in range(4):
        for c in range(4):
            if map2048[r][c] == 0:
                L.append((r, c))
    # 如果L为空，则没有空位，直接返回
    if not L:
        return

    i = random.choice(L)  # 随机选择列表中的地址
    r, c = i  # 元组序列赋值
    map2048[r][c] = n


def is_gameover():
    for r in map2048:  # 遍历所有行
        if r.count(0):
            return False  # 如果行中出现零，游戏没有结束
    for r in map2048:  # 每一行中的相邻元素相同，则游戏没有结束
        for i in range(len(r) - 1):
            if r[i] == r[i+1]:
                return False
    for col in range(4):  # 　选出4列
        for i in range(3):  # 判断每列相邻的元素
            if map2048[i][col] == map2048[i+1][col]:
                return False
    return True


def is_2048():
    for r in map2048:
        for i in r:
            if i == 2048:
                return True
    return False
reset()  # 初始化地图

if __name__ == "__main__":
    test()
