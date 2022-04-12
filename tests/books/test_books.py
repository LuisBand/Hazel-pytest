import pytest
from library.books.models import*

@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre, apellido',
    (
        ('Paulo', 'Coelho'),
        ('Haruki', 'Murakami'),
        ('Jordi', 'Rosado')
    )
)
def test_author_name(nombre, apellido):
    author = Author.objects.create(name=nombre, last_name=apellido)
    print('This is my authors name: ', author.name)
    # assert author.last_name == 'Coelho'
    assert Author.objects.all().count() == 1
    author.delete()
    assert Author.objects.all().count() == 0



@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre',
    (
        ('Novel'),
        ('History'),
        ('Horror')
    )
)
def test_category_creation(nombre):
    category = Category.objects.create(name=nombre)
    print('Category added: ', category.name)
    assert Category.objects.all().count() == 1


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre',
    (
        ('Paperback'),
        ('Hardcover Case Wrap'),
        ('Hardcover Dust Jacket')
    )
)
def test_cover_verify(nombre):
    covers = ['Paperback', 'Hardcover Case Wrap', 'Hardcover Dust Jacket']
    cover = Cover.objects.create(cover_type=nombre)
    isInList = False

    for e in covers :
        if e == cover.cover_type:
            isInList = True
            

    print('CoverAdded: ', cover.cover_type)
    assert isInList == True


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre, apellido',
    (
        ('Gabriel', 'García'),
        ('William', 'Shakespeare'),
        ('Stephen', 'King')
    )
)
def test_author_capitalized(nombre, apellido):
    author = Author.objects.create(name=nombre, last_name=apellido)

    isCapitalized = False

    if (author.name[0].isupper()) and (author.last_name[0].isupper()):
        isCapitalized = True
            

    assert isCapitalized == True


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre',
    (
        ('Santillana'),
        ('El naranjo'),
        ('Luna de papel')
    )
)
def test_publisher_alphanumeric(nombre):
    publisher = Publisher.objects.create(name=nombre)

    containsNunbers = True

    publisher_name = publisher.name.replace(' ','')

    if (publisher_name.isalpha() == True):
        containsNunbers = False            

    assert containsNunbers == False


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre',
    (
        ('Sci-Fi'),
        ('Westerns'),
        ('Mistery')
    )
)
def test_category_inList(nombre):
    categories = ['Fantasy,', 'Sci-Fi', 'Mistery', 'Thriller', 'Romance', 'Westerns', 'Dystopian', 'Contemporary']
    category = Category.objects.create(name=nombre)

    inList = False

    for e in categories:
        if e == category.name:
            inList = True

    assert inList == True


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre',
    (
        ('Novel'),
        ('History'),
        ('Horror')
    )
)
def test_category_creation(nombre):
    category = Category.objects.create(name=nombre)
    print('Category added: ', category.name)
    assert Category.objects.all().count() == 1