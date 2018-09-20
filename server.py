from flask import Flask, request

app = Flask(__name__)
 
@app.route('/')
def home():
    return "Welcome to Flask!"

@app.route('/commands')
def get_commands():
    #remote_ip = request.remote_addr
    with open("win_commands.ps1") as coms:
        return coms.read()

if __name__ == "__main__":
    app.run(host= '0.0.0.0')
