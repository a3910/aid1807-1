import re

html = """<div><p>仰天大笑出门去</p></div>
<div><p>成也风云,败也风云</p></div>
"""
# 贪婪匹配,re.S使 . 能匹配\n在内的所有字符
p = re.compile('<div><p>.*</p></div>',re.S)
r = p.findall(html)
print(r)

# 非贪婪匹配
p = re.compile('<div><p>.*?</p></div>',re.S)
r = p.findall(html)
print(r)


















