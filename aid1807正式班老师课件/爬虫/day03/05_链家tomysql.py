import requests
import re
import pymysql

class LianjiaSpider:
    def __init__(self):
        self.baseurl = "https://bj.lianjia.com/ershoufang/pg"
        self.headers = {"User-Agent":"Mozilla/5.0"}
        self.proxies = {"http":"http://309435365:szayclhp@116.255.162.107:16816"}
        self.page = 1
        self.db = pymysql.connect("localhost",
                          "root","123456","lianjia",
                          charset="utf8")
        self.cursor = self.db.cursor()

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
        self.writeTomysql(r_list)

    def writeTomysql(self,r_list):
        ins = 'insert into house(name,price) \
               values(%s,%s)'
        for r in r_list:
            L = [r[0].strip(),
                 float(r[1].strip())*10000]
            self.cursor.execute(ins,L)
            self.db.commit()
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
                self.cursor.close()
                self.db.close()
                break

if __name__ == "__main__":
    spider = LianjiaSpider()
    spider.workOn()














