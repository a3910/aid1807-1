import requests
from lxml import etree
import urllib.parse

class ImageSpider:
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"}
        self.baseurl = ""
        
    # 获取所有帖子URL列表
    def getPageUrl(self,url):
        # 获取校花吧页面的html
        res = requests.get(url,headers=self.headers)
        res.encoding = "utf-8"
        html = res.text
        # 提取页面中所有帖子的URL
        parseHtml = etree.HTML(html)
        t_list = parseHtml.xpath('//div[@class="t_con cleafix"]/div/div/div/a/@href')
        # t_list : ["/p/32093","/p/203920","","",""]             
        for t_link in t_list:
            t_url = "http://tieba.baidu.com" + t_link
            self.getImageUrl(t_url)
    
    # 获取每个帖子中图片的URL列表
    def getImageUrl(self,t_url):
        # 获取1个帖子的响应html
        res = requests.get(t_url,headers=self.headers)
        res.encoding = "utf-8"
        html = res.text
        # 从html响应中获取图片URL列表
        parseHtml = etree.HTML(html)
        img_list = parseHtml.xpath('//div[@class="d_post_content j_d_post_content  clearfix"]/img/@src')
        for img_link in img_list:
            self.writeImage(img_link)
      
    # 保存图片
    def writeImage(self,img_link):
        # 获取每个图片的二进制
        res = requests.get(img_link,headers=self.headers)
        res.encoding = "utf-8"
        html = res.content
        # 保存到本地(以图片链接的后12位作为文件名)
        filename = img_link[-8:]
        with open(filename,"wb") as f:
            f.write(html)
            print(filename,"下载成功")

    # 主函数
    def workOn(self):
        name = input("请输入贴吧名:")
        begin = int(input("请输入开始页:"))
        end = int(input("请输入结束页:"))
        for pn in range(begin,end+1):
            # 拼接贴吧页面URL
            pn = (pn-1)*50
            kw = {"kw":name}
            kw = urllib.parse.urlencode(kw)
            fullurl = \
              "http://tieba.baidu.com/f?" + \
              kw + "&pn=" + str(pn)
            # 直接调类内函数
            self.getPageUrl(fullurl)
                                 
if __name__ == "__main__":
    spider = ImageSpider()
    spider.workOn()















