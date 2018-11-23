
import chengjipaixu.dayin

def score_gd(L):
    L1 = sorted(L, key = (lambda x: x['score']), reverse = True)
    chengjipaixu.dayin.output_student(L1)


def score_dg(L):
    L1 = sorted(L, key = (lambda x: x['score']))
    chengjipaixu.dayin.output_student(L1)


def age_dg(L):
    L1 = sorted(L, key = (lambda x: x['age']))
    chengjipaixu.dayin.output_student(L1)

def age_gd(L):
    L1 = sorted(L, key = (lambda x: x['age']), reverse = True)
    chengjipaixu.dayin.output_student(L1)