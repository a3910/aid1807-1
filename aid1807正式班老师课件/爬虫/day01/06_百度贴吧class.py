import urllib.request
import urllib.parse

class BaiduSpider:
    def __init__(self):
        self.baseurl = "http://tieba.baidu.com/f?"
        self.headers = {"User-Agent":""}
    
    # 请求并获取页面内容
    def getPage(self,url):
        req = urllib.request.Request(url,headers=self.headers)
        res = urllib.request.urlopen(req) 
        html = res.read().decode("utf-8")
        return html

    # 保存
    def writePage(self,filename,html):
        with open(filename,"w",encoding="utf-8") as f:
            f.write(html)
    
    # 主函数
    def workOn(self):
        name = input("请输入贴吧名称:")
        begin = int(input("请输入起始页:"))
        end = int(input("请输入终止页:"))
        # url编码
        key = {"kw":name}
        key = urllib.parse.urlencode(key)

        for page in range(begin,end+1):
            pn = (page-1)*50
            url = self.baseurl + key + "&pn=" + str(pn)
            html = self.getPage(url)
            filename = "第"+str(page)+"页.html"
            self.writePage(filename,html)
            
if __name__ == "__main__":
    # 创建对象
    spider = BaiduSpider()
    spider.workOn()
















