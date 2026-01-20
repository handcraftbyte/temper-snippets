---
title: "Remove Accents"
description: "Remove diacritical marks and accents from Unicode characters, converting them to their ASCII equivalents."
topic: "strings"
relatedSlugs:
  - "remove-accents-javascript"
  - "remove-accents-ruby"
  - "remove-accents-php"
  - "remove-accents-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Crème brûlée café"
    description: "The string to normalize"
exampleOutputs:
  - input: { "str": "Crème brûlée café" }
    output: "Creme brulee cafe"
  - input: { "str": "résumé naïve" }
    output: "resume naive"
---

```python
import unicodedata
return ''.join(c for c in unicodedata.normalize('NFD', str) if unicodedata.category(c) != 'Mn')
```
