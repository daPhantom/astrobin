# Django
from django.db.models.signals import post_save

# This app
from .models import RawImage
from .tasks import index_raw_image


def start_indexing_task(sender, instance, created, **kwargs):
    if created:
        index_raw_image.delay(instance.id)


post_save.connect(start_indexing_task, sender = RawImage)