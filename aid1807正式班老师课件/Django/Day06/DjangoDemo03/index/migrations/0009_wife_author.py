# -*- coding: utf-8 -*-
# Generated by Django 1.11.8 on 2018-11-16 08:18
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('index', '0008_wife'),
    ]

    operations = [
        migrations.AddField(
            model_name='wife',
            name='author',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to='index.Author'),
        ),
    ]
