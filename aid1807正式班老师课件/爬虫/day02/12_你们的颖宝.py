import requests

url = "http://dingyue.nosdn.127.net/XYcTX8guzubcSJvYgIh2x3I0=4NSI9w47v63rX4ACf7m=1541413847099.jpg"
headers = {"User-Agent":"Mozilla/5.0"}

res = requests.get(url,headers=headers)
res.encoding = "utf-8"
html = res.content

with open("颖宝.jpg","wb") as f:
    f.write(html)

print("颖宝到计算机了")











