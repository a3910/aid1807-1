
  # 2.假设有一个列表有很多数据，还有重复的，例如：
  # L = [9,8,4,6,8,9,4,1,...]
  # 打印出列表中的数据，要求重复的只打印一次，打印的顺序以列表中第一次出现的顺序为准
  # 如：上述列表打印[9,8,4,6,1,...]
  # 提示:列表和集合组合使用
#方法1
L = list('112223364445455')
already = set()
for a in L:
    if a not in already:
        print(a, end = ' ')
        already.add(a)
print()
#方法2
L = list('112223364445455')
s = set(L)
index = [L.index(x) for x in s]
index.sort()
for i in index:
    print(L[i], end = ' ')
print()
#方法3
L = list('112223364445455')
s = set(L)
result = []
for x in L:
    if x in s:
        s.remove(x)
        result.append(x)
print(result)
#方法4
L = list('112223364445455')
result = []  #用来存储结果的列表
for x in L:
    if x not in result:
        result.append(x)
print(result, end = ' ')
print()