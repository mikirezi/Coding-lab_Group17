#!/bin/bash
# Member 3 - Orchestrator (System Controller)
echo "Starting Hospital Admin System..."

initialize_system() {
    echo "Initializing KNH system environment..."
    if [ ! -d "active_logs" ]; then
        mkdir active_logs
        echo "Creating active_logs directory..."
    fi
    if [ ! -d "archived_logs" ]; then
        mkdir archived_logs
        echo "Creating archived_logs directory..."
    fi
    if [ ! -d "reports" ]; then
        mkdir reports
        echo "Creating reports directory..."
    fi
    echo "System initialization completed successfully."
}

secure_data() {
    echo "Securing data..."
    echo "Securing active_logs..."
    chmod 700 active_logs
    ls -ld active_logs
    echo "Permissions applied successfully."
}

# Execution flow - Member 3
initialize_system
secure_data
echo "System Environment Secured - $(date)"
