# 1. 今天是小明的20岁生日, 假设每年有365天,
# 计算它过了多少个星期天,余多少天(不要求精确)

# print('它过了', 20 * 365 // 7, '个星期天')
# print("余", 20 * 365 % 7, '天')

days = 20 * 365

print('它过了', days // 7, '个星期天')
print("余", days % 7, '天')
