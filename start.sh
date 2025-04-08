#!/bin/bash
# Create directory for prometheus metrics
mkdir -p /tmp/prometheus_data
rm -rf /tmp/prometheus_data/*

# Set environment variables to limit model loading
export LT_UPDATE_MODELS=false
export LT_LOAD_ONLY=en,es,fr,de,it,pt,ru,ja,ko,zh,ar,tr,hi,id

# Start the application using gunicorn with the wsgi entry point
exec gunicorn --bind 0.0.0.0:$PORT --timeout 300 --workers 1 'wsgi:app' 