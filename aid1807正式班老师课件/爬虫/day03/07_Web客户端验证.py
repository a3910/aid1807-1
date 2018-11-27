import requests
import re
import pymysql
import warnings

class DaneiSpider:
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/5.0"}
        # self.proxies = {"http":"http://309435365:szayclhp@116.255.162.107:16816"}
        self.url = "http://code.tarena.com.cn/"
        # 连接对象
        self.db = pymysql.connect("localhost",
                   "root","123456","lianjia",
                   charset="utf8")
        # 游标对象
        self.cursor = self.db.cursor()

    def getParsePage(self,url):
        res = requests.get(url,headers=self.headers,
                               auth=("tarenacode","code_2013"))
        res.encoding = "utf-8"
        html = res.text
        p = re.compile('<a href=".*?>(.*?)</a>',re.S)
        r_list = p.findall(html)
        # r_list : ["AIDCODE/","BIGCODE"]
        self.mysql(r_list)

    def mysql(self,r_list):
        ctab = 'create table code(\
                id int primary key auto_increment,\
                course varchar(30)\
                )'
        ins = 'insert into code(course) values(%s)'
        # 过滤警告
        warnings.filterwarnings("ignore")
        try:
            self.cursor.execute(ctab)
        except:
            pass

        for r in r_list:
            L = [r.strip()[0:-1]]
            self.cursor.execute(ins,L)
            self.db.commit()
        print("达内code已入库")

    def workOn(self):
        self.getParsePage(self.url)

if __name__ == "__main__":
    spider = DaneiSpider()
    spider.workOn()






