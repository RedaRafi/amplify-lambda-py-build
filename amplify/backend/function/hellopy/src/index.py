from PIL import Image
from datetime import datetime

def handler(event, context):

  now = datetime.now()
  current_time = now.strftime("%H:%M:%S")

  return {
    'message': 'Hello from your new Amplify Python lambda with Linux dependencies at: ' + current_time
  }
