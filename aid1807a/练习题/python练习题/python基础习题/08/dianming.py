
# 1.模拟点名系统，已知全班名单，随机打印学生姓名进行点名，并得到此学生是否已到，
# 　　输入'y'代表已到，输入'n'代表此人未到，点名完成后打印未到者名单
#自己方法
# students = {'xiaohong', 'xiaolv', 'xiaolan','xiaobai','xiaozi',\
# 'xiaohei','xiaohuang','xiaozhang','xiaowang','xiaoli','xiaozhao',\
# 'tom','tiedan','wangcai','xiaoming','xiaogang','xiaochen','xiaohao'\
# 'jita','erhu'}
# n = int(input("请输入点名人数"))
# renshu = []
# weidao = []
# for x in range(n):
#     renshu.append(students.pop())
# print(renshu)
# for x in range(n):
#     m = input("按学生姓名顺序输入y为到，n为未到")
#     if m == 'y':
#         continue
#     if m == 'n':
#         weidao.append(renshu[x])
#     else:
#         print("请输入y或者n!")
# print('未到学生名单：',weidao)
#方法2
# names = {'xiaohong', 'xiaolv', 'xiaolan','xiaobai','xiaozi',\
# 'xiaohei','xiaohuang','xiaozhang','xiaowang','xiaoli','xiaozhao',\
# 'tom','tiedan','wangcai','xiaoming','xiaogang','xiaochen','xiaohao'\
# 'jita','erhu'}
# yd = set()
# wd = set()
# for x in names:
#     result = input(x + ':y/n')
#     if 'y' == result:
#         yd.add(x)
#     else:
#         wd.add(x)
# print('未到者：',wd)
#方法3
names = {'xiaohong', 'xiaolv', 'xiaolan','xiaobai','xiaozi',\
'xiaohei','xiaohuang','xiaozhang','xiaowang','xiaoli','xiaozhao',\
'tom','tiedan','wangcai','xiaoming','xiaogang','xiaochen','xiaohao'\
'jita','erhu'}
yd = set()
wd = set()
for x in names:
    result = input(x + ':y/n')
    if 'y' == result:
        yd.add(x)
wd = names - yd
print('未到者：',wd)