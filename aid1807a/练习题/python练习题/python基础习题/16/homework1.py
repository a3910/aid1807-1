# 写一个程序，输入很多人的名字，年龄，地址存入文件infos.txt中
# 完成输入后试查看文件格式是否为想要的


def input_infos():
    while True:
        name = input('请输入姓名(回车结束输入)')
        if len(name) == 0:
            break
        age = input('请输入年龄')
        if len(age) == 0 or age == ' ':
            age = '未填写'
        home = input('请输入住址')
        if home == ' ' or len(home) == 0:
            home = '未填写'
        f.write(name,age,home+'\n')


f = open('infos.txt', 'a')
input_infos()
f.close()
