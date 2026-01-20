---
title: "Convert to snake_case"
description: "Convert a string to snake_case."
topic: "strings"
relatedSlugs:
  - "snake-case-javascript"
  - "snake-case-python"
  - "snake-case-php"
  - "snake-case-bash"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorld Example"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "helloWorld Example" }
    output: "hello_world_example"
---

```ruby
str.gsub(/([A-Z])/, '_\1').gsub(/[\s-]+/, '_').downcase.gsub(/^_/, '')
```
