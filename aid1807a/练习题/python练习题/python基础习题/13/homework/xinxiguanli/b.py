
import xinxiguanli.a
def shanchu(L):
    a = input('请输入需要删除的学生姓名')
    for x in L:
        if a in x['name']:
            print('删除成功！')
            L.remove(x)
            break
    else:
        print('请输入正确信息')