import sqlite3

from flask import Flask, render_template, request

def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn

app = Flask(__name__)

@app.route('/')
def index():
    conn = get_db_connection()
    phones = conn.execute('select * from phones').fetchall()
    conn.close()
    return render_template('index.html', phones=phones)

@app.route('/item/<id>')
def get_item(id):
    conn = get_db_connection()
    result = conn.execute('select * from phones where id = ?', id).fetchone()
    conn.close()
    return render_template('item.html', phone=result)

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/compare')
def compare():
    cookies = request.cookies
    conn = get_db_connection()
    phones = conn.execute('select * from phones where id in ' + '(' + cookies.get('compare') + ')').fetchall()
    conn.close()
    return render_template('compare.html', phones=phones)

@app.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404
