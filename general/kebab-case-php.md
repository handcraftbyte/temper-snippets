---
title: "Convert to kebab-case"
description: "Convert a string to kebab-case."
topic: "strings"
relatedSlugs:
  - "kebab-case-javascript"
  - "kebab-case-python"
  - "kebab-case-ruby"
  - "kebab-case-bash"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorld Example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "helloWorld Example" }
    output: "hello-world-example"
---

```php
strtolower(preg_replace('/[\s_]+/', '-', preg_replace('/(?<!^)[A-Z]/', '-$0', $str)));
```
