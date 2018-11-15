def get_op():
    s = input('请输入您的操作')
    if s == '求最大':
        return max(l)
    elif s == '求最小':
        return min


l = [2, 3, 5, 7, 9]
print(l)
f = get_op()
print(f)
