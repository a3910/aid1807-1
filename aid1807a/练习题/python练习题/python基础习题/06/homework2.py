
  # 3. 编写程序，计算并打印如下数列的前20项之和
  # 　　2/1, 3/2, 5/3, 8/5, 13/8, 21/13 ...

fibs = [1, 2]
s = []
for x in range(20):
    s.append(fibs[-1]/fibs[-2])
    fibs.append(fibs[-1] + fibs[-2])

print(sum(s))