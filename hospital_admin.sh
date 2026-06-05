#!/bin/bash

# Member 3 - Orchestrator (System Controller)

echo "Starting Hospital Admin System..."

initialize_system() {
    echo "Initializing KNH system environment..."
    # Written by Member 1 (Architect)

    if [ ! -d "active_logs" ]; then
        mkdir active_logs
    fi

    if [ ! -d "archived_logs" ]; then
        mkdir archived_logs
    fi

    if [ ! -d "reports" ]; then
        mkdir reports
    fi

    echo "System initialization completed successfully."
}

secure_data() {
    echo "Securing active_logs..."
    chmod 700 active_logs
    ls -ld active_logs
}

# Execution flow
initialize_system
secure_data

echo "System Environment Secured"