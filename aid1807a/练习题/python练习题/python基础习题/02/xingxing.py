
n = input("请输入距离左侧距离")
n = int(n)
y = " "

# print(y * n,"     *     ")
# print(y * n,"    ***    ")
# print(y * n,"   *****   ")
# print(y * n,"  *******  ")
# print(y * n," ********* ")
# print(y * n,"***********")

for x in range(6):
    b = 11
    star = (2*x + 1) * '*'
    d = star.center(b) 
    print(y * n , d)