import requests

url = "http://www.baidu.com/"
headers = {"User-Agent":"Mozilla/5.0"}

res = requests.get(url,headers=headers)
# 查看响应编码,百度给的默认ISO-8859-1
res.encoding = "utf-8"
# 查看响应内容(字符串)
print(res.text)
# 查看响应内容(字节流)
print(res.content)
# 查看HTTP响应码
print(res.status_code)
# 返回实际数据的URL
print(res.url)

















