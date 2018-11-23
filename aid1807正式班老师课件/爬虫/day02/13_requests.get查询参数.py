import requests

url = "http://www.baidu.com/s?"
headers = {"User-Agent":"Mozilla/5.0"}
key = input("请输入搜索内容:")
params = {"wd":key}

res = requests.get(url,params=params,headers=headers)
res.encoding = "utf-8"
print(res.text)
