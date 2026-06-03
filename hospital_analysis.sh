#!/bin/bash

# hospital_analysis.sh
# Member 5 - Clinical analyst

process_vitals() {

    echo "============================================"
    echo "   KNH Clinical Vitals Analysis"
    echo "   Running at: $(date)"
    echo "============================================"

    HEART_RATE_LOG="active_logs/heart_rate.log"
    TEMPERATURE_LOG="active_logs/temperature.log"
    OUTPUT_FILE="reports/critical_alerts.txt"

    if [ ! -d "reports" ]; then
        echo "[ERROR] reports/ directory not found. Run hospital_admin.sh first."
        return 1
    fi

    {
        echo "============================================"
        echo " KNH CRITICAL ALERTS REPORT"
        echo " Generated: $(date)"
        echo "============================================"
        echo ""
    } > "$OUTPUT_FILE"

    echo "[INFO] Scanning Heart Rate log for CRITICAL events..."
    {
        echo "--- HEART RATE CRITICAL ALERTS ---"
        grep "CRITICAL" "$HEART_RATE_LOG" | \
        awk -F',' '{printf "Timestamp: %-25s | Device: %-20s | Value: %s\n", $1, $2, $3}'
        echo ""
    } >> "$OUTPUT_FILE"

    echo "[INFO] Scanning Temperature log for CRITICAL events..."
    {
        echo "--- TEMPERATURE CRITICAL ALERTS ---"
        grep "CRITICAL" "$TEMPERATURE_LOG" | \
        awk -F',' '{printf "Timestamp: %-25s | Device: %-20s | Value: %s\n", $1, $2, $3}'
        echo ""
    } >> "$OUTPUT_FILE"

    {
        echo "============================================"
        echo " END OF REPORT"
        echo "============================================"
    } >> "$OUTPUT_FILE"

    echo "[SUCCESS] Critical alerts saved to --> $OUTPUT_FILE"
    echo "============================================"
}

process_vitals