import cx_Oracle
import numpy as np
from sqlalchemy import *
from flask import Flask
import sqlalchemy

app = Flask(__name__)

@app.route("/") # take note of this decorator syntax, it's a common pattern
def hello():
    return sqlalchemy.__version__

if __name__ == "__main__":
    app.run()


