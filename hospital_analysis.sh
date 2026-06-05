#!/bin/bash

# hospital_analysis.sh
# Member 5 - Clinical analyst

process_vitals() {

    echo "============================================"
    echo "   KNH Clinical Vitals Analysis"
    echo "   Running at: $(date)"
    echo "============================================"

   HEART_RATE_LOG="active_logs/heart_rate_log.log"
    TEMPERATURE_LOG="active_logs/temperature_log.log"
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

water_audit() {
    echo "============================================"
    echo "   KNH Water Usage Audit"
    echo "   Running at: $(date)"
    echo "============================================"
    
    WATER_LOG="active_logs/water_usage_log.log"
    
    echo "[INFO] Calculating average water usage for ICU_WATER_RESERVE..."
    
    awk -F'|' '/ICU_WATER_RESERVE/ {
        sum += $3
        count++
    }
    END {
        if (count > 0)
            printf "\n  Device       : ICU_WATER_RESERVE\n  Total Readings : %d\n  Average Usage  : %.2f Liters/min\n\n", count, sum/count
        else
            print "  No data found for ICU_WATER_RESERVE"
    }' "$WATER_LOG"
    
    echo "============================================"
}

water_audit
