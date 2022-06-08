from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return "Xin chào Nguyễn Huy Tùng"
@app.route("/api/hello")
def hello2():
    return "Xin Chao API by Docker Container 6888"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 3000))
    app.run(debug=True,host='0.0.0.0',port=port)
