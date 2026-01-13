---
title: "Remove Accents"
description: "Remove diacritical marks (accents) from a string"
topic: "strings"
relatedSlugs:
  - "remove-accents-javascript"
  - "remove-accents-python"
  - "remove-accents-ruby"
  - "remove-accents-php"
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

```bash
echo "$str" | iconv -f UTF-8 -t ASCII//TRANSLIT
```
