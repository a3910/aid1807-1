import urllib.request

# 向百度发起请求,并得到响应对象
# urllib /... 
response = urllib.request.urlopen("http://www.baidu.com/")
# 打印响应内容
print(response.read().decode("utf-8"))


#decode() : bytes -> string
#encode() : string -> bytes


