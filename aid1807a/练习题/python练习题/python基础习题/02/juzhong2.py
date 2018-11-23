
#生成三个字符串
line1 = input("请输入第1行")
line2 = input("请输入第2行")
line3 = input("请输入第3行")
#计算字符串所占字节数
size1 = len(line1)
size2 = len(line2)
size3 = len(line3)
#找出三个变量中的最大值
max_size = max(size1,size2,size3)

#算出第一行的字符串
head1 = "+" + "-" * (max_size + 2) + "+" 
print(head1)
head2 = "|" + " " * (max_size + 2) + "|" 
print(head2)
#此处打印三行内容
total_size = max_size + 2 
left_blank1 = (total_size - size1) // 2
right_blank1 = (total_size - size1 - left_blank1)
print("|" + " " * left_blank1 + line1 + " " * right_blank1 + "|")

left_blank2 = (total_size - size2) // 2
right_blank2 = (total_size - size2 - left_blank2)
print("|" + " " * left_blank2 + line2 + " " * right_blank2 + "|")

total_size = max_size + 2 
left_blank3 = (total_size - size3) // 2
right_blank3 = (total_size - size3 - left_blank3)
print("|" + " " * left_blank3 + line3 + " " * right_blank3 + "|")
#此处打印结尾两行
print(head2)
print(head1)