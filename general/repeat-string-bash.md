---
title: "Repeat String"
description: "Repeat a string a specified number of times to create a new concatenated string."
topic: "strings"
relatedSlugs:
  - "repeat-string-javascript"
  - "repeat-string-python"
  - "repeat-string-ruby"
  - "repeat-string-php"
parameters:
  - name: "str"
    type: "string"
    default: "abc"
    description: "The string to repeat"
  - name: "count"
    type: "number"
    default: 3
    description: "Number of times to repeat"
exampleOutputs:
  - input: { "str": "abc", "count": 3 }
    output: "abcabcabc"
  - input: { "str": "=-", "count": 5 }
    output: "=-=-=-=-=-"
---

```bash
printf "%0.s$str" $(seq 1 $count)
```
