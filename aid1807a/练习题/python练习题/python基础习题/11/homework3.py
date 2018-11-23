
# 3.改写之前学生信息的程序：
# 　　输入5个学生成绩
# 　　1)按成绩从高至低打印学生信息
#   2)按年龄从高至低打印学生信息
#   3)按年龄从低至高打印学生信息
# 　　4)按原来输入顺序打印学生信息(保持原列表不变)
infos = []

def input_student():
    while True:
        name = input("请输入学生姓名(直接回车结束)")
        if len(name) == 0:
            break
        age = int(input('请输入年龄'))
        score = int(input('请输入成绩'))
        d = {'name':name, 'age':age, 'score':score}
        infos.append(d)
    return infos



input_student()
#定义表格的各个列的宽度
name_w = 15
age_w = 10
score_w = 10
head1 = '+' + '-'*name_w + '+' + '-'*age_w + '+' + '-'*score_w + '+'
def print_all(fn):
    print()
    print(head1)
    head_text = '|' + '姓名'.center(name_w - 2) +\
    '|' + '年龄'.center(age_w - 2)+ '|' + '成绩'.center(score_w - 2) + '|'
    print(head_text)
    return fn



@ print_all
def print_a(i):
    fmt = '|%s|%s|%s|'
    name_text = i['name'].center(name_w)
    age_text = str(i['age']).center(age_w)
    score_text = str(i['score']).center(score_w)
    print(fmt % (name_text, age_text, score_text))

for i in infos:
    print_a(i)
print(head1)
#输入学生分数线
# print('按学生成绩从高至低打印')
# def getscore():
#     return L['score']


# s1 = sorted(infos, key=getscore,reverse=True)

