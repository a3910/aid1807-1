# 导入selenium库中的webdriver接口
from selenium import webdriver

# 创建phantomjs浏览器对象
driver = webdriver.PhantomJS() 
# 向网站发请求
driver.get("http://www.baidu.com/")
# 打印响应html源码
print(driver.page_source)

## 获取内存中网页截屏
#driver.save_screenshot("百度.png")
## 关闭浏览器
#driver.quit()








