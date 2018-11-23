import urllib.request
import re
import pymongo

class MaoyanSpider:
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 OPR/26.0.1656.60"}
        self.baseurl = "http://maoyan.com/board/4?offset="
        self.offset = 0
        self.page = 1
        # 连接对象
        self.conn = pymongo.MongoClient("localhost",27017)
        # 数据库对象
        self.db = self.conn.myfilm
        # 集合对象
        self.tab = self.db.top100

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
        self.writeTomongo(r_list)
        
    # 保存数据
    def writeTomongo(self,r_list):
        for r_tuple in r_list:
            name = r_tuple[0].strip()
            star = r_tuple[1].strip()
            time = r_tuple[2].strip()

            d = {"name":name,"star":star,"time":time}
            self.tab.insert(d)
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
    
    
    
    
    
    
    
    
    
    







