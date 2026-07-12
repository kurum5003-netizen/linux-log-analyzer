#!/bin/bash

LOG_FILE="logs/sample.log"

echo "Linux log Analyzer Started"
echo "Analyzing: $LOG_FILE"

FAILED_LOGINS=$(grep -c  "Failed password" $LOG_FILE)
SUCCESS_LOGINS=$(grep -c "Accepted password" $LOG_FILE)

echo "Successful logins: $SUCCESS_LOGINS"
echo "Failed logins attempts: $FAILED_LOGINS"

ERROR_COUNT=$(grep -c "ERROR" $LOG_FILE)

echo "Error count: $ERROR_COUNT"
REPORT_FILE="reports/report.txt"
CURRENT_DATE=$(date)

echo "Linux Log Analyzer Report" > $REPORT_FILE
echo "===================" >> $REPORT_FILE
echo "Generated: $CURRENT_DATE" >> $REPORT_FILE
echo "Log file: $LOG_FILE" >> $REPORT_FILE
echo "Failed login attempts: $FAILED_LOGINS" >> $REPORT_FILE
echo "Error count: $ERROR_COUNT" >> $REPORT_FILE

