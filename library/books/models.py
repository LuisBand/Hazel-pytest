from django.db import models

# Create your models here.
class Author(models.Model):
    name = models.CharField(max_length=128)
    last_name = models.CharField(max_length=128, null=True)

class Category(models.Model):
    name = models.CharField(max_length=64)

class Publisher(models.Model):
    name=models.CharField(max_length=64)

class Cover(models.Model):
    cover_type = models.CharField(max_length=64)

class Book(models.Model):
    name = models.CharField(max_length=156)
    publish_year = models.SmallIntegerField()
    pages = models.SmallIntegerField()
    price = models.DecimalField(max_digits = 6, decimal_places = 2)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    authors = models.ManyToManyField(Author, through='BooksAuthors')
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)
    cover = models.ManyToManyField(Cover, through='BooksCovers')

class BooksAuthors(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithAuthors', on_delete=models.DO_NOTHING)
    author = models.ForeignKey(Author, related_name='AuthorWithBooks', on_delete=models.DO_NOTHING)


class BooksCovers(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithCovers', on_delete=models.DO_NOTHING)
    cover = models.ForeignKey(Cover, related_name='CoverWithBooks', on_delete=models.DO_NOTHING)