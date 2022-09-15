 
# pip3 install gunicorn
# sudo apt install nginx
 
export PYTHONPATH="${PYTHONPATH}:/app"

gunicorn   --certfile=server.crt --keyfile=server.key    --bind 10.240.0.31:443 --workers 2 --thread 8    wsgi:app 


# python3 wsgi.py