# 导模块
from selenium import webdriver
import time

# 创建浏览器对象,发请求
driver = webdriver.Chrome()
driver.get("https://www.douban.com/")
# 获取截图(验证码)
driver.save_screenshot("验证码.png")
# 找用户名、密码、验证码、登录豆瓣按钮
# 用户名
uname = driver.find_element_by_name("form_email")
uname.send_keys("309435365@qq.com")
# 密码
pwd = driver.find_element_by_name("form_password")
pwd.send_keys("zhanshen001")
# 验证码在终端输入
yzm = driver.find_element_by_id("captcha_field")
key = input("请输入验证码:")
yzm.send_keys(key)

# 点击 登录按钮
login = driver.find_element_by_class_name("bn-submit")
login.click()
time.sleep(1)
# 获取截图
driver.save_screenshot("登录成功.png")

driver.quit()














