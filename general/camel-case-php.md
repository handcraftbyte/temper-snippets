---
title: "Convert to camelCase"
description: "Convert a string to camelCase"
topic: "strings"
relatedSlugs:
  - "camel-case-javascript"
  - "camel-case-python"
  - "camel-case-ruby"
  - "camel-case-bash"
parameters:
  - name: "str"
    type: "string"
    default: "hello world example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "hello world example" }
    output: "helloWorldExample"
---

```php
lcfirst(str_replace(' ', '', ucwords(preg_replace('/[\s_-]+/', ' ', $str))));
```
