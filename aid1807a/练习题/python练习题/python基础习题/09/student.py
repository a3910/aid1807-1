
# 4.编写函数input_student()获取学生信息，以学生姓名为空结束
#     返回学生信息的列表(列表里是字典)学生信息有姓名，年龄，成绩
#     [{'name':'name1', 'age':10, 'score':20}...]

#     编写函数output_student以漂亮表格形式打印L列表中的学生信息
#     输入学生分数线，把高于这个成绩的学生信息打印出来
#     参见：以前的
def input_students():
    L = []
    while True:
        s = {}
        name = input("请输入学生姓名")
        if len(name) == 0:
            break
        age = input('请输入学生年龄')
        score = int(input('请输入学生成绩'))
        s['name'] = name
        s['age'] = age
        s['score'] = score
        L.append(s)
    return L


def output_student(L):
    name_w = 15
    age_w = 10
    score_w = 10
    print()
    head1 = '+' + '-'*name_w + '+' + '-'*age_w + '+' + '-'*score_w + '+'
    print(head1)
    head_text = '|' + '姓名'.center(name_w - 2) +\
    '|' + '年龄'.center(age_w - 2)+ '|' + '成绩'.center(score_w - 2) + '|'
    print(head_text)
    print(head1)

    for i in L:
        fmt = '|%s|%s|%s|'
        name_text = i['name'].center(name_w)
        age_text = str(i['age']).center(age_w)
        score_text = str(i['score']).center(score_w)
        print(fmt % (name_text, age_text, score_text))
    print(head1)


L = input_students()
output_student(L)


L1 = sorted(L, key = (lambda d:d['score']))
output_student(L1)
score = int(input('请输入分数线'))
t = []
for i in L:
    if i['score'] >= score:
        t.append(i)

output_student(t)

