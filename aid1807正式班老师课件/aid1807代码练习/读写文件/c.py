def fm():
    l = []
    while True:
        a = input('name')
        if not a:
            break
        b = input('age')
        c = input('score')
        l.append(dict(name=a, age=b, score=c))
    return l
# g=fm()
# print(g)


def write_to_file(l, filename='x.txt'):
    f = open(filename, 'w')
    for d in l:
        f.write(d['name'])
        f.write(' ')
        f.write(d['age'])
        f.write(' ')
        f.write(d['score'])
        f.write('\n')
    f.close()
    return l


l = fm()
write_to_file(l)


def read_from_file(filename='x.txt'):
    l = []
    try:
        while True:
            f = open(filename,'r')
            s = f.readline()
            if not s:
                break
            m = s.strip()
            lst = s.split()
            l.append(dict(name=lst[0], age=int(lst[1]), score=int(lst[2])))
            f.close()
        return l
    except OSError:
        print('读取失败')


def print_info(L):
    for d in L:
        print(d['name'], '今年',
              d['age'], '岁,成绩是:',
              d['score'])


L = read_from_file()
print_info(L)


# if __name__ == '__main__':
#     print_info(read_from_file())


# def read_from_file(filename='x.txt'):
#     l=[]
#     try:
#             f=open(filename)
#             s = f.readline()
#             for x in s:
#                 m = x.strip()
#                 lst = m.split()
#                 print(lst)
#                 l.append(dict(name=lst[0],age=int(lst[1]),score=int(lst[2])))
#                 f.close()
#             return l
#     except OSError:
#         print('读数据失败')
