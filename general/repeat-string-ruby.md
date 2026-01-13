---
title: "Repeat String"
description: "Repeat a string a specified number of times"
topic: "strings"
relatedSlugs:
  - "repeat-string-javascript"
  - "repeat-string-python"
  - "repeat-string-php"
  - "repeat-string-bash"
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

```ruby
str * count
```
