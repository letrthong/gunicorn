import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    name = os.environ.get("NAME", "World")
    return "Hello {}!".format(name)


@app.route("/health_check")
def health_check():
    return "{}"

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=443,  ssl_context=('./server.crt', './server.key') )