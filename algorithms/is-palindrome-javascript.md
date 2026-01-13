---
title: "Check if Palindrome"
description: "Check if a string is a palindrome (reads the same forwards and backwards)"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "A man a plan a canal Panama"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "A man a plan a canal Panama" }
    output: "true"
  - input: { "str": "racecar" }
    output: "true"
  - input: { "str": "hello" }
    output: "false"
---

```javascript
const clean = str.toLowerCase().replace(/[^a-z0-9]/g, '');
return clean === [...clean].reverse().join('');
```
