# Directory Report Generator

## Overview
`directory_report.sh` is a shell script that inspects a specified target directory and generates a summary text file named `report.txt` containing key file system statistics.

## Collected Metrics
- **Total Files**: Count of all standard files.
- **Executable Files**: Count of files with execution permissions (`-executable`).
- **Hidden Files**: Count of files beginning with a dot (`.`).
- **Largest File**: File consuming the most disk space.
- **Most Recently Modified**: File with the latest modification timestamp.

## Usage
```bash
chmod +x directory_report.sh
./directory_report.sh /path/to/directory
