from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def hello_world():  # put application's code here
    return render_template('index.html')

@app.route('/mypage')
def mypage():
    return 'This is My Page'

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
