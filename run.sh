#!/bin/bash
./wait-for-it.sh db:5432 -s -t 45
cd cuba
gunicorn cuba.wsgi -b 0.0.0.0:8000 --reload
