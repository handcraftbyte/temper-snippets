---
title: "Is Numeric"
description: "Check if a string represents a valid number"
topic: "validation"
relatedSlugs:
  - "is-numeric-javascript"
  - "is-numeric-python"
  - "is-numeric-php"
  - "is-numeric-bash"
parameters:
  - name: "str"
    type: "string"
    default: "123.45"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "123.45" }
    output: "true"
  - input: { "str": "-42" }
    output: "true"
  - input: { "str": "12abc" }
    output: "false"
---

```ruby
!!(Float(str) rescue false)
```
