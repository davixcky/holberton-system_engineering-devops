#!/usr/bin/python3
""" For a given employee, returns information about the TODO list progress"""
import requests
from sys import argv
import json


if __name__ == '__main__':
    id_ = argv[1]
    url = 'https://jsonplaceholder.typicode.com/users/{}/todos'.format(id_)

    s = requests.Session()

    url2 = 'https://jsonplaceholder.typicode.com/users/{}'.format(id_)
    response = s.get(url2)
    name = response.json()['username']

    response = s.get(url)
    body = response.json()

    data = {id_: []}
    for task in body:
        data[id_].append({"task": "{}".format(task['title']),
                          "completed": task['completed'],
                          "username": "{}".format(name)})

    with open(id_ + '.json', 'w') as outfile:
        json.dump(data, outfile)