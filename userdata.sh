#!/bin/bash
sudo apt-get update -y
sudo apt-get install git -y
sudo apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/Mehmet-Peker/blog-project.git
cd /home/ubuntu/blog-project
sudo apt install python3-pip -y
sudo apt-get install python3.8-dev libmysqlclient-dev -y
sudo pip3 install -r requirements.txt
cd /home/ubuntu/blog-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
sudo python3 manage.py runserver 0.0.0.0:80