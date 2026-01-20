---
title: "Extract Numbers from String"
description: "Extract all numbers from a string."
topic: "strings"
relatedSlugs:
  - "extract-numbers-javascript"
  - "extract-numbers-ruby"
  - "extract-numbers-php"
  - "extract-numbers-bash"
parameters:
  - name: "str"
    type: "string"
    default: "I have 3 cats and 2 dogs, total 5 pets"
    description: "The string to extract numbers from"
exampleOutputs:
  - input: { "str": "I have 3 cats and 2 dogs, total 5 pets" }
    output: "[3, 2, 5]"
  - input: { "str": "Price: $19.99" }
    output: "[19, 99]"
---

```python
import re
return [int(n) for n in re.findall(r'\d+', str)]
```
