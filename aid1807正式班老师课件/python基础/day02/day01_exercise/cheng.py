# 2. 中国古代的秤是16两一斤,请问中国古代
# 的216两是古代的几斤几两，写程序打印出来

# liang = 216

# jin = liang // 16
# liang %= 16

# print("216两是古代的", jin, "斤", liang, '两')

liang = 16
jin = 216 // liang
l = 216 % liang

print('216是%d斤%d两'%(jin,l)) 