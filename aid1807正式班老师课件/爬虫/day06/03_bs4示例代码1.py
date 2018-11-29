from bs4 import BeautifulSoup

html = '<div class="fengyun">雄霸</div>'
# 创建解析对象
soup = BeautifulSoup(html,'lxml')
r_list = soup.find_all("div",attrs={"class":"fengyun"})
# get_text()方法或string属性来获取节点的文本内容
for r in r_list:
    print(r.get_text())
    print(r.string)





