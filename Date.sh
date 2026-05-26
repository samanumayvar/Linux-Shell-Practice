#!/bin/bash
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")  
echo "Current date and time: $TIMESTAMP"\
START_TIME=$(date +%S)
sleep 10
END_TIME=$(date +%S)
echo "Current time:$TIMESTAMP"
TOTAL_TIME=$((END_TIME - START_TIME))
echo "Total time taken: $TOTAL_TIME seconds"