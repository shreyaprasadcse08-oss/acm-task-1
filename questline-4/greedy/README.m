# Questline 4: Greedy Algorithms Solutions

This folder contains solutions and explanations for LeetCode Greedy Algorithm problems.

---

## 1. Lemonade Change (LeetCode #860)

### Problem Summary
Each lemonade costs $5. Customers pay with $5, $10, or $20 bills. We must give correct change to every customer using only the bills on hand.

### Thought Process & Strategy
- Maintain counters for available $5 and $10 bills ($20 bills cannot be given as change).
- When a customer pays with $5: Increment $5 count.
- When a customer pays with $10: Decrement $5 count, increment $10 count.
- When a customer pays with $20: Greedily prefer giving one $10 and one $5 as change to preserve $5 bills (since $5 bills are more versatile). If a $10 bill is unavailable, give three $5 bills.

### Code Solution (Python)
```python
class Solution:
    def lemonadeChange(self, bills: list[int]) -> bool:
        five = ten = 0
        for bill in bills:
            if bill == 5:
                five += 1
            elif bill == 10:
                if not five: return False
                five -= 1
                ten += 1
            else:
                if ten and five:
                    ten -= 1
                    five -= 1
                elif five >= 3:
                    five -= 3
                else:
                    return False
        return True



class Solution:
    def findContentChildren(self, g: list[int], s: list[int]) -> int:
        g.sort()
        s.sort()
        child_ptr = cookie_ptr = 0
        while child_ptr < len(g) and cookie_ptr < len(s):
            if s[cookie_ptr] >= g[child_ptr]:
                child_ptr += 1
            cookie_ptr += 1
        return child_ptr
