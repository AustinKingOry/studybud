#!/bin/bash
echo "Getting pip"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.9 get-pip.py

echo "Creating a virtual environment"
python3.9 -m pip install virtualenv
virtualenv env
echo "Activating the env"
source env/bin/activate
# Build the project
echo "Building the project..."
python3.9 -m pip install -r requirements.txt

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear