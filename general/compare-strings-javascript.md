---
title: "Compare Strings (Case Insensitive)"
description: "Compare two strings ignoring case differences."
topic: "strings"
parameters:
  - name: "str1"
    type: "string"
    default: "Hello"
    description: "First string to compare"
  - name: "str2"
    type: "string"
    default: "HELLO"
    description: "Second string to compare"
exampleOutputs:
  - input: { "str1": "Hello", "str2": "HELLO" }
    output: "true"
  - input: { "str1": "foo", "str2": "bar" }
    output: "false"
---

```javascript
str1.toLowerCase() === str2.toLowerCase();
```
