
#   3)生成前40个斐波那契数
#   　　1 1 2 3 5 8 13 ... ...  (第三个数开始都是前面两个数的和)
# 　　　　将这些数列保存在列表中，最后打印这些数
# 　　　　提示：可以while循环，for循环，序列
 #方法1
# fibs = [1, 1]
# a = 1
# b = 1

# while len(fibs) <= 40:
#     #算下一个斐波那契数
#     f = a + b
#     fibs.append(f)
#     #移动a 和 b　变量
#     a = b
#     b = f
#     #将算出的斐波那契数追加到列表中

# print(fibs)

#方法2
# fibs = [1, 1]
# while len(fibs) <= 40:
#     fibs.append(fibs[-2] + fibs[-1])

# print(fibs)
#方法3
fibs = [1, 1]
n = 0
while len(fibs) <= 40:
    fibs.append(fibs[n] + fibs[n + 1])
    n += 1
print(fibs)