# -*- coding: utf-8 -*-
# Generated by Django 1.11.8 on 2018-11-20 06:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('index', '0003_auto_20181119_1027'),
    ]

    operations = [
        migrations.CreateModel(
            name='Users',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('uphone', models.CharField(max_length=11, verbose_name='手机号')),
                ('upwd', models.CharField(max_length=30, verbose_name='密码')),
                ('uemail', models.EmailField(max_length=254, verbose_name='用户邮箱')),
                ('uname', models.CharField(max_length=20, verbose_name='用户名')),
                ('isActive', models.BooleanField(default=True, verbose_name='启用/禁用')),
            ],
            options={
                'db_table': 'users',
                'verbose_name': '用户',
                'verbose_name_plural': '用户',
            },
        ),
    ]
