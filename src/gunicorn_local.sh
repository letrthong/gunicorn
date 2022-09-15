 
# pip3 install gunicorn
# sudo apt install nginx
 
export PYTHONPATH="${PYTHONPATH}:/app"

gunicorn   --certfile=server.crt --keyfile=server.key    --bind 0.0.0.0:443 --workers 2 --thread 8    wsgi:app 


# python3 wsgi.py