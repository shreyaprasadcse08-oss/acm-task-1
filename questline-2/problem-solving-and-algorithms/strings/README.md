
# String Algorithms Solutions

This directory contains solutions and explanations for string manipulation challenges.

---

## 1. Valid Palindrome (LeetCode #125)

### Problem Summary
Given a string `s`, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

### Reasoning & Approach
- Use two pointers starting at opposite ends (`left` and `right`).
- Skip non-alphanumeric characters.
- Convert remaining characters to lowercase and compare. If any match fails, return `False`.

### Python Code Solution
```python
class Solution:
    def isPalindrome(self, s: str) -> bool:
        left, right = 0, len(s) - 1
        
        while left < right:
            while left < right and not s[left].isalnum():
                left += 1
            while left < right and not s[right].isalnum():
                right -= 1
                
            if s[left].lower() != s[right].lower():
                return False
                
            left += 1
            right -= 1

Problem Summary
Write the string s in a zigzag pattern on a given number of rows numRows and read line by line.

Reasoning & Approach
Maintain a list of strings representing each row.

Iterate through characters while updating the current row index and direction (direction = 1 moving down, direction = -1 moving up).

Join all rows at the end to build the final string.

Python Code Solution
class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1 or numRows >= len(s):
            return s
            
        rows = [''] * numRows
        current_row = 0
        direction = -1
        
        for char in s:
            rows[current_row] += char
            if current_row == 0 or current_row == numRows - 1:
                direction = -direction
            current_row += direction
            
        return "".join(rows)
            
        return True
