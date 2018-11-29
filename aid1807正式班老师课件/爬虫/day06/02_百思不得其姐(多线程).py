import requests
from lxml import etree
from queue import Queue
import threading
import time

class bsSpider:
    def __init__(self):
        self.baseurl = "http://www.budejie.com/"
        self.headers = {"User-Agent":"Mozilla/5.0"}
        # URL队列
        self.urlQueue = Queue()
        # 响应html队列
        self.resQueue = Queue()
    
    # 生成URL队列
    def getUrl(self):
        for pNum in range(1,51):
            # 拼接URL放到url队列中去
            url = self.baseurl + str(pNum)
            self.urlQueue.put(url)
    
    # 请求,得到响应html,放到解析队列
    def getHtml(self):
        while True:
            # 1.从url队列中get值
            url = self.urlQueue.get()
            # 2.发请求,得响应,put到响应队列中
            res = requests.get(url,headers=self.headers)
            res.encoding = "utf-8"
            html = res.text
            # 放到响应队列
            self.resQueue.put(html)
            # 清除此任务
            self.urlQueue.task_done()
    
    # 解析页面方法
    def getText(self):
        while True:
            html = self.resQueue.get()
            parseHtml = etree.HTML(html)
            r_list = parseHtml.xpath('//div[@class="j-r-list-c-desc"]/a/text()')
            # r_list : ["段子文本1","","","",""]
            for r in r_list:
                print(r+"\n")
            # 清除此任务
            self.resQueue.task_done()
    def run(self):
        # 1.空列表,用来存放所有线程
        thList = []
        # 2.生成URL队列
        self.getUrl()
        # 3.创建请求线程,放到列表中
        for i in range(1):
            thRes = threading.Thread(target=self.getHtml)
            thList.append(thRes)
            
        # 4.创建解析线程,放到列表中
        for i in range(1):
            thParse = threading.Thread(target=self.getText)
            thList.append(thParse)
        
        # 5.所有线程开始干活
        for th in thList:
            th.setDaemon(True)
            th.start()
        
        # 如果队列为空,则执行其他程序
        self.urlQueue.join()
        self.resQueue.join()
    
if __name__ == "__main__":
    begin = time.time()
    spider = bsSpider()
    spider.run()
    end = time.time()
    print(end-begin)

























