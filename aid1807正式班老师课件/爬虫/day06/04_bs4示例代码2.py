from bs4 import BeautifulSoup

html = '''
<div class="test1">雄霸</div>
<div class="test1">幽若</div>
<div class="test2">
  <span>第二梦</span>
</div>
'''
# 找到所有class为test1的div节点的文本
soup = BeautifulSoup(html,'lxml')
r_list = soup.find_all("div",
                  attrs={"class":"test1"})
for r in r_list:
    print(r.get_text(),r.string)
# 找到class为test2的div节点下span节点的文本
r_list = soup.find_all("div",
                  attrs={"class":"test2"})
for r in r_list:
    print(r.span.string)






















