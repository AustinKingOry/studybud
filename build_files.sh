#!/bin/bash
echo "Creating a virtual environment"
python3.9 -m virtualenv .
# virtualenv env
echo "Activating the env"
source bin/activate
# Build the project
echo "Building the project..."
python3.9 -m pip install -r requirements.txt

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear