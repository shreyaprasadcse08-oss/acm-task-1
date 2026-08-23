# File Sculptor - Archive & Compression Log

## Overview
This document logs the terminal execution for creating a project directory, populating it with three text files, and archiving it into a compressed `.tar.gz` format.

---

## Commands Executed

1. **Create Directory & Text Files:**
   ```bash
   mkdir my_project
   cd my_project
   echo "File 1 content" > file1.txt
   echo "File 2 content" > file2.txt
   echo "File 3 content" > file3.txt
   cd ..Compress Directory using tar with gzip:

Bash
tar -czvf my_project.tar.gz my_project/
Verify Archive Contents:

Bash
tar -tzvf my_project.tar.gz
