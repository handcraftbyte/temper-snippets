---
title: "Check if Palindrome"
description: "Check if a string is a palindrome (reads the same forwards and backwards)"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "A man a plan a canal Panama"
    description: "The string to check"
exampleOutputs:
  - input: { "s": "A man a plan a canal Panama" }
    output: "True"
  - input: { "s": "racecar" }
    output: "True"
  - input: { "s": "hello" }
    output: "False"
---

```python
import re
clean = re.sub(r'[^a-z0-9]', '', s.lower())
return clean == clean[::-1]
```
