---
title: "Extract Initials"
description: "Extract initials from a name"
topic: "strings"
relatedSlugs:
  - "extract-initials-javascript"
  - "extract-initials-python"
  - "extract-initials-php"
  - "extract-initials-bash"
parameters:
  - name: "name"
    type: "string"
    default: "John Michael Doe"
    description: "The full name to extract initials from"
exampleOutputs:
  - input: { "name": "John Michael Doe" }
    output: "JMD"
  - input: { "name": "Alice Smith" }
    output: "AS"
---

```ruby
name.split.map { |w| w[0] }.join.upcase
```
