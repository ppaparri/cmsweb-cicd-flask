import os
    
from app import app

@app.route('/')
def home():
    return os.environ.get('COMMIT_SHA', 'Not Found')