#!/bin/bash
# Member 3 - Orchestrator (System Controller)

echo "Starting Hospital Admin System..."

initialize_system() {
    echo "Initializing system..."
    # TODO: Member 1 will implement setup logic
}

secure_data() {
    echo "Securing active_logs..."
    chmod 700 active_logs
    ls -l
    # TODO: Member 2 will implement security logic
} 

# Execution flow
initialize_system
secure_data

echo "System Environment Secured"
echo "Date: $(date)
