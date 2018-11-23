

# 主模块，用来显示2048界面和相应操作
import move2048

clr = {
    0: "\033[0;30;47m",
    2: "\033[0;30;43m",
    4: "\033[0;30;42m",
    8: "\033[0;30;46m",
    16: "\033[0;30;45m",
    32: "\033[0;30;41m",
    64: "\033[0;30;44m",
    128: "\033[0;37;43m",
    256: "\033[0;37;42m",
    512: "\033[0;37;46m",
    1024: "\033[0;37;45m",
    2048: "\033[0;37;47m",
}


def show_map():
    for r in move2048.map2048:
        for c in r:
            print(clr[c] + "      ", end=" ")
        print("\033[0m")
        for c in r:
            text = str(c) if c else ""
            print(clr[c] + text.center(6), end=" ")
        print("\033[0m")
        for c in r:
            print(clr[c] + "      ", end=" ")
        print("\033[0m")


while True:  # 如果游戏不结束，将继续循环
    show_map()
    key = input("请输入操作：")
    if "a" == key:  # lmove.left()
        if move2048.left():
            move2048.fill_to_zero()
    if "d" == key:
        if move2048.right():  # lmove.left()
            move2048.fill_to_zero()
    if "w" == key:
        if move2048.up():  # lmove.left()
            move2048.fill_to_zero()
    if "s" == key:
        if move2048.down():  # lmove.left()
            move2048.fill_to_zero()
    if move2048.is_gameover():
        print('游戏结束啦小兄弟，你太弱了')
        break
    if move2048.is_2048():
        print("流弊流弊2048!，但是你还是太弱了，略略略")
        break
    if "q" == key:
        exit()
