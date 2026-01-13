---
title: "Find Longest Word"
description: "Find the longest word in a string"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "The quick brown fox jumps over the lazy dog"
    description: "The string to search"
exampleOutputs:
  - input: { "str": "The quick brown fox jumps over the lazy dog" }
    output: "quick"
  - input: { "str": "JavaScript is awesome" }
    output: "JavaScript"
---

```javascript
str.split(/\s+/).reduce((longest, word) => word.length > longest.length ? word : longest, '');
```
