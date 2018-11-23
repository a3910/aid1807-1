import csv

with open("test.csv","a",newline="") as f:
    # 初始化写入对象
    writer = csv.writer(f)
    # 写入对象的writerow方法
    writer.writerow(["霸王别姬","张国荣","1993"])
    writer.writerow(["英雄","梁朝伟","2000"])
    writer.writerow(["蜘蛛侠","Foreigner","2000"])
     
    
 
    
    
    
    
    
    
    
    







