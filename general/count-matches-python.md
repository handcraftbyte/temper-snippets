---
title: "Count Regex Matches"
description: "Count how many times a regex pattern matches in a string."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "The rain in Spain falls mainly on the plain"
    description: "String to search"
  - name: "pattern"
    type: "string"
    default: "ain"
    description: "Pattern to count"
exampleOutputs:
  - input: { "str": "The rain in Spain falls mainly on the plain", "pattern": "ain" }
    output: "4"
---

```python
import re
return len(re.findall(pattern, str))
```
