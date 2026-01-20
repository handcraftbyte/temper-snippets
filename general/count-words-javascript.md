---
title: "Count Words"
description: "Count the number of whitespace-separated words in a string."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "The quick brown fox jumps over the lazy dog"
    description: "The string to count words in"
exampleOutputs:
  - input: { "str": "The quick brown fox jumps over the lazy dog" }
    output: "9"
  - input: { "str": "Hello World" }
    output: "2"
  - input: { "str": "" }
    output: "0"
---

```javascript
str.trim() ? str.trim().split(/\s+/).length : 0;
```
