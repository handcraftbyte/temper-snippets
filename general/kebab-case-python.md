---
title: "Convert to kebab-case"
description: "Convert a string to kebab-case."
topic: "strings"
relatedSlugs:
  - "kebab-case-javascript"
  - "kebab-case-ruby"
  - "kebab-case-php"
  - "kebab-case-bash"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorld Example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "helloWorld Example" }
    output: "hello-world-example"
---

```python
import re
result = re.sub(r'(?<!^)(?=[A-Z])', '-', str).lower()
return re.sub(r'[\s_]+', '-', result)
```
