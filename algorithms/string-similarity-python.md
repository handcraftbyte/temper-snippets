---
title: "String Similarity"
description: "Calculate the similarity percentage between two strings based on edit distance."
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "hello"
    description: "First string"
  - name: "b"
    type: "string"
    default: "hallo"
    description: "Second string"
exampleOutputs:
  - input: { "a": "hello", "b": "hallo" }
    output: "80"
---

```python
m, n = len(a), len(b)
dp = [[i if j == 0 else j if i == 0 else 0 for j in range(n+1)] for i in range(m+1)]
for i in range(1, m+1):
    for j in range(1, n+1):
        dp[i][j] = dp[i-1][j-1] if a[i-1] == b[j-1] else 1 + min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1])
return round((1 - dp[m][n] / max(m, n)) * 100)
```
