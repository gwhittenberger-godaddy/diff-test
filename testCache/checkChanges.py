import json


def checkChanges():
    with open('cache.json') as f:
        cache = json.load(f)

    with open('../test.json') as j:
        new_log = json.load(j)

    return cache["operators"] == new_log["operators"]


checkChanges()
