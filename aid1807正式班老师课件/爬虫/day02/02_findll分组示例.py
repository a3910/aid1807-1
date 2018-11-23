import re

s = "A B C D"
p1 = re.compile('\w+\s+\w+')
r1 = p1.findall(s)
print(r1)

# 第1步：['A B','C D']
# 第2步：['A','C']
p2 = re.compile('(\w+)\s+\w+')
r2 = p2.findall(s)
print(r2)

# 第1步：['A B','C D']
# 第2步：[('A','B'),('C','D')]
p3 = re.compile('(\w+)\s+(\w+)')
r3 = p3.findall(s)
print(r3)





