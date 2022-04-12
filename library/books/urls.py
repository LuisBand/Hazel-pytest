from . import views
from rest_framework import routers
from django.urls import path, include

router = routers.DefaultRouter()
router.register(r'author', views.AuthorViewSet)
router.register(r'category', views.CategoryViewSet)
router.register(r'publisher', views.PublisherViewSet)
router.register(r'cover', views.CoverViewSet)
router.register(r'booksauthor', views.BooksAuthorsViewSet)
router.register(r'bookscovers', views.BooksCoversViewSet)
router.register(r'', views.BookViewSet)



urlpatterns = [
    path('', include(router.urls)),
]
