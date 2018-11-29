import requests

url = "http://tb-video.bdstatic.com/tieba-smallvideo-transcode/12044732_c52e78ba3406ac64898a221996bbea45_0.mp4"
headers = {"User-Agent":"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"}

res = requests.get(url,headers=headers)
res.encoding = "utf-8"
html = res.content

with open("视频.mp4","wb") as f:
    f.write(html)

print("下载成功")














