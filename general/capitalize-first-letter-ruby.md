---
title: "Capitalize First Letter"
description: "Capitalize the first letter of a string while keeping the rest unchanged."
topic: "strings"
relatedSlugs:
  - "capitalize-first-letter-javascript"
  - "capitalize-first-letter-python"
  - "capitalize-first-letter-php"
  - "capitalize-first-letter-bash"
parameters:
  - name: "str"
    type: "string"
    default: "hello world"
    description: "The string to capitalize"
exampleOutputs:
  - input: { "str": "hello world" }
    output: "Hello world"
  - input: { "str": "javaScript" }
    output: "JavaScript"
---

```ruby
str[0].upcase + str[1..-1]
```
