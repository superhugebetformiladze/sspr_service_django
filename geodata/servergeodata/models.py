from django.db import models
from django.contrib.gis.db import models

class Label(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    geometry = models.PolygonField()  # Используем PolygonField для хранения географических координат

    def __str__(self):
        return self.name