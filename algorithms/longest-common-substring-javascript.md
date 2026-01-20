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

```javascript
let longest = '', current = '';
for (let i = 0; i < a.length; i++) {
  for (let j = i + 1; j <= a.length; j++) {
    current = a.slice(i, j);
    if (b.includes(current) && current.length > longest.length) longest = current;
  }
}
return longest;
```
