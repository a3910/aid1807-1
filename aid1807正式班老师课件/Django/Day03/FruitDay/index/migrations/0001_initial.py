# -*- coding: utf-8 -*-
# Generated by Django 1.11.8 on 2018-11-19 01:57
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='GoodType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50, verbose_name='类型名称')),
                ('desc', models.TextField(verbose_name='类型描述')),
                ('picture', models.ImageField(null=True, upload_to='staitc/upload/goodstype', verbose_name='类型图片')),
            ],
            options={
                'db_table': 'good_type',
                'verbose_name_plural': '商品类型',
                'verbose_name': '商品类型',
            },
        ),
    ]
