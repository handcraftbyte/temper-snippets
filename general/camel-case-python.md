---
title: "Convert to camelCase"
description: "Convert a string to camelCase"
topic: "strings"
relatedSlugs:
  - "camel-case-javascript"
  - "camel-case-ruby"
  - "camel-case-php"
  - "camel-case-bash"
parameters:
  - name: "str"
    type: "string"
    default: "hello world example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "hello world example" }
    output: "helloWorldExample"
---

```python
import re
words = re.split(r'[\s_-]+', str)
return words[0].lower() + ''.join(w.capitalize() for w in words[1:])
```
