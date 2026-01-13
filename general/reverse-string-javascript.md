---
title: "Reverse String"
description: "Reverse the characters in a string"
topic: "strings"
relatedSlugs:
  - "reverse-string-python"
  - "reverse-string-ruby"
  - "reverse-string-php"
  - "reverse-string-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "The string to reverse"
exampleOutputs:
  - input: { "str": "Hello World" }
    output: "dlroW olleH"
  - input: { "str": "JavaScript" }
    output: "tpircSavaJ"
---

```javascript
[...str].reverse().join('');
```
