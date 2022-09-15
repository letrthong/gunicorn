 
# pip3 install gunicorn
# sudo apt install nginx
 
export PYTHONPATH="${PYTHONPATH}:/app"

gunicorn   --bind 0.0.0.0:80 --workers 2 --thread 8    wsg:app 


# python3 wsgi.py