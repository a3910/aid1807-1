
x = float(input("请输入工资"))

if x <= 3500:
    y = 0
elif 3500 < x <= 5000:
    y = (x - 3500) * 0.03
elif 5000 < x <= 8000:
    y = 1500 * 0.03 + (x - 5000) * 0.1
elif 8000 < x <= 12500:
    y = 1500 * 0.03 + 3000 * 0.1 + (x - 8000) * 0.2
elif 12500 < x <= 38500:
    y = 1500 * 0.03 + 3000 * 0.1 + 4500 * 0.2 + (x - 12500) * 0.25
elif 38500 < x <= 58500:
    y = 1500 * 0.03 + 3000 * 0.1 + 4500 * \
        0.2 + 26000 * 0.25 + (x - 38500) * 0.3
elif 58500 < x <= 83500:
    y = 1500 * 0.03 + 3000 * 0.1 + 4500 * 0.2 + \
        26000 * 0.25 + 20000 * 0.3 + (x - 58500) * 0.35
elif x > 83500:
    y = 1500 * 0.03 + 3000 * 0.1 + 4500 * 0.2 + 26000 * \
        0.25 + 20000 * 0.3 + 25000 * 0.35 + (x - 83500) * 0.45
else:
    print("请输入正确数值")
    
z = x - y

print("纳税数额", y, "税后收入", z)
