
def input_students():
    L = []
    while True:
        s = {}
        name = input("请输入学生姓名(回车结束输入)")
        if len(name) == 0:
            break
        age = int(input('请输入学生年龄'))
        score = int(input('请输入学生成绩'))
        s['name'] = name
        s['age'] = age
        s['score'] = score
        L.append(s)
    return L