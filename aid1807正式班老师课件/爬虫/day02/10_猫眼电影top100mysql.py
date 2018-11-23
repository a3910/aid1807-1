import urllib.request
import re
import pymysql
import warnings

class MaoyanSpider:
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 OPR/26.0.1656.60"}
        self.baseurl = "http://maoyan.com/board/4?offset="
        self.offset = 0
        self.page = 1
        # 数据库连接对象
        self.db = pymysql.connect("localhost","root",
                             "123456",charset="utf8")
        # 游标对象
        self.cursor = self.db.cursor()


    # 获取页面
    def getPage(self,url):
        req = urllib.request.Request(url,headers=self.headers)
        res = urllib.request.urlopen(req)
        html = res.read().decode("utf-8")
        self.parsePage(html)
    
    # 解析页面
    def parsePage(self,html):
        p = re.compile('<div class="movie-item-info">.*?title="(.*?)".*?class="star">(.*?)</p>.*?class="releasetime">(.*?)</p>',re.S)
        r_list = p.findall(html)
        # r_list:[("霸王别姬","张国荣","1993"),(),()]
        self.writeTomysql(r_list)
        
    # 保存数据
    def writeTomysql(self,r_list):
        c_db = 'create database if not exists myfilm charset utf8'
        u_db = 'use myfilm'
        c_tab = 'create table if not exists top100(\
                 id int primary key auto_increment,\
                 name varchar(50),\
                 star varchar(100),\
                 time varchar(50)\
                 )'
        ins = 'insert into top100(name,star,time) \
               values(%s,%s,%s)'
        # 过滤警告
        warnings.filterwarnings("ignore")
        try:
            self.cursor.execute(c_db)
            self.cursor.execute(u_db)
            self.cursor.execute(c_tab)
        except:
            pass

        # 插入记录
        for r_tuple in r_list:
            L = [r_tuple[0].strip(),r_tuple[1].strip(),r_tuple[2].strip()]
            # execute(ins,[列表])
            self.cursor.execute(ins,L)
            self.db.commit()
            print("存入数据库成功")

    # 主函数
    def workOn(self):
        while True:
            c = input("爬按y,退出按q:")
            if c.strip().lower() == "y":  
                url = self.baseurl + str(self.offset)
                self.getPage(url)
                self.page += 1
                self.offset = (self.page - 1)*10 
            else:
                print("爬取结束")
                break
                
if __name__ == "__main__":
    spider = MaoyanSpider()
    spider.workOn()
    
    
    
    
    
    
    
    
    
    







