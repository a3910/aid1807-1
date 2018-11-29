# 导webdriver
from selenium import webdriver 
import time

# 创建浏览器对象
driver = webdriver.PhantomJS()
# 向百度发请求
driver.get("http://www.baidu.com/")
# 百度搜索框发送内容
driver.find_element_by_id("kw").send_keys("美女")
# 点击搜索按钮
driver.find_element_by_id("su").click()
time.sleep(2)
# 截图
driver.save_screenshot("美女.png")
# 退出
driver.quit()






