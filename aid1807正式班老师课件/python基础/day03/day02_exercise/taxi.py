# 1. 北京出租车计价器
#   收费标准:
#     3公里以内收费 13 元
#     基本单价 2.3 元 / 公里(超出3公里以外)
#     空驶费: 超过15公里后,每公里加收单价的50%空驶费(3.45元/公里)
#   要求: 输入公里数,打印出费用金额(以元为单位进行四舍五入)
def taxi_meter():
    n = int(input('输入公里数:'))
    pay = 13
    if n > 3:
        pay += 2.3*(n-3)            
    if n > 15:        
        pay += 0.5 * 2.3 * (n - 15)        
    return pay
print(taxi_meter())

km = int(input("请输入公里数: "))
# 方法2
pay = 13
if km > 3:
    pay += 2.3 * (km - 3)
    print(pay)
if km > 15:
    pay += 0.5 * 2.3 * (km - 15)


print("您需要支付", round(pay), '元')
# 方法1
if km <= 3:
    pay = 13
elif 3 < km <= 15:
    pay = 13 + 2.3 * (km - 3)
elif km > 15:
    pay = 13 + 2.3 * (km - 3) + 0.5 * 2.3 * (km - 15)

print("您需要支付", round(pay), '元')

