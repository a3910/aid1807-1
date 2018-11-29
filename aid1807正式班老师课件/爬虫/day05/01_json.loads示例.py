import json

# json格式的
jobj = '{"city":"北京"}'
jarray = '["北京","上海"]'
# 转为Python格式
D = json.loads(jobj)
L = json.loads(jarray)
# D为dict,L为列表
print(type(D),D)
print(type(L),L)
















