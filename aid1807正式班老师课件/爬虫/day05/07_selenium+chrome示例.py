# 导入webdriver
from selenium import webdriver

# 创建浏览器对象,发请求
driver = webdriver.Chrome()
driver.get("https://www.qiushibaike.com/")
# 单元素查找,类型为对象,利用 对象名.text属性获取文本内容
rOne = driver.find_element_by_class_name("content")
print(rOne.text)
# 多元素查找,得到的结果为列表,列表中所有元素均为对象
rMany = driver.find_elements_by_class_name("content")
for r in rMany:
    print(r.text)

driver.quit()












