import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, DevSecOps World!"

if __name__ == "__main__":
    host = os.getenv("FLASK_HOST", "127.0.0.1")
    port = int(os.getenv("PORT", "5000"))
    app.run(host=host, port=port)