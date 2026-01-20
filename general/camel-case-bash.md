---
title: "Convert to camelCase"
description: "Convert a string to camelCase format with lowercase first letter."
topic: "strings"
relatedSlugs:
  - "camel-case-javascript"
  - "camel-case-python"
  - "camel-case-ruby"
  - "camel-case-php"
parameters:
  - name: "str"
    type: "string"
    default: "hello world example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "hello world example" }
    output: "helloWorldExample"
---

```bash
echo "$str" | sed -r 's/([-_ ]+)([a-z])/\U\2/g' | sed 's/^./\L&/'
```
