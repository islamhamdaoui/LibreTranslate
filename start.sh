#!/bin/bash
# Create directory for prometheus metrics
mkdir -p /tmp/prometheus_data
rm -rf /tmp/prometheus_data/*

# Update models
python3 -m libretranslate --update-models || true

# Start the application using gunicorn with the wsgi entry point
exec gunicorn --bind 0.0.0.0:$PORT 'wsgi:app' 