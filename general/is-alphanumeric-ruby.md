---
title: "Is Alphanumeric"
description: "Check if a string contains only letters and numbers."
topic: "validation"
relatedSlugs:
  - "is-alphanumeric-javascript"
  - "is-alphanumeric-python"
  - "is-alphanumeric-php"
  - "is-alphanumeric-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello123"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "Hello123" }
    output: "true"
  - input: { "str": "Hello World" }
    output: "false"
  - input: { "str": "abc123xyz" }
    output: "true"
---

```ruby
!!(str =~ /^[a-zA-Z0-9]+$/)
```
