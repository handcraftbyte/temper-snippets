---
title: "Slugify String"
description: "Convert a string to a URL-friendly slug."
topic: "strings"
relatedSlugs:
  - "slugify-javascript"
  - "slugify-ruby"
  - "slugify-php"
  - "slugify-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World! This is a Test"
    description: "The string to slugify"
exampleOutputs:
  - input: { "str": "Hello World! This is a Test" }
    output: "hello-world-this-is-a-test"
---

```python
import re
return re.sub(r'[^a-z0-9]+', '-', str.lower()).strip('-')
```
