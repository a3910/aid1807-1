
import xinxiguanli.a
def xiugai(L):
    a = input('请输入需要修改的学生姓名')
    for x in L:
        if a in x['name']:
            head = '+' + '-'*45 + '+'
            print(head)
            print('|', ' ', 'a)修改学生姓名', ' '*26,'|')
            print('|', ' ', 'b)修改学生年龄', ' '*26,'|')
            print('|', ' ', 'c)修改学生成绩', ' '*26,'|')
            print(head)
            n = input('请选择需要修改的信息：')
            if n == 'a':
                a1 = input('输入修改后的姓名')
                x['name'] = a1
                print('修改成功！')
                break
            if n == 'b':
                a2 = int(input('输入修改后的年龄'))
                x['age'] = a2
                print('修改成功！')
                break
            if n == 'c':
                a3 = int(input('输入修改后的成绩'))
                x['score'] = a3
                print('修改成功！')
                break
    else:
        print('请输入正确信息')