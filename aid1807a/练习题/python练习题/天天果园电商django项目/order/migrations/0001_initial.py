# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-11-08 09:13
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('first', '0002_goods_type'),
        ('user', '0003_auto_20171107_1814'),
    ]

    operations = [
        migrations.CreateModel(
            name='CartInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ccount', models.IntegerField(db_column='count', default=0)),
                ('cgoods', models.ForeignKey(db_column='goods_id', on_delete=django.db.models.deletion.CASCADE, to='first.Goods')),
                ('cuser', models.ForeignKey(db_column='user_id', on_delete=django.db.models.deletion.CASCADE, to='user.UserInfo')),
            ],
        ),
    ]
