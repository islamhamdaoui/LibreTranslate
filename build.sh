#!/bin/bash
# Create directory for prometheus metrics
mkdir -p /tmp/prometheus_data
rm -rf /tmp/prometheus_data/*

# Install the package globally using pip
pip install --no-deps -e .

# Update models
python -m libretranslate --update-models || true

echo "Build completed successfully!" 