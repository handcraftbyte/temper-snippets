---
title: "Remove Accents"
description: "Remove diacritical marks (accents) from a string"
topic: "strings"
relatedSlugs:
  - "remove-accents-javascript"
  - "remove-accents-python"
  - "remove-accents-ruby"
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

```php
preg_replace('/\pM/u', '', Normalizer::normalize($str, Normalizer::FORM_D));
```
