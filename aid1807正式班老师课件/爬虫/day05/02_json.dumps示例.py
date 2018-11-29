import json

# Python格式
D = {"name":"战神"}
L = [1,2,3]
T = (4,5,6)
# 转为json格式
JD = json.dumps(D,ensure_ascii=False)
JL = json.dumps(L)
JT = json.dumps(T)
# 判断类型
print(type(JD),JD)
print(type(JL),JL)
print(type(JT),JT)












