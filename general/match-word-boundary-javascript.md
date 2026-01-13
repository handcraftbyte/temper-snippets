---
title: "Match Whole Word"
description: "Match a whole word only (with word boundaries)"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "The cat scattered the category"
    description: "String to search"
  - name: "word"
    type: "string"
    default: "cat"
    description: "Word to match"
exampleOutputs:
  - input: { "str": "The cat scattered the category", "word": "cat" }
    output: "[\"cat\"]"
---

```javascript
str.match(new RegExp(`\\b${word}\\b`, 'g')) || [];
```
