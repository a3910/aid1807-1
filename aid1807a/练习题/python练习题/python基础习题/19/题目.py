docs = [Point(1,2), Circle(3,4,5), Line(6,7,8,9),Ractangle(10,20,50,100)]

for x in docs:
    x.draw  #打印自己的实例变量信息
    x.move(100,200)  #让全部图形整体移动100,200像素offset_x = 100, offset_y = 200
