#!/bin/bash
# Update models first
python3 -m libretranslate --update-models

# Start the application using gunicorn with the wsgi entry point
gunicorn --bind 0.0.0.0:$PORT 'wsgi:app' 