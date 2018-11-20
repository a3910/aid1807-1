from django import forms
from index.models import *


class LoginForm(forms.ModelForm):
    class Meta:
        # 指定关联的实体
        model = Users
        # 指定要显示的字段
        fields = ['uphone', 'upwd']
        # 指定字段对应的标签
        labels = {
            'uphone': "手机号",
            'upwd': "密码",
        }
        # 指定字段对应的小部件
        widgets = {
            'uphone': forms.TextInput(
                attrs={
                    'class': 'form-control',
                }
            ),
            'upwd': forms.PasswordInput(
                attrs={
                    'placeholder': '请输入密码6-20位',
                    'class': 'form-control',
                }
            )
        }