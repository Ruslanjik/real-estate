from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

def get_properties():
    conn = sqlite3.connect('db.sqlite3')
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM real_estate")
    properties = cursor.fetchall()
    conn.close()
    return properties

@app.route('/')
def index():
    properties = get_properties()
    return render_template('index.html', properties=properties)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
