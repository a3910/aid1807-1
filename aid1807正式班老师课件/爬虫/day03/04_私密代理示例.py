import requests

url = "http://httpbin.org/get"
headers = {"User-Agent":"Mozilla/5.0"}
proxies = {"http":"http://309435365:szayclhp@116.255.162.107:16816"}

res = requests.get(url,proxies=proxies,headers=headers)
#print(res.status_code)
res.encoding = "utf-8"
print(res.text)






