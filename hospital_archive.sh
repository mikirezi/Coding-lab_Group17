#!/bin/bash

echo "Starting archive process..."

# Generate timestamp
timestamp=$(date +"%Y%m%d_%H%M")

echo "Moving logs to archive..."

mv active_logs/heart_rate_log.log archived_logs/heart_rate_log_${timestamp}.log
mv active_logs/temperature_log.log archived_logs/temperature_log_${timestamp}.log
mv active_logs/water_usage_log.log archived_logs/water_usage_log_${timestamp}.log

echo "Creating fresh log files..."

touch active_logs/heart_rate_log.log
touch active_logs/temperature_log.log
touch active_logs/water_usage_log.log

echo "Archive completed successfully."
