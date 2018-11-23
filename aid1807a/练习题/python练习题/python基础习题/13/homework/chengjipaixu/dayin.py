
def output_student(L):
    name_w = 15
    age_w = 10
    score_w = 10
    print()
    head1 = '+' + '-'*name_w + '+' + '-'*age_w + '+' + '-'*score_w + '+'
    print(head1)
    head_text = '|' + '姓名'.center(name_w - 2) +\
    '|' + '年龄'.center(age_w - 2)+ '|' + '成绩'.center(score_w - 2) + '|'
    print(head_text)
    print(head1)
    for i in L:
        fmt = '|%s|%s|%s|'
        name_text = i['name'].center(name_w)
        age_text = str(i['age']).center(age_w)
        score_text = str(i['score']).center(score_w)
        print(fmt % (name_text, age_text, score_text))
    print(head1)