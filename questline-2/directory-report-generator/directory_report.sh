#!/bin/bash

# Check for required directory parameter
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

TARGET_DIR="$1"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: '$TARGET_DIR' is not a valid directory."
    exit 1
fi

# Define output report file
OUTPUT_FILE="report.txt"

# 1. Total number of files
TOTAL_FILES=$(find "$TARGET_DIR" -maxdepth 1 -type f | wc -l)

# 2. Total number of executable files
EXEC_FILES=$(find "$TARGET_DIR" -maxdepth 1 -type f -executable | wc -l)

# 3. Largest file
LARGEST_FILE=$(find "$TARGET_DIR" -maxdepth 1 -type f -exec ls -lh {} + 2>/dev/null | sort -k5 -rh | head -n 1 | awk '{print $9 " (" $5 ")"}')
[ -z "$LARGEST_FILE" ] && LARGEST_FILE="None"

# 4. Most recently modified file
MOST_RECENT=$(find "$TARGET_DIR" -maxdepth 1 -type f -exec ls -lt {} + 2>/dev/null | head -n 1 | awk '{print $9}')
[ -z "$MOST_RECENT" ] && MOST_RECENT="None"

# 5. Number of hidden files
HIDDEN_FILES=$(find "$TARGET_DIR" -maxdepth 1 -name ".*" -type f | wc -l)

# Generate report.txt
cat << EOF > "$OUTPUT_FILE"
========================================
       DIRECTORY ANALYSIS REPORT
========================================
Target Directory          : $TARGET_DIR
Total Number of Files     : $TOTAL_FILES
Total Executable Files    : $EXEC_FILES
Number of Hidden Files    : $HIDDEN_FILES
Largest File              : $LARGEST_FILE
Most Recently Modified    : $MOST_RECENT
========================================
EOF

echo "Report generated successfully at $OUTPUT_FILE"
