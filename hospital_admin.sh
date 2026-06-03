#!/bin/bash

# Member 3 - Orchestrator (System Controller)

echo "Starting Hospital Admin System..."

initialize_system() {
      echo "Initializing KNH system environment..."
    # Written by Member 1 (Architect)
    
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    else
        echo "active_logs already exists."
    fi
    
    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    else
        echo "archived_logs already exists."
    fi
    
    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir reports
    else
        echo "reports already exists."
    fi
    
    echo "System initialization completed successfully."
   
}

secure_data() {
    echo "Securing data..."
    # TODO: Member 2 will implement security logic
}

# Execution flow
initialize_system
secure_data

echo "System Environment Secured"
echo "Date: $(date)"
