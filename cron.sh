#!/bin/bash
OUTPUT_DIR="/metrics"
mkdir -p $OUTPUT_DIR
TIMESTAMP=$(date +%Y%m%d_%H%M%S)_$RANDOM
OUTPUT_FILE="$OUTPUT_DIR/metrics_$TIMESTAMP.txt"
NODE_EXPORTER_URL="http://node-exporter.default.svc.cluster.local:9100/metrics"
echo "Fetching metrics from $NODE_EXPORTER_URL at $(date)" > "$OUTPUT_FILE"
curl -s "$NODE_EXPORTER_URL" >> "$OUTPUT_FILE"
