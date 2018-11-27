import requests

url = "http://www.renren.com/967469305/profile"
headers = {
        "Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8",
        "Accept-Language":"zh-CN,zh;q=0.9",
        "Connection":"keep-alive",
        "Cookie":"anonymid=joxn2zjd4wbtlr; depovince=BJ; _r01_=1; ln_uact=13603263409; ln_hurl=http://hdn.xnimg.cn/photos/hdn221/20181101/1550/h_main_qz3H_61ec0009c3901986.jpg; jebe_key=7fd23b61-42cf-4105-ab4f-8eb28565c128%7C2012cb2155debcd0710a4bf5a73220e8%7C1543196119249%7C1%7C1543196116786; JSESSIONID=abcvVRQNFidTP4Ot1UnDw; ick_login=eb316897-ab3e-47ce-86ba-d08b843d32ad; first_login_flag=1; loginfrom=syshome; ch_id=10016; wp_fold=0; jebecookies=f6f9cac4-a174-4839-9c19-3c6fd75e3331|||||; _de=4DBCFCC17D9E50C8C92BCDC45CC5C3B7; p=0b73085b1f59a0c8f08c11c37a7d59615; t=ca209d505ca3c93ad19921a5e8b53c015; societyguester=ca209d505ca3c93ad19921a5e8b53c015; id=967469305; xnsid=b20d9e56",
        "Host":"www.renren.com",
        "Referer":"http://www.renren.com/SysHome.do",
        "Upgrade-Insecure-Requests":"1",
        "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36",
    }
res = requests.get(url,headers=headers)
res.encoding = "utf-8"
print(res.text)
















