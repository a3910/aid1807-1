import requests
import pymongo
from lxml import etree

class QiushiSpider:
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/5.0"}
        # 连接对象
        self.conn = pymongo.MongoClient("localhost",
                                         27017) 
        # 库对象
        self.db = self.conn["Qiushi"]
        # 集合对象
        self.myset = self.db["qiushiinfo"]

    # 获取页面
    def getPage(self,url):
        res = requests.get(url,headers=self.headers)
        res.encoding = "utf-8"
        html = res.text
        self.parsePage(html)

    # 解析并存入数据库
    def parsePage(self,html):
        # 创建解析对象
        parseHtml = etree.HTML(html)
        # 获取每个段子的节点对象列表
        base_list = parseHtml.xpath('//div[contains(@id,"qiushi_tag_")]') 
        for base in base_list:
            # 节点对象可调用xpath
            # 用户昵称
            username = base.xpath('./div/a/h2')
            if len(username) == 0:
                username = "匿名用户"
            else:
                username = base.xpath('./div/a/h2')[0].text.strip()

            # 段子内容
            content = base.xpath('.//div[@class="content"]/span')
            # 好笑数量
            laughNum = base.xpath('.//i')[0] 
            # 评论数量
            pingNum = base.xpath('.//i')[1]

            d = {
                "username":username,
                "content":content[0].text.strip(),
                "laughNum":laughNum.text,
                "pingNum":pingNum.text
                }
            self.myset.insert(d)
            print("成功")


if __name__ == "__main__":
    spider = QiushiSpider()
    spider.getPage("https://www.qiushibaike.com/8hr/page/1/")
















