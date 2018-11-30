#!/bin/sh

ssh app@104.236.57.112 <<EOF
  cd django-jenkins
  git pull
  source /home/app/venv/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  exit
EOF