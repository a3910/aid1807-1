import urllib.request
import urllib.parse

# 拼接URL
baseurl = "http://www.baidu.com/s?wd="
key = input("请输入要搜索的内容:")
key = urllib.parse.quote(key)
# key : "%e8%a3%e6..."
url = baseurl + key

# 创建请求对象
headers = {"User-Agent":"Mozilla/5.0"}
req = urllib.request.Request(url,headers=headers)
# 获取响应对象
res = urllib.request.urlopen(req)
# 获取响应内容
html = res.read().decode("utf-8")

# 保存到本地文件 ：百度.html
with open("百度.html","w",encoding="gb18030") as f:
    f.write(html)
    print("保存成功")








