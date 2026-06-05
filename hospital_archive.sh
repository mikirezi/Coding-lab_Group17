#!/bin/bash

# Generate timestamp for archived log filenames
timestamp=$(date +"%Y%m%d_%H%M")

# Move active logs into archived_logs with timestamped names
mv active_logs/heart_rate_log.log archived_logs/heart_rate_log_${timestamp}.log
mv active_logs/temperature_log.log archived_logs/temperature_log_${timestamp}.log
mv active_logs/water_usage_log.log archived_logs/water_usage_log_${timestamp}.log

# Create fresh empty log files for the hospital system
touch active_logs/heart_rate_log.log
touch active_logs/temperature_log.log
touch active_logs/water_usage_log.log
