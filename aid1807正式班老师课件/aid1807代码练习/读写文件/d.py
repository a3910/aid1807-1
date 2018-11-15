try:
    f= open('e.txt','rt')
    print('打开文件成功')

    #...此处代码可以对e进行操作
    s = f.readline()
    print(s)
    s = f.readlines()
    print(s)
    s=f.read()
    print(s)
    s=f.writable()
    print(s)
    f.close()
    print('关闭文件')
except OSError:
    print('读取失败')

# f= open('e.txt','w')
# print('打开成功')
# f.writelines(['1234\n','abcd\n'])
# f.write('hello\n')
# print('打印成功')

# try:
#     f= open('e.txt','x')
#     print('打开成功')
#     f.writelines(['1234\n','abcd\n'])
#     f.write('hello\n')
#     print('打印成功')
# except FileExistsError:
#     pass

# f= open('e.txt','a')
# print('打开成功')
# f.writelines(['9101112\n','AbCd\n'])
# f.write('return\n')
# print('打印成功')


# def fn():
#     try:
#         f=open('mydata.txt','w')
#         print('打开程序')
#         f.write('张三\t今年20岁\t成绩是:100分\n')
#         f.write('李四\t今年21岁\t成绩是:98分\n')
#         print('打印成功')
#         f.close()
#         print('结束程序')
#     except:
#         print('程序出错')
# fn()
def fm():
    try:
        l=[]
        while True:
            a=input('a')
            if not a:
                break
            b=int(input('b'))
            c=int(input('c'))
            l.append(dict(name=a,age=b,score=c))
    except ValueError:
        print('出错')
    return l
# g=fm()
# print(g)

def write_to_file(l,filename='g.txt'):
    try:
        f=open(filename,'w')
        for d in l:
            f.write(d['name'])
            f.write(' ')
            f.write(str(d['age'])) 
            f.write(' ')
            f.write(str(d['score']))
            f.write('\n')
        f.close()
    except:
        print('出错')
        return l

l=fm()
write_to_file(l)

def read_from_file(filename='g.txt'):
    l=[]
    try:
        f=open(filename)
        L = f.readlines()
        for line in L:
            m = line.strip()
            name, age,score = m.split()  # ['张三','20','100']
            age = int(age)  # 转为整数
            score = int(score)
            l.append({'name': name,
                       'age': age,
                       'score': score})
        f.close()
        return l
    except OSError:
        print('读数据失败')

def print_info(L):
    for d in L:
        print(d['name'], '今年',
              d['age'], '岁,成绩是:',
              d['score'])


L = read_from_file()
print_info(L)


# if __name__ == '__main__':
#     print_info(read_from_file())


#   class A():
#     v = 100
#     def __init__(self):
#         self.v = 200
# class B(A):
#     v = 300
#     def __init__(self):
#         self.v = 400
#         super().__init__()
# a = B()
# print(a.v)