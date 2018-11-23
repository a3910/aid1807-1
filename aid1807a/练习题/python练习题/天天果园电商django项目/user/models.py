from django.db import models

# Create your models here.
class UserInfo(models.Model):
    uname = models.CharField('用户名',max_length=20,unique=True)
    upwd = models.CharField('密码',max_length=64)
    email = models.CharField('邮箱',max_length=50)
    address = models.CharField('地址',max_length=200,null=True)
    cellphon = models.CharField('电话',max_length=20,null=True)
    isDelete = models.BooleanField('逻辑删除',default=False)

    def __str__(self):
        return self.uname

class UserAddr(models.Model):
    user = models.ForeignKey(UserInfo)
    uname = models.CharField('用户名',max_length=20)
    address = models.CharField('地址',max_length=200)
    post = models.IntegerField()
    cellphone = models.IntegerField()