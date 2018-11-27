import requests
import json

# 接收用户输入,对 data 进行转码(字节流)
key = input("请输入要翻译的内容:")
data = {
        "i":key,
        "from":"AUTO",
        "to":"AUTO",
        "smartresult":"dict",
        "client":"fanyideskweb",
        "salt":"1543198916297",
        "sign":"21753ee815cabd98fb1c29635ba8e1d3",
        "doctype":"json",
        "version":"2.1",
        "keyfrom":"fanyi.web",
        "action":"FY_BY_REALTIME",
        "typoResult":"false"
    }

# 发请求,获响应
url = "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule"
headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36"}

# 用post方式去发请求,data直接为字典就可以
res = requests.post(url,data=data,headers=headers)
res.encoding = "utf-8"
html = res.text

# html为json格式的字符串
r_dict = json.loads(html)
print(r_dict["translateResult"][0][0]["tgt"])




















