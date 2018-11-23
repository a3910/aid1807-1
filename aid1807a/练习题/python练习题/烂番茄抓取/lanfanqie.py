
# from pprint import pprint
# from pymongo import MongoClient
# from urllib.request import urlopen
# from bs4 import BeautifulSoup

# Client = MongoClient('localhost', 27017)
# db = Client.zhang_db
# html = urlopen('https://www.rottentomatoes.com/critics/latest_reviews')
# bs0bj = BeautifulSoup(html.read(), 'lxml')
# table = bs0bj.find_all(
#     'table', {'class': 'table table-striped verticalCenter'})[0]
# rows = table.find_all('tr')

# for row in rows:
#     L = []
#     for cell in row.find_all(['td']):
#         L.append(cell)
#     # if len(L) != 0:
#     #     print(L[2].get_text())
#     if len(L) != 0:
#         post = {}
#         post['Rangting'] = L[0].get_text().strip()
#         post['Movie'] = L[1].get_text().strip()
#         post['Review'] = L[2].a.get_text().strip()
#         post['Date'] = L[2].p.get_text().strip()
#         post['Critic'] = L[3].a.get_text().strip()
#         post['source'] = L[3].p.get_text().strip()
#         # print(post)
#         db.posts.insert(post)
#         for x in db.posts.find({'$or':[{'Rangting':{'$gte':3}},{'Rangting':{'$in':['B','B+','A']}}]}):
#             pprint(x)


# 加载库
import urllib
import urllib.request
import json
from bs4 import BeautifulSoup

import sys
def main():
    reload(sys)
    sys.setdefaultencoding('utf-8')
# 获取所有标签
tags = []
url = 'https://movie.douban.com/j/search_tags?type=movie'
request = urllib.request.Request(url=url)
response = urllib.request.urlopen(request, timeout=20)
result = response.read().decode()
# 加载json为字典
result = json.loads(result)
tags = result['tags']

# 定义一个列表存储电影的基本信息
movies = []
# 处理每个tag
for tag in tags:
    start = 0
    # 不断请求，直到返回结果为空
    while 1:
        # 拼接需要请求的链接，包括标签和开始编号
        url = 'https://movie.douban.com/j/search_subjects?type=movie&tag=' + tag + '&sort=recommend&page_limit=20&page_start=' + str(start)
        print(url)
        request = urllib.request.Request(url=url)
        response = urllib.request.urlopen(request, timeout=20)
        result = response.read()
        result = json.loads(result)

        # 先在浏览器中访问一下API，观察返回json的结构
        # 然后在Python中取出需要的值 
        result = result['subjects']

        # 返回结果为空，说明已经没有数据了
        # 完成一个标签的处理，退出循环
        if len(result) == 0:
            break

        # 将每一条数据都加入movies
        for item in result:
            movies.append(item)

        # 使用循环记得修改条件
        # 这里需要修改start
        start += 20
        
# 看看一共获取了多少电影
print(len(movies))

if __name__ =="__main__":
    main()