# OverTheWire Bandit Solutions (Level 0 -> Level 15)

## Level 0 -> Level 1
* **Command:** `ssh bandit0@bandit.labs.overthewire.org -p 2220`
* **Password:** `bandit0`
* **Command Used:** `cat readme`
* **Notes:** Opened and read the contents of the `readme` file in the home directory.

---

## Level 1 -> Level 2
* **Command:** `ssh bandit1@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `cat ./-`
* **Notes:** Used `./-` to read the file named `-` without triggering standard input behavior.

---

## Level 2 -> Level 3
* **Command:** `ssh bandit2@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `cat "spaces in this filename"`
* **Notes:** Used quotes to handle spaces in the filename.

---

## Level 3 -> Level 4
* **Command:** `ssh bandit3@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `ls -la inhere/` then `cat inhere/.hidden`
* **Notes:** Listed hidden files using `-la` and read `.hidden`.

---

## Level 4 -> Level 5
* **Command:** `ssh bandit4@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `file inhere/*` then `cat inhere/-file07`
* **Notes:** Checked file types to locate the human-readable ASCII text file.

---

## Level 5 -> Level 6
* **Command:** `ssh bandit5@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `find inhere -type f -size 1033c ! -executable` then `cat inhere/maybehere07/.file2`
* **Notes:** Filtered by file properties (1033 bytes, non-executable).

---

## Level 6 -> Level 7
* **Command:** `ssh bandit6@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `find / -user bandit7 -group bandit6 -size 33c 2>/dev/null`
* **Notes:** Filtered system files by user, group, and size while redirecting errors.

---

## Level 7 -> Level 8
* **Command:** `ssh bandit7@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `grep "millionth" data.txt`
* **Notes:** Searched `data.txt` for the word "millionth".

---

## Level 8 -> Level 9
* **Command:** `ssh bandit8@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `sort data.txt | uniq -u`
* **Notes:** Sorted lines and filtered for the unique line that occurs only once.

---

## Level 9 -> Level 10
* **Command:** `ssh bandit9@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `strings data.txt | grep "=="`
* **Notes:** Extracted human-readable strings from binary data.

---

## Level 10 -> Level 11
* **Command:** `ssh bandit10@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `base64 -d data.txt`
* **Notes:** Decoded base64 encoded data inside `data.txt`.

---

## Level 11 -> Level 12
* **Command:** `ssh bandit11@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`
* **Notes:** Applied ROT13 translation to decode the password text.

---

## Level 12 -> Level 13
* **Command:** `ssh bandit12@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `xxd -r data.txt > data && file data` (decompressed recursively with gzip, bzip2, and tar)
* **Notes:** Reversed hex dump and repeatedly decompressed nested compressed files.

---

## Level 13 -> Level 14
* **Command:** `ssh bandit13@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `ssh -i sshkey.private bandit14@localhost -p 2220`
* **Notes:** Logged into `bandit14` using the private SSH key stored in `sshkey.private`.

---

## Level 14 -> Level 15
* **Command:** `ssh bandit14@bandit.labs.overthewire.org -p 2220`
* **Command Used:** `nc localhost 30000` (then submitted the level 14 password)
* **Notes:** Sent current password to port 30000 on localhost to receive the level 15 password.
