def fn():
    try:
        a=int(input('a'))
        print(a)
    except ValueError:
        print('错误')
fn()