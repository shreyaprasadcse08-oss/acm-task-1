# Process Detective - Process Management Report

## Overview
This document logs the terminal execution demonstrating process management in Linux: starting a background process, locating its Process ID (PID), and terminating it.

---

## Execution Log & Commands

### 1. Start Process
Started a background process running for 100 seconds:
```bash
sleep 100 &

pgrep -l sleep
# OR
ps aux | grep sleep

kill 12345
