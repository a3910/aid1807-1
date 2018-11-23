
import chengjipaixu.dayin1
import xinxiguanli.a
import xinxiguanli.b
import xinxiguanli.c

while True:
    head = '+' + '-'*45 + '+'
    print(head)
    print('|', ' ', 'a)添加学生信息', ' '*26,'|')
    print('|', ' ', 'd)删除学生信息', ' '*26,'|')
    print('|', ' ', 'm)修改学生信息', ' '*26,'|')
    print('|', ' ', '1)按学生成绩由高到低显示学生信息', ' '*8,'|')
    print('|', ' ', '2)按学生成绩由低到高显示学生信息', ' '*8,'|')
    print('|', ' ', '3)按学生年龄由高到低显示学生信息', ' '*8,'|')
    print('|', ' ', '4)按学生年龄由低到高显示学生信息', ' '*8,'|')
    print('|', ' ', 'q)退出', ' '*34,'|')
    print(head)
    n = input('请选择：')

    if n == 'a':
        L = xinxiguanli.a.input_students()
    if n == 'd':
        xinxiguanli.b.shanchu(L)
    if n == 'm':
        xinxiguanli.c.xiugai(L)
    if n == '1':
        chengjipaixu.dayin1.score_gd(L)
    if n == '2':
        chengjipaixu.dayin1.score_dg(L)
    if n == '3':
        chengjipaixu.dayin1.age_gd(L)
    if n == '4':
        chengjipaixu.dayin1.age_dg(L)
    if n == 'q':
        exit(0)