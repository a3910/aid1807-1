#方法１
d = {}
list1 = ['a', 'b', 'c']
list2 = [1, 2, 3]
for i in range(len(list2)):
    d[list1[i]] = list2[i]
print(d)

#引申思考
# list1 和 list2 不等长怎么办
#1
d = {}
list1 = ['a', 'b', 'c']
list2 = [1, 2, 3]
times = min(len(list1), len(liest2))
for i in range(times):
    d[list1[i]] = list2[i]

#2
d = {}
list1 = ['a', 'b', 'c']
list2 = [1, 2, 3]
for i in range(len(list1)):
    if i < len(list2):
        d[list1[i]] = list2[i]
    else:
        d[list1[i]] = None