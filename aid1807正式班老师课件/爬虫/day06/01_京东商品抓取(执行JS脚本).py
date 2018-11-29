from selenium import webdriver
import csv
import time

# 1. 接收要搜索的商品类型,打开商品搜索页面
pro = input("请输入商品名称:")
driver = webdriver.Chrome()
driver.get("https://www.jd.com/")

# 发送文字到搜索框,点击搜索按钮
driver.find_element_by_class_name("text")\
                           .send_keys(pro)
driver.find_element_by_class_name("button")\
                           .click()
time.sleep(0.5)
i = 1

# 3. xpath匹配所有商品节点,筛选内容
while True:
    # 2. 执行JS脚本,把下拉菜单拉到最底部
    driver.execute_script(
    'window.scrollTo(0,document.body.scrollHeight)')
    time.sleep(1)
    
    r_list = driver.find_elements_by_xpath('//div[@id="J_goodsList"]//li')
    #print(r_list[5].text)
    for onePro in r_list:
        m = onePro.text.split('\n')
        # m : ["￥98.5","名称","9条评价",...]
        price = m[0]
        name = m[1]
        commit = m[2]
        market = m[3]
        L = [name,price,commit,market]
        with open("商品.csv","a",newline="",encoding="gb18030")as f:
            writer = csv.writer(f)
            writer.writerow(L)
    print("第%d页抓取完毕" % i)
    i += 1
    
    # 点击下一页
    if driver.page_source.find("pn-next disabled") == -1:
        driver.find_element_by_class_name("pn-next").click()
        time.sleep(2)
    else:
        print("所有商品爬取完毕")
        break
        

   
#￥98.50
#包邮 玩转Django 2.0+玩转Python网络爬虫书籍 黄永祥
#9条评价
#蓝墨水图书专营店
#关注
#加入购物车



















