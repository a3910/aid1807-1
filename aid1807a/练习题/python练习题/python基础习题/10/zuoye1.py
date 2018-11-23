
# 　　1.(函数练习)写程序打印杨辉三角
# 　　　　　　1
#      1 1
#     1 2 1
#    1 3 3 1
#   1 4 6 4 1
#  1 5 10 10 5 1
#  只打印6层

# n=1, s=[1]
# n=2, s=[1,1]
# n=3, s=[1,2,1]
# n=4, s=[1,3,3,1]
# n=5, s=[1,4,6,4,1]
# n=6, s=[1,5,10,10,5,1]
#         [1]
#         [s[0], s[0]]
#         [s[0], s[0]+s[1],s[1]]
#         [s[0], s[0]+s[1],s[1]+s[2],s[2]]
#         [s[0],s[0]+s[1],s[1]+s[2],s[2]+s[3],s[3]]
#         [s[0],s[0]+s[1],s[1],+s[2],s[2]+s[3],s[3]+s[4],s[4]]
n = int(input('输入数字'))
yh = [1]
yh_print = []
if yh:
    yh_print.append(yh[0])
for x in range(n):
    if len(yh_print) >= 2:
        for i in range(1,len(yh_print)):
            yh_print.append(yh_print[i-1] + yh_print[i])
if yh:
    yh_print.append(yh[-1])
    print(yh_print)