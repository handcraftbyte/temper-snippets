---
title: "Escape Regex"
description: "Escape special characters for use in a regular expression"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "Hello. How are you? (test)"
    description: "String to escape for regex"
exampleOutputs:
  - input: { "str": "Hello. How are you? (test)" }
    output: "Hello\\. How are you\\? \\(test\\)"
---

```python
import re
return re.escape(str)
```
