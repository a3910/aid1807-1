
#  3.模拟斗地主发牌，牌共54张，分别为
#  　　红桃1-10,J,Q,K
#  　　黑桃1-10,J,Q,K
#  　　方块1-10,J,Q,K
#  　　梅花1-10,J,Q,K
# 　　　大小王
# 　　　三个人，每人发17张牌，底牌留三张
# 　　　输入回车打印打一个人的17张牌
# 　　　再输入回车打印第二个人的
# 　　　输入回车打印第三个人的
# 　　　输入回车打印三张底牌
import random


# L = ['红桃1','红桃2','红桃3','红桃4','红桃5','红桃6','红桃7','红桃8','红桃9','红桃10',\
# '红桃J','红桃Q','红桃K','黑桃1','黑桃2','黑桃3','黑桃4','黑桃5','黑桃6','黑桃7','黑桃8',\
# '黑桃9','黑桃10','黑桃J','黑桃Q','黑桃K','方块1','方块2','方块3','方块4','方块5','方块6',\
# '方块7','方块8','方块9','方块10','方块J','方块Q','方块K','梅花1','梅花2','梅花3',\
# '梅花4','梅花5','梅花6','梅花7','梅花8','梅花9','梅花10','梅花J','梅花Q','梅花K','大鬼','小鬼']

# L1 = random.sample(L, 17)
# for x in L1:
#     L.remove(x)

# L2 = random.sample(L, 17)
# for x in L2:
#     L.remove(x)

# L3 = random.sample(L, 17)
# for x in L3:
#     L.remove(x)

# L4 = L

# nn = input('按回车开始发牌')
# if len(nn) == 0:
#     print(L1)
# n = input('输入回车打印第二人的牌')
# if len(n) == 0:
#     print(L2)
# m = input('输入回车打印第三人的牌')
# if len(m) == 0:
#     print(L3)
# r = input('输入回车打印底牌')
# if len(r) == 0:
#     print(L4)
import random

_style = ['红桃', '黑桃', '方块', '梅花']
_kinds = [str(x) for x in range(1, 11)] + ['J', 'Q', 'K']
_joke = ['大王', '小王']

cards = [x + y for x in _style for y in _kinds] + _joke


def get_cards():
    # 复制一副牌
    c = cards.copy()
    # 洗牌
    random.shuffle(c)
    return (c[0:17], c[17:34], c[34:51], c[51:54])


def test():
    list__card = get_cards()
    p1, p2, p3, dipai = list__card  # 序列赋值
    print('第一个人的牌是：', p1)
    input('按回车键继续')
    print('第二个人的牌是：', p2)
    input('按回车键继续')
    print('第三个人的牌是：', p3)
    input('按回车键继续')
    print('底牌是：', dipai)


if __name__ == '__main__':
    test()
