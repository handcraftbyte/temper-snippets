---
title: "Convert to kebab-case"
description: "Convert a string to kebab-case"
topic: "strings"
relatedSlugs:
  - "kebab-case-javascript"
  - "kebab-case-python"
  - "kebab-case-ruby"
  - "kebab-case-php"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorld Example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "helloWorld Example" }
    output: "hello-world-example"
---

```bash
echo "$str" | sed 's/\([A-Z]\)/-\1/g' | tr '[:upper:] _' '[:lower:]-' | sed 's/^-//'
```
