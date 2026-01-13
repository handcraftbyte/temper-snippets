---
title: "Convert to Pascal Case"
description: "Convert a string to PascalCase format"
topic: "strings"
relatedSlugs:
  - "pascal-case-javascript"
  - "pascal-case-python"
  - "pascal-case-ruby"
  - "pascal-case-php"
parameters:
  - name: "str"
    type: "string"
    default: "hello-world-example"
    description: "The string to convert to PascalCase"
exampleOutputs:
  - input: { "str": "hello-world-example" }
    output: "HelloWorldExample"
  - input: { "str": "hello world" }
    output: "HelloWorld"
  - input: { "str": "foo_bar_baz" }
    output: "FooBarBaz"
---

```bash
echo "$str" | sed 's/[-_ ]\+/ /g' | sed 's/\b\(.\)/\u\1/g' | tr -d ' '
```
