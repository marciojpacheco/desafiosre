from flask import Flask, request, Response
from up import *

app = Flask(__name__)

@app.route('/metrics')
def exec():
    uptime = up()
    uptime = uptime.getUptime()   
    t = "# Segue o uptime total em segundos #"
    t += uptime 

    return Response(t, mimetype='text/plain')
    
@app.errorhandler(500)
def handle_500(error):
    return str(error), 500

if __name__ == '__main__':
   app.run(debug=False,host='0.0.0.0', port=8181)
