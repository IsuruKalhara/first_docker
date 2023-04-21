from flask import Flask
from flask_restful import Api, Resource

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):

    def get(self):
        return {'Message':'Hello World'}
    
api.add_resource(HelloWorld,'/samantha')

if __name__ == "__main__":
    app.run(host='0.0.0.0',port=5000,debug=True)
    

