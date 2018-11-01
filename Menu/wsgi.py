"""
WSGI config for Menu project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.11/howto/deployment/wsgi/
"""

import os, sys

sys.path.append('/opt/bitnami/apps/django/django_projects/app')
os.environ.setdefault("PYTHON_EGG_CACHE", "/opt/bitnami/apps/django/django_projects/app/temp")
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Menu.settings")


from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
