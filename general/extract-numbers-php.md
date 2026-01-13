---
title: "Extract Numbers from String"
description: "Extract all numbers from a string"
topic: "strings"
relatedSlugs:
  - "extract-numbers-javascript"
  - "extract-numbers-python"
  - "extract-numbers-ruby"
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

```php
preg_match_all('/\d+/', $str, $matches);
return array_map('intval', $matches[0]);
```
