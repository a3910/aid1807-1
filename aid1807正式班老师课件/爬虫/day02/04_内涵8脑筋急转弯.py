import urllib.request
import re

class NeihanSpider:
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/5.0"}
        self.baseurl = "https://www.neihan8.com/njjzw/"
        self.page = 1
    
    # 获取页面
    def getPage(self,url):
        req = urllib.request.Request(url,headers=self.headers)
        res = urllib.request.urlopen(req) 
        html = res.read().decode("utf-8")
        self.parsePage(html)
    
    # 解析页面
    def parsePage(self,html):
        p = re.compile('<div class="text-column-item.*?title="(.*?)">.*?class="desc">(.*?)</div>',re.S)
        r_list = p.findall(html)
#        print(r_list)
        # r_list: [("二虎","公母"),(),()]
        self.writePage(r_list)
    # 保存数据
    def writePage(self,r_list):
        for r_tuple in r_list:
            for r_str in r_tuple:
                with open("急转弯.txt","a",encoding="gb18030") as f:
                    f.write(r_str.strip() + "\n")
            # 每个急转弯之间有两个空行
            with open("急转弯.txt","a") as f:
                f.write("\n\n")
            
    # 主函数
    def workOn(self):
        self.getPage(self.baseurl)
        while True:
            c = input("成功,是否继续(y/n):")
            if c.strip().lower() == "y":
                self.page += 1
                url = self.baseurl + "index_" \
                      + str(self.page) + ".html"
                self.getPage(url)
            else:
                print("爬取结束,谢谢使用本爬虫")
                break
        
if __name__ == "__main__":
    spider = NeihanSpider()
    spider.workOn()






    
    
    
    
    
    
    
    
    

