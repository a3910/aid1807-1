
# 　　实现两个自定义列表相加
# 　　class Mylist:
#       ... 此处自己实现

# 　　L1 = Mylist([1,2,3,4])
#   L2 = Mylist([3,4,5,6])
#   L3 = L1 + L2  #L3 = ([1,2,3,4,5,6])
#   print(L3)
#   L3 = L2 + L1
#   print(L3)  #([3,4,5,6,1,2])


class Mylist:

    def __init__(self, L):
        self.L = [x for x in L]

    def __add__(self, rgh):
        L = [x for x in self.L]
        for x in rgh.L:
            if x not in self.L:
                L.append(x)
        return Mylist(L)

    def __repr__(self):
        return "Mylist(%s)" % repr(self.L)


L1 = Mylist([1, 2, 3, 4])
L2 = Mylist([3, 4, 5, 6])
L3 = L1 + L2
print(L3)
L3 = L2 + L1
print(L1)
print(L2)
print(L3)
