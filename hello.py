from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def index():
   color = os.getenv('COLOR', 'blue')
   return render_template('index.html', color=color)

#if __name__ == '__main__':
#    app.run(debug=True)
