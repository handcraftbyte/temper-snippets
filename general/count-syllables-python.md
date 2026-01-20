---
title: "Count Syllables"
description: "Estimate the number of syllables in an English word."
topic: "strings"
parameters:
  - name: "word"
    type: "string"
    default: "beautiful"
    description: "Word to count syllables in"
exampleOutputs:
  - input: { "word": "beautiful" }
    output: "3"
---

```python
import re
w = re.sub(r'(?:[^laeiouy]es|ed|[^laeiouy]e)$', '', word.lower())
matches = re.findall(r'[aeiouy]{1,2}', w)
return len(matches) if matches else 1
```
