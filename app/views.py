import os
    
from app import app

@app.route('/')
def home():
    return 'The latest commit SHA is: ' + os.environ.get('COMMIT_SHA', 'Not Found')