
a = []
while True:
    d = {}
    name = input('请输入姓名(直接回车停止输入):')
    if len(name) == 0:
        break
    age = int(input('请输入年龄:'))
    score = int(input('请输入成绩:'))
    d['name'] = name
    d['age'] = age
    d['score'] = score
    a.append(d)
print('|', '姓名', '   ', '年龄', '    ', '成绩', '|')
print('|', '-'*5, '+', '-'*6, '+', '-'*6, '|')
for x in range(len(a)):
    y = a[x]
    print('|', ' '*(5-len(y['name'])//2, y['name'], ' '*(5-((5-len(y['name'])//2)-len(y['name'])), '|', ' ', y['age'], ' ', '|', ' ', y['score'], ' ', '|')
print('|', '-'*5, '+', '-'*6, '+', '-'*6, '|')
beter = int(input('请输入分数线'))
print('|', '姓名', '   ', '年龄', '    ', '成绩', '|')
print('|', '-'*5, '+', '-'*6, '+', '-'*6, '|')
for z in range(len(a)):
    if beter <= a[z]['score']:
        print('|', ' ', a[z]['name'], ' ', '|', ' ', a[z][
              'age'], ' ', '|', ' ', a[z]['score'], ' ', '|')
print('|', '-'*5, '+', '-'*6, '+', '-'*6, '|')