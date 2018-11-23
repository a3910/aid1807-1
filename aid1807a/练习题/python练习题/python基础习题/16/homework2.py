
# 练习2:
#   写一个程序，读入infos.txt中的内容，以表格的形式打印这些内容

#   提示：
#   　str.split
#    str.sprip
#    F.readline
#    F.readlines()

f = open('infos.txt', 'r')
a = f.readlines()

L = []
for x in a:
    m = x.split()
    y = m[0]
    L.append(y)


def output():
    name_w = 15
    age_w = 10
    score_w = 20
    head1 = '+' + '-'*name_w + '+' + '-'*age_w + '+' + '-'*score_w + '+'
    print(head1)
    head_text = '|' + '姓名'.center(name_w - 2) +\
        '|' + '年龄'.center(age_w - 2) + '|' + '住址'.center(score_w - 2) + '|'
    print(head_text)
    print(head1)

    n = 0
    while n < len(L):
        fmt = '|%s|%s|%s|'
        name_text = L[n].center(name_w)
        age_text = L[n+1].center(age_w)
        score_text = L[n+2].center(score_w)
        print(fmt % (name_text, age_text, score_text))
        n += 3

    print(head1)

output()
f.close()
