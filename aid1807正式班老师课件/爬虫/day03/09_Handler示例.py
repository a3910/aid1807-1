import urllib.request

url = "http://www.baidu.com/"
headers = {"User-Agent":"Mozilla/5.0"}

# 1. 创建相关的Handler处理器对象
http_handler = urllib.request.HTTPHandler()
# 2. 创建自定义opener对象
opener = urllib.request.build_opener(http_handler)
# 3. 利用opener对象的open方法发请求获响应
req = urllib.request.Request(url,headers=headers)
res = opener.open(req)
print(res.getcode())


















