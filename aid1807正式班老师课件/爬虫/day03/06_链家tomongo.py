import requests
import re
import pymongo

class LianjiaSpider:
    def __init__(self):
        self.baseurl = "https://bj.lianjia.com/ershoufang/pg"
        self.headers = {"User-Agent":"Mozilla/5.0"}
        self.proxies = {"http":"http://309435365:szayclhp@116.255.162.107:16816"}
        self.page = 1
        # 连接对象
        self.conn = pymongo.MongoClient("localhost",27017)
        # 库对象
        self.db = self.conn["lianjia"]
        #　集合对象
        self.myset = self.db["house"]

    def getPage(self,url):
        res = requests.get(url,proxies=self.proxies,headers=self.headers)
        res.encoding = "utf-8"
        html = res.text
        print("页面获取成功,正在解析...")
        self.parsePage(html)

    def parsePage(self,html):
        p = re.compile('<div class="houseInfo">.*?data-el="region">(.*?)</a>.*?<div class="totalPrice">.*?<span>(.*?)</span>',re.S)
        r_list = p.findall(html)
        # r_list : [("富力城","500"),(),()]
        print("解析成功,正在存入数据库...")
        self.writeTomongo(r_list)

    def writeTomongo(self,r_list):
        for r in r_list:
            D = {
                "name":r[0].strip(),
                "price":float(r[1].strip())*10000
                }
            self.myset.insert(D)
        print("存入数据库成功")

    def workOn(self):
        while True:
            c = input("爬按y,退出q:")
            if c == "y":
                url = self.baseurl + \
                      str(self.page) + "/"
                self.getPage(url)
                self.page += 1
            else:
                break

if __name__ == "__main__":
    spider = LianjiaSpider()
    spider.workOn()














