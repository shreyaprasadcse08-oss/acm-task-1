# Number Algorithms Solutions

This directory contains solutions for the Number Algorithms section.

---

## 1. Palindrome Number (LeetCode #9)

### Problem Summary
Determine whether an integer `x` is a palindrome without converting it to a string.

### Thought Process & Strategy
- Negative numbers cannot be palindromes due to the `-` sign.
- Numbers ending in `0` (except `0` itself) cannot be palindromes.
- Revert only the second half of the number and compare it to the first half to avoid integer overflow issues.

### Python Code Solution
```python
class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0 or (x % 10 == 0 and x != 0):
            return False
            
        reverted_number = 0
        while x > reverted_number:
            reverted_number = (reverted_number * 10) + (x % 10)
            x //= 10

class Solution:
    def intToRoman(self, num: int) -> str:
        value_map = [
            (1000, 'M'), (900, 'CM'), (500, 'D'), (400, 'CD'),
            (100, 'C'), (90, 'XC'), (50, 'L'), (40, 'XL'),
            (10, 'X'), (9, 'IX'), (5, 'V'), (4, 'IV'), (1, 'I')
        ]
        
        roman = []
        for val, symbol in value_map:
            if num == 0:
                break
            count, num = divmod(num, val)
            roman.append(symbol * count)
            
        return "".join(roman)
            
        return x == reverted_number or x == reverted_number // 10
