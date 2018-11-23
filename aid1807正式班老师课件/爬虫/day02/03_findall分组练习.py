import re

html = """<div class="animal">
    <p class="name">
        <a title="tiger"></a>
    </p>

    <p class="contents">
        Two tigers two tigers run fast
    </p>
</div>
      
<div class="animal">
    <p class="name">
        <a title="rabbit"></a>
    </p>

    <p class="contents">
        Small while rabbit white and white
    </p>
</div>"""


p = re.compile('<div class="animal">.*?title="(.*?)".*?class="contents">(.*?)</p>.*?</div>',re.S)
r_list = p.findall(html)
#print(r_list)

for animal in r_list:
    print("动物名称:",animal[0].strip())
    print("动物描述:",animal[1].strip())
    print()









