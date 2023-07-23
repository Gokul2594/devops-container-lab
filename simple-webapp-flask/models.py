from peewee import Model, AutoField, DateTimeField
import datetime

from .db import db


class Views(Model):
    views_id = AutoField()
    created_time = DateTimeField(default=datetime.datetime.now)

    class Meta:
        database = db


if db.table_exists('views') is False:
    db.create_tables([Views])