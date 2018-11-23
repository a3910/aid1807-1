import urllib.request
import urllib.parse
import json

# 接收用户输入,对 data 进行转码(字节流)
key = input("请输入要翻译的内容:")
data = {
        "i":key,
        "from":"AUTO",
        "to":"AUTO",
        "smartresult":"dict",
        "client":"fanyideskweb",
        "salt":"1542876206627",
        "sign":"6903dad5191ed03cdc87868f0ef748dc",
        "doctype":"json",
        "version":"2.1",
        "keyfrom":"fanyi.web",
        "action":"FY_BY_REALTIME",
        "typoResult":"false"
    }

#1、把Form表单数据整理成字典
#2、urlencode(字典) -> 字符串,字符串.encode("utf-8") -> 字节流
data = urllib.parse.urlencode(data).encode("utf-8")
# 发请求,获响应
url = "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule"
headers = {"User-Agent":"Mozilla/5.0"}

req = urllib.request.Request(url,data=data,headers=headers)
res = urllib.request.urlopen(req)
html = res.read().decode("utf-8")
# html为json格式的字符串
r_dict = json.loads(html)
#print(type(r_dict))
print(r_dict["translateResult"][0][0]["tgt"])


#{'type': 'EN2ZH_CN', 
# 'errorCode': 0, 
# 'elapsedTime': 1, 
# 'translateResult': 
#[[{'src': 'hello', 'tgt': '你好'}]]
#}


















