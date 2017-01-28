#!/bin/bash
./wait-for-it.sh localhost:5432 -s -t 45
python cuba/manage.py runserver
