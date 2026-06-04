#!/bin/bash

echo "Starting Hospital Admin System..."

initialize_system() {
    echo "Initializing KNH system environment..."

    if [ ! -d "active_logs" ]; then
        mkdir active_logs
    fi

    if [ ! -d "archived_logs" ]; then
        mkdir archived_logs
    fi

    if [ ! -d "reports" ]; then
        mkdir reports
    fi

    echo "System initialization completed successfully"
}

secure_data() {
    echo "Securing data..."

    chmod 700 active_logs
    chmod 700 archived_logs
    chmod 700 reports

    echo "System Environment Secured"
}

# Execution flow
initialize_system
secure_data

echo "Date: $(date)"
