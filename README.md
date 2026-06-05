# Coding-lab_Group17
## Project: KNH Digital Infrastructure (DevOps Simulation)

### Objective
This project simulates a hospital data monitoring system using shell scripting, permissions, and data analysis.

---

## Group Roles
- Member 1: System Setup (initialize directories and environment)
- Member 2: Security Lead (file permissions using chmod and verification)
- Member 3: Orchestrator (main script execution flow)
- Member 4: Log Archiving (move and rotate logs)
- Member 5: Clinical Analyst (detect critical health alerts using grep/awk)
- Member 6: Facility Auditor (water usage analysis and reporting)

---

## Files in this Project
- hospital_system.py → Generates simulated hospital sensor data
- hospital_admin.sh → Initializes system and applies security
- hospital_analysis.sh → Analyzes logs and extracts critical data
- hospital_archive.sh → Archives logs safely with timestamps
- .gitignore → Protects sensitive data from being uploaded

---

## How to Run

Start the system:
```bash
python3 hospital_system.py start
```

Run admin setup:
```bash
bash hospital_admin.sh
```

Run analysis:
```bash
bash hospital_analysis.sh
```

Archive logs:
```bash
bash hospital_archive.sh
```

Stop the system:
```bash
python3 hospital_system.py stop
```
