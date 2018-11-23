
x = input("请输入成绩")
x = float(x)

if 0 <= x <= 100:
    if 0 <= x < 60:
        print("不及格")
    elif 60 <= x < 80:
        print("及格")
    elif 80 <= x < 90:
        print("良好")
    else:
        print("优秀")
else:
    print("请输入有效数值")
