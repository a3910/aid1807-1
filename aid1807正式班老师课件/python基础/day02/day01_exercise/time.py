# 3. 从凌晨 0:0:0 计时，到现在已经过了63320秒
#   请问现在是几时几分几秒? 写程序打印出来
#   提示:可以用地板除和求余来实现

def time():
    while True:
        import time
        t = time.localtime()
        # print(t)
        
        print('%02d:%02d:%02d'%t[3:6],end='\r')
        time.sleep(1)

time()


















# s = 63320  # 秒

# hour = s // 60 // 60  # 小时
# minute = s % 3600 // 60  # 分钟
# second = s % 60  # 秒

# print(hour, ":", minute, ":", second)
