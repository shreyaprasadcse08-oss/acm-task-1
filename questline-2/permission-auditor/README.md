# Permission Auditor

## Overview
`permission_auditor.sh` is a Bash script designed to recursively scan a target directory for security risk files.

## Features
- Identifies files with world-writable/full permissions (`777`).
- Identifies files owned by `root`.
- Identifies files with the SUID bit set (`-perm -4000`).
- Deduplicates findings and prints the total number of unique suspicious files.

## Usage
```bash
chmod +x permission_auditor.sh
./permission_auditor.sh /path/to/directory
