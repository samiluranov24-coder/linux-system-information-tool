
#!/bin/bash

REPORT="system_report_$(date +%Y-%m-%d_%H-%M-%S).txt"

echo "===== LINUX SYSTEM INFORMATION =====" | tee "$REPORT"

echo "" | tee -a "$REPORT"
echo "Computer name:" | tee -a "$REPORT"
hostname | tee -a "$REPORT"

echo "" | tee -a "$REPORT"
echo "System uptime:" | tee -a "$REPORT"
uptime | tee -a "$REPORT"

echo "" | tee -a "$REPORT"
echo "Memory information:" | tee -a "$REPORT"
free -h | tee -a "$REPORT"

echo "" | tee -a "$REPORT"
echo "Disk information:" | tee -a "$REPORT"
df -h | tee -a "$REPORT"

echo "" | tee -a "$REPORT"
echo "Running processes:" | tee -a "$REPORT"
ps aux | tee -a "$REPORT"

echo "" | tee -a "$REPORT"
echo "===== END OF REPORT =====" | tee -a "$REPORT"

echo ""
echo "Report saved to: $REPORT"

