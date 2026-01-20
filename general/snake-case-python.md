---
title: "Convert to snake_case"
description: "Convert a string to snake_case."
topic: "strings"
relatedSlugs:
  - "snake-case-javascript"
  - "snake-case-ruby"
  - "snake-case-php"
  - "snake-case-bash"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorld Example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "helloWorld Example" }
    output: "hello_world_example"
---

```python
import re
result = re.sub(r'(?<!^)(?=[A-Z])', '_', str).lower()
return re.sub(r'[\s-]+', '_', result)
```
