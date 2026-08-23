#!/bin/bash

# Check if directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

TARGET_DIR="$1"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

echo "=== Permission Auditor Report ==="
echo "Scanning directory: $TARGET_DIR"
echo "---------------------------------"

# Temporary file to store unique suspicious file paths
TMP_FILE=$(mktemp)

# 1. Report files with 777 permissions
echo "[+] Files with 777 permissions:"
find "$TARGET_DIR" -type f -perm 0777 2>/dev/null | tee -a "$TMP_FILE"

# 2. Report files owned by root
echo -e "\n[+] Files owned by root:"
find "$TARGET_DIR" -type f -user root 2>/dev/null | tee -a "$TMP_FILE"

# 3. Report files with SUID bit set
echo -e "\n[+] Files with SUID bit set:"
find "$TARGET_DIR" -type f -perm -4000 2>/dev/null | tee -a "$TMP_FILE"

# 4. Count unique suspicious files
TOTAL_COUNT=$(sort "$TMP_FILE" | uniq | grep -c .)

echo -e "\n---------------------------------"
echo "Total suspicious files found: $TOTAL_COUNT"

# Cleanup temporary file
rm -f "$TMP_FILE"
