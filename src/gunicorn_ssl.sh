 
# pip3 install gunicorn
# sudo apt install nginx
 
export PYTHONPATH="${PYTHONPATH}:/app"

#gunicorn   --certfile=server.crt --keyfile=server.key  --bind 0.0.0.0:443 --workers 1 --thread 8 wsgi_ssl:app  --daemon
gunicorn   --certfile=server.crt --keyfile=server.key  --bind 0.0.0.0:443 --workers 1 --thread 8 wsgi_ssl:app  


# python3 wsgi.py