
# 2.打印1-20的整数，每行5个，打印4行
#    可以将if语句嵌入while语句中
#print(n,sep=" ",end=" ")
n = 0
while n < 20:
    n = n + 1
    print(n,end = ' ')
    if n % 5 == 0:
        print('',end = '\n')