import requests
from bs4 import BeautifulSoup

url = "https://www.qiushibaike.com/"
headers = {"User-Agent":"Mozilla/5.0"}

# 获取页面源码
res = requests.get(url,headers=headers)
res.encoding = "utf-8"
html = res.text
# 创建解析对象并解析
soup = BeautifulSoup(html,'lxml')
r_list = soup.find_all("div",
                  attrs={"class":"content"})
# for循环遍历
i = 1
for r in r_list:
    print(r.span.get_text().strip())
    i += 1
    print("*" * 30)

print(i)















