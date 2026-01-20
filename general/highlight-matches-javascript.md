---
title: "Highlight Matches"
description: "Wrap regex matches with HTML tags."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "The quick brown fox jumps over the lazy dog"
    description: "String to search"
  - name: "pattern"
    type: "string"
    default: "fox|dog"
    description: "Regex pattern"
exampleOutputs:
  - input: { "str": "The quick brown fox jumps over the lazy dog", "pattern": "fox|dog" }
    output: "The quick brown <mark>fox</mark> jumps over the lazy <mark>dog</mark>"
---

```javascript
str.replace(new RegExp(`(${pattern})`, 'gi'), '<mark>$1</mark>');
```
