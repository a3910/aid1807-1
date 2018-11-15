# L = []
# t1=0
# t2=1
# for i in range(40):
#     L.append(t2)
#     t = t1 + t2
#     t1 = t2
#     t2 = t
# print(L)


# # L = []
# # a = 0 
# # b = 1
# # while len(L) < 40:
# #     L .append(b)
# #     c = a+b
# #     a = b
# #     b =c
# # print(L)

# l = []
# def  create_fbnq(n):                                                                   
#     a,b=0,1                                      
#     i=0                                          
#     while i<n:                                    
#         yield b                                             
#         a,b=b,a+b
#         i+=1                                              
# for x in  create_fbnq(40):                                     
#     l.append(x)
# print(l)                                          
# print()     

# l = []
# n = 2
# while n < 100:
#     i = 2    
#     for i in range(2,n):
#         if n % i == 0:
#             break                    
#     else:
#         l.append(n)
#     n += 1
# print(l)



# 练习:
#   1. 写一个程序模拟现实电子字典
#      1) 输入一些单词和解释,将单词作为键,将解释作用值,将这些数据输入到字典中,
#当输入空单词时结束输入
#      2) 输入要查找的词,给出该单词的解释.如果单词不存在则提示用户不存在该单词

# d = {}
# while True:
#     word = input('输入单词:')
#     if word == '':
#         break
#     note = input('输入注释:')
#     d[word] = note
# print(d)
# while True:
#     n = input('查找单词:')
#     if n in d:
#         print(d[n])
#     else:
#         print('信息不存在')
#         break
 # 2. 学生信息管理项目
  #   输入任意个学生的姓名,年龄,成绩.每个学生的信息存入一个字典内,然后放入到列表中
  #      (每个学生需要手动输入)
  #   如:

  #     请输入姓名: tarena     
  #     请输入年龄: 20
  #     请输入成绩: 99
  #     请输入姓名: name2
  #     请输入年龄: 30
  #     请输入成绩: 88
  #     请输入姓名: <回车> 结束输入
  #   形成内部存储格式如下:
  #     [{'name':'tarena', 'age':20, 'score':99}, {'name':name2, 'age':30, 'score':88}]
  #   1) 打印出存有学生信息的字典的列表
  #   2) 按表格形式打印出学生信息:
  #     +---------------+----------+----------+
  #     |     name      |   age    |   score  |
  #     +-----while True:----------+----------+----------+
  #     |    tarena     |    20    |     99   |
  #     |     name2     |    30    |     88   |
  #     +---------------+----------+----------+

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

while True: 
    n = input('查找名字:')
    if n == '':
        break
    score1 = input('修改分数')
    age1 = input('修改年龄')
    name1 = input('修改名字:')
    for b in l:
     if n in b['name']:
        b['score']=int(score1)
        b['name']=name1
        b['age']=int(age1)
        break
    else:
        break



# print('+'+'-'*15+'+'+'-'*10+'+'+'-'*10+'+')
# print('|'+' '*5+'name'+' '*6+'|'+' '*3+'age'+' '*4+'|'+' '*3+'score'+' '*2+'|')
# print('+'+'-'*15+'+'+'-'*10+'+'+'-'*10+'+')
# for b in l:
#     name = b['name'].center(15)
#     age = str(b['age']).center(10)
#     mark = str(b['mark']).center(10)
#     print('|%s|%s|%s|'%(name,age,mark))
# print('+'+'-'*15+'+'+'-'*10+'+'+'-'*10+'+')
# print(b)    



# print(l)
# # while True:
# name = input('查找姓名：')
# if name in b:
#     print(b[name])
#     print(b[age])
#     print(b[mark])
# print(b)


# # d = {}
# # x = []
# # y = []
# # z = []
# # while True:
# #     a = input('请输入姓名:')    
# #     if a == '':
# #         break
# #     b = input('请输入年龄:') 
# #     c = input('请输入成绩:') 
# #     x.append(a)  
# #     y.append(b)
# #     z.append(c)
# l = []   #创建一个新的列表，用此列表
# while True:
#     name = input('请输入姓名:')    
#     if name == '':
#         break
#     age = input('请输入年龄:') 
#     fen = input('请输入成绩:') 
#     d = {}
#     # d = {'name':name,'age':age,'fen':fen}
#     d['name'] = name
#     d['age'] = age
#     d['fen'] = fen
#     l.append(d)
# print(l)

# print("+---------------+----------+----------+")
# print("|     name      |   age    |   score  |")
# print("+---------------+----------+----------+")
# for d in l:
#     name = d['name'].center(15)
#     age = str(d['age']).center(10)
#     fen = str(d['fen']).center(10)
#     print("|%s|%s|%s|" % (name, age, fen))
 
# # print("|   xiaozhang   |    20    |   100    |")
# # print("|     xiaoli    |    18    |    98    |")
# print("+---------------+----------+----------+")
# print(d)
# # d = dict([('name', a), ('age', b),('fen',c)])
# # print(d)

# # d = {}
# # name = 'tarena'
# # age = '20'
# # fen = '99'
# # d = dict([('name', name), ('age',age),('fen',fen)])
# # print(d)




 # 2. 学生信息管理项目
  #   输入任意个学生的姓名,年龄,成绩.每个学生的信息存入一个字典内,然后放入到列表中
  #      (每个学生需要手动输入)
  #   如:

  #     请输入姓名: tarena     
  #     请输入年龄: 20
  #     请输入成绩: 99
  #     请输入姓名: name2
  #     请输入年龄: 30
  #     请输入成绩: 88
  #     请输入姓名: <回车> 结束输入
  #   形成内部存储格式如下:
  #     [{'name':'tarena', 'age':20, 'score':99}, {'name':name2, 'age':30, 'score':88}]
  #   1) 打印出存有学生信息的字典的列表
  #   2) 按表格形式打印出学生信息:
  #     +---------------+----------+----------+
  #     |     name      |   age    |   score  |
  #     +-----while True:----------+----------+----------+
  #     |    tarena     |    20    |     99   |
  #     |     name2     |    30    |     88   |
  #     +---------------+----------+----------+

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
# 3，改写之前的学生信息管理程序改为俩个函数：
#    1.写一个函数input_student()
#   用于返回学生信息的字典的列表（以前格式一样）
#    2.写一个函数output_student(lst)
#     此函数传入一个列表lst，即字典的列表
#     此函数把lst的内容以表格形式打印出来
#    def input_student():
#      ...
#    def output_student():
#      ...


# L = input_student()  #获取学生信息的列表
# output_student(L)    #把L以列表的形式打印

# def input_student():
#     L = []  # 创建一个容器准备放入
#     while True:
#         name = input('请输入姓名: ')
#         if not name:  # 如果名字为空,结束输入操作
#             break
#         age = int(input("请输入年龄: "))
#         score = int(input("请输入成绩: "))
#         d = {}  # 每次都会执行{} 来创建新的字典
#         d['name'] = name
#         d['age'] = age
#         d['score'] = score
#         L.append(d)
#     return L

# def output_student(lst):
#     # 打印表格
#     print("+---------------+----------+----------+")
#     print("|     name      |   age    |   score  |")
#     print("+---------------+----------+----------+")
#     for d in lst:
#         n = d['name'].center(15)
#         a = str(d['age']).center(10)
#         s = str(d['score']).center(10)
#         print("|%s|%s|%s|" % (n, a, s))

#     # print("|   xiaozhang   |    20    |   100    |")
#     # print("|     xiaoli    |    18    |    98    |")
#     print("+---------------+----------+----------+")
 

# L = input_student()  # 获取学生信息的列表
# # print(L)
# output_student(L)  # 把L 以列表的形式打印
