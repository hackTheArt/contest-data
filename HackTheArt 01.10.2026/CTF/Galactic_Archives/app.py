from flask import Flask, render_template, request, g
import sqlite3

app = Flask(__name__)
DATABASE = 'database.db'

def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    return db

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/search', methods=['GET', 'POST'])
def search():
    results = []
    search_term = ""
    if request.method == 'POST':
        search_term = request.form.get('query', '')
        query = f"SELECT name, climate, terrain FROM planets WHERE name LIKE '%{search_term}%'"
        
        try:
            cur = get_db().execute(query)
            results = cur.fetchall()
        except Exception as e:
            return render_template('index.html', error=str(e), query=search_term)

    return render_template('index.html', results=results, query=search_term)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)
