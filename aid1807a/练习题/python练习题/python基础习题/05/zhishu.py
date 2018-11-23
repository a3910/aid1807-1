
# 2)计算出100以内的所有质数，将这些质数存于列表中，最后打印出这些质数

zhishu = []
#算法1
# for n in range(1, 101):
#     for m in range(2, n):
#         if n % m == 0:
#             break
#     else:
#         zhishu.append(n)
# print(zhishu)
#算法2
end = int(input('请输入最大范围'))
for n in range(1, end):
    #如果m ** 2 如果已经大于　n　，那么之后就没有必要在算了
    for m in zhishu[1:]:
        if n % m == 0:
            break
    else:
        zhishu.append(n)
print('计算结果')
print(zhishu)