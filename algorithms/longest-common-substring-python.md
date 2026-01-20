---
title: "Longest Common Substring"
description: "Find the longest contiguous substring that appears in both strings using an iterative approach."
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "abcdxyz"
    description: "First string"
  - name: "b"
    type: "string"
    default: "xyzabcd"
    description: "Second string"
exampleOutputs:
  - input: { "a": "abcdxyz", "b": "xyzabcd" }
    output: "abcd"
---

```python
longest = ''
for i in range(len(a)):
    for j in range(i + 1, len(a) + 1):
        current = a[i:j]
        if current in b and len(current) > len(longest):
            longest = current
return longest
```
