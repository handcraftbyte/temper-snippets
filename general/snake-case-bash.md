---
title: "Convert to snake_case"
description: "Convert a string to snake_case"
topic: "strings"
relatedSlugs:
  - "snake-case-javascript"
  - "snake-case-python"
  - "snake-case-ruby"
  - "snake-case-php"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorld Example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "helloWorld Example" }
    output: "hello_world_example"
---

```bash
echo "$str" | sed 's/\([A-Z]\)/_\1/g' | tr '[:upper:] -' '[:lower:]_' | sed 's/^_//'
```
