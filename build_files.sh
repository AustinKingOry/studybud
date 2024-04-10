# build_files.sh
python-3.9
pip install -r requirements.txt
# virtualenv env
# env/scripts/activate
python3.9 manage.py collectstatic
