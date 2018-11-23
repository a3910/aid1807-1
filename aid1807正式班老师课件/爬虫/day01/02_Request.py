import urllib.request

# 创建请求对象(Request,把User-Agent加在里面)
url = "http://www.baidu.com/"
headers = {"User-Agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11"}
req = urllib.request.Request(url,headers=headers)
# 获取响应对象 urlopen(请求对象)
res = urllib.request.urlopen(req)
# 获取响应内容
html = res.read().decode("utf-8")
#print(html)

# getcode()
print(res.getcode())
# geturl()
print(res.geturl())

















