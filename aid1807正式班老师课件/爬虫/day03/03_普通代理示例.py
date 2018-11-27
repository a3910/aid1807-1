import requests

#url = "http://www.baidu.com/"
url = "http://httpbin.org/get"
headers = {"User-Agent":"Mozilla/5.0"}
proxies = {"http":"http://61.152.248.147:80"}

res = requests.get(url,proxies=proxies,headers=headers)
res.encoding = "utf-8"
print(res.text)

















