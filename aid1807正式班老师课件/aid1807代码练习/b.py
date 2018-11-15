# 8
# 练习:
#   1. 写一个程序模拟现实电子字典
#      1) 输入一些单词和解释,将单词作为键,将解释作用值,将这些数据输入到字典中,当输入空单词时结束输入
#      2) 输入要查找的词,给出该单词的解释.如果单词不存在则提示用户不存在该单词






#   2. 学生信息管理项目
#     输入任意个学生的姓名,年龄,成绩.每个学生的信息存入一个字典内,然后放入到列表中
#        (每个学生需要手动输入)
#     如:
#       请输入姓名: tarena
#       请输入年龄: 20
#       请输入成绩: 99
#       请输入姓名: name2
#       请输入年龄: 30
#       请输入成绩: 88
#       请输入姓名: <回车> 结束输入
#     形成内部存储格式如下:
#     [{'name':'tarena', 'age':20, 'score':99}, {'name':name2, 'age':30, 'score':88}]
#     1) 打印出存有学生信息的字典的列表
#     2) 按表格形式打印出学生信息:
#       +---------------+----------+----------+
#       |     name      |   age    |   score  |
#       +---------------+----------+----------+
#       |    tarena     |    20    |     99   |
#       |     name2     |    30    |     88   |
#       +---------------+----------+----------+






# 9
# # 练习:
#   1. 写一个函数 get_chinese_char_count,此函数实现的功能是从一个给定的字符串中返回中文字符的个数
#     def get_chinese_char_count(x):
#         ...

#     s = input("请输入中英文混合的字符串:")  # hello中国
#     print('您输入的中文的字符个数是:', get_chinese_char_count(s))  # 2

#   2. 写一个函数isprime(x) 判断x是否为素数，如果为素数，返回True,否则返回False
#      如:
#        print(isprime(5))  # True
#        print(isprime(6))  # False
#   3. 写一个函数prime_m2n(m, n) 返回从m开始，到n结束范围内的素数，返回这些素数的列表，并打印．
#     如:
#       L = prime_m2n(10, 20)
#       print(L)  # [11, 13, 17, 19]
#   4. 写一个函数 primes(n)  返回指定范围内n(不包含n)的全部素数的列表，并打印这些列表
#     如:
#       L = primes(10)
#       print(L)  # [2, 3, 5, 7]
#     1) 打印100以内全部素数的和
#     2) 打印200以def main():
    # L = []
    # while True:
    #     # 此处先显示菜单
    #     s = input("请选择: ")
    #     if s == 'q':
    #         break
    #     elif s == '1':
    #         L += input_student()
    #     elif s == '2':
    #         output_student(L)
    #     ...


#   5.  改写之前的学生信息管理程序，将其改为两个函数：
#     def input_student():
#           ...
#     def output_student(L):
#         ....
#     input_student用于从键盘读取学生数据，形成列表并返回列表
#     output_student(L) 用于将传和的列表L 打印成为表格
#    测试代码：
#      L = input_student()
#      print(L)
#      output_student(L)  # 打印表格


# 10.
# 练习:
#   1. 写一个函数mysum(n) ,此函数用来计算
#      1+2+3+4+....+n的和
#     如:
#       print(mysum(100))  # 5050

# def mysum(n):
#   sum_n = 0
#   n = int(input('输入数字:'))
#   for i in range(1,n+1):
#     sum_n += i

#   print(sum_n)
# mysum(100)



# c答案


d = {}  # 创建空典
while True:
    words = input('请输入单词: ')
    if words == '':
        break
    trans = input('请输入解释: ')
    d[words] = trans

while True:
    words = input("请输入要查找的单词: ")
    if words in d:
        print(words, "的解释是:", d[words])
    else:
        print(words, '这个单词在字典中不存在')

# b = {}
# l = []
# y = []
# while True:
#     n = input('输入单词')    
#     if n == '':
#         break
#     m = input('注释')   
#     l.append(n)  
#     y.append(m)
# b = {l[k]:y[k] for k in range(len(l))}
# print(b)
# while True:
#     m = input('输入查找的单词:')
#     if m in b:
#         print(b[m])
#     elif m == '':
#         pass
#     elif m == 'q':
#         break
#     else:
#         print('该单词不存在')





L = []  # 创建一个新的列表，用此列表准备保存学生信息
# 录入学生信息
while True:
    n = input("请输入姓名: ")
    if not n:
        break
    a = int(input("请输入年龄: "))
    s = int(input('请输入成绩: '))
    # 创建一个新的字典，把学生的信息存入字典中
    d = {}  # 每一次都重新创建一个新的字典
    d['name'] = n
    d['age'] = a
    d['score'] = s
    L.append(d)

print(L)  # 打印结果


print("+---------------+----------+----------+")
print("|     name      |   age    |   score  |")
print("+---------------+----------+----------+")
for d in L:
    n = d['name']
    a = d['age']
    s = d['score']
    print('|%s|%s|%s|' % (n.center(15),
                          str(a).center(10),
                          str(s).center(10)
                          )
          )

# print("|    tarena     |    20    |     99   |")
# print("|     name2     |    30    |     88   |")
print("+---------------+----------+----------+")

l = []
while True:
    name = input('输入名字:')
    if name == '':
        break
    age = input('输入年龄:')
    mark = input('输入分数:')
    b = {}    
    b = {'name':name,'age':age,'mark':mark }
    l.append(b)

print(l)
# print(b.items())
# [{'name':'tarena', 'age':20, 'score':99}, {'name':name2, 'age':30, 'score':88}]
while True:
  n = input('查找名字:')
  if n == '':
      break
  for b in l:
    if n in b['name']:
        print(b)
        break
    else:
        print('信息不存在，请重新输入')
        break











#   2. 实现带有界面的学生信息管理系统
#     操作界面:
#       +-------------------------+
#       | 1)  添加学生信息          |
#       | 2)  显示学生信息          |
#       | 3)  删除学生信息          |
#       | 4)  修改学生信息          |
#       | q)  退出                 |
#       +-------------------------+
#       请选择: 1

#     修改之前学生信息管理程序,学生信息依旧为:
#          姓名,年龄,成绩
#     要求: 每个功能写一个函数与之相对应


# def input_student():
#   L = []  # 创建一个新的列表，用此列表准备保存学生信息
#       # 录入学生信息
#   while True:
#       n = input("请输入姓名: ")
#       if not n:
#         break
#       a = int(input("请输入年龄: "))
#       s = int(input('请输入成绩: '))
#           # 创建一个新的字典，把学生的信息存入字典中
#       d = {}  # 每一次都重新创建一个新的字典
#       d['name'] = n
#       d['age'] = a
#       d['score'] = s
#       L.append(d)
#   return L  

# def output_student(L):
#   print("+---------------+----------+----------+")
#   print("|     name      |   age    |   score  |")
#   print("+---------------+----------+----------+")
#   for d in L:
#       n = d['name'].center(15)
#       a = str(d['age']).center(10)
#       s =str(d['score']).center(10)
#       print("|%s|%s|%s|" % (n, a, s))
     

#   # print("|    tarena     |    20    |     99   |")
#   # print("|     name2     |    30    |     88   |")
#   print("+---------------+----------+----------+")  



# def show_menu():
#     print('+-------------------------+')
#     print('| 1)  添加学生信息        |')
#     print('| 2)  显示学生信息        |')
#     print('| 3)  删除学生信息        |')
#     print('| 4)  修改学生成绩        |')
#     print('| q)  退出                |')
#     print('+-------------------------+')


# def delete_student(L):
#   while True:
#     n = input('查找名字:')
#     if n == '':
#         break
#     for d in L:
#       print(d)
#       print(n)
#       if n in d['name']:
#           L.remove(d)
#           break
#       print(L)
#     else:
#         print('信息不存在，请重新输入')
        

# def check_student(L):
#   while True:
#     n = input('查找名字:')
#     if n == '':
#         break
#     for d in L:
#       if n in d['name']:
#           print(d)
#           break
#     else:
#       print('信息不存在，请重新输入')




# def main():
#   L = []
#   while True:
#         # 此处先显示菜单
#     s = input("请选择: ")
#     if s == 'q':
#         break
#     elif s == '1':
#         L += input_student()
#     elif s == '2':
#         output_student(L)
#     elif s == '3':
#         delete_student(L)
#     elif s == '4':
#         check_student(L)
# main()

# l = {}
# aa= [{'name':'xiaoming','age':2,'score':3},
# {'name':'xiaoxin','age':2,'score':3},
# {'name':'xiaoli','age':2,'score':3}]
# print(aa)
# n = input('查找名字')
# for l in aa:
#   if n in l['name']:
#     aa.remove(l)
#     break
# print(aa)

# a=[1,2,3]
# for i in a:
#   del a[0]
# print(i)











#   示意:
#     def main():
#         L = []
#         while True:
#             # 此处先显示菜单
#             s = input("请选择: ")
#             if s == 'q':
#                 break
#             elif s == '1':
#                 L += input_student()
#             elif s == '2':
#                 output_student(L)
#             ...
#     main()



# 练习:
#   1. 给出一个数n,写一个函数myfac(n)来计算n!(n的阶乘)
#     n! = 1*2*3*4*....*n
  #     print(myfac(5))  # 120

# def myfac(n):
#   n1 = 1
#   for i in range(1,n+1):
#     n1 *= i
#   return n1
# print(myfac(5)) 
# def myfac(n):
#   if n == 1:
#     return 1
#   return n * myfac(n-1)
# print(myfac(5))
  # 2. 给出一个数n,写一个函数计算:
  #     1 + 2**2 + 3**3 + 4**4 + .... n**n的和
# def myggy(n):
#   sum_n = 0
#   for n in range(1,n+1):
#     sum_n += n**n
#   return sum_n
# print(myggy(2))
# print(myggy(3))
def f(n):
  return sum(map(lambda x :x**x,range(1,n+1)))
print(f(4))  


  # 3. 写程序打印杨辉三角 (只打印6层)
  #         1
  #        1 1
  #       1 2 1
  #      1 3 3 1
  #     1 4 6 4 1
  #   1 5 10 10 5 1

def get_yh_list(n):  # n代表层数
    m = []  # 用于存储每一行数据
    l = [1]  # L代表正要生成的行
    for _ in range(n):
        # print(l)
        m.append(l)
        # 计算下一行
        next_l = [1]  # 下一行的最左边的元素为1
        # 计算中间的数据元素
        for i in range(len(l) - 1):  # i 代表索引
            next_l.append(l[i] + l[i + 1])
        # 最后一个是1
        next_l.append(1)
        l = next_l  # L绑定新生成的一行
    return m

def get_string(l):
    # [1, 2, 1] ---> ['1', '2', '1']
    string_list = [str(x) for x in l]
    # ['1', '2', '1'] ---> '1 2 1'
    return ' '.join(string_list)

def print_YH_List(lst):
    last_line = get_string(lst[-1])
    max_len = len(last_line)  # 算出最后一行有多长

    for x in lst:
        line = get_string(x)
        print(line.center(max_len))

YH = get_yh_list(6)  # YH 绑定数据列表
# print(YH)
print_YH_List(YH)

                 
