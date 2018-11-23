import urllib.request
import urllib.parse
import random
import time

# 接收用户输入
name = input("请输入贴吧名称:")
begin = int(input("请输入起始页:"))
end = int(input("请输入终止页:"))
# 拼接URL,发请求
baseurl = "http://tieba.baidu.com/f?"
h_list = [
          {"User-Agent":"Mozilla/5.0"},
          {"User-Agent":"Mozilla/4.0"},
          {"User-Agent":"Mozilla/3.0"},
    ]
headers = random.choice(h_list)
# url编码
key = {"kw":name}
key = urllib.parse.urlencode(key)

for page in range(begin,end+1):
    pn = (page-1)*50
    url = baseurl + key + "&pn=" + str(pn)
    # 发请求/得响应
    req = urllib.request.Request(url,headers=headers)
    res = urllib.request.urlopen(req)
    print("正在爬取第%d页" % page)
    html = res.read().decode("utf-8")
    time.sleep(0.5)
    
    # 写入本地文件
    filename = "第" + str(page) + "页.html"
    with open(filename,"w",encoding="gb18030") as f:
        f.write(html)
        print("第%d页爬取成功" % page)
        print("*" * 30)


