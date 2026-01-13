---
title: "Extract URLs from Text"
description: "Extract all URLs from a text string"
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "Check out https://example.com and http://test.org for more info"
    description: "Text containing URLs"
exampleOutputs:
  - input: { "text": "Check out https://example.com and http://test.org" }
    output: "['https://example.com', 'http://test.org']"
---

```python
import re
return re.findall(r'https?://[^\s]+', text)
```
