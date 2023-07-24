import os
from flask import Flask
from .models import Views
import json

app = Flask(__name__)

@app.route("/")
def main():
    Views.create()
    return "Welcome! This page was visited: " + str(Views.select().count()) + "times." + " Refresh page to increment.."

@app.route('/howdy')
def hello():
    return 'Howdy to you too!'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
