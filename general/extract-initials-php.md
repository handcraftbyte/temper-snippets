---
title: "Extract Initials"
description: "Extract initials from a name."
topic: "strings"
relatedSlugs:
  - "extract-initials-javascript"
  - "extract-initials-python"
  - "extract-initials-ruby"
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

```php
strtoupper(implode('', array_map(fn($w) => $w[0], explode(' ', $name))));
```
