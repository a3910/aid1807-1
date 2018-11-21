from django.db import models

# Create your models here.
class Author(models.Model):
  name = models.CharField(max_length=30)
  age = models.IntegerField()
  email = models.EmailField()
  isActive = models.BooleanField(default=True)

  class Meta:
    db_table = 'author'