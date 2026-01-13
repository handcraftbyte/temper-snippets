---
title: "Trim Extra Whitespace"
description: "Remove extra whitespace from a string, keeping single spaces between words"
topic: "strings"
relatedSlugs:
  - "trim-whitespace-javascript"
  - "trim-whitespace-python"
  - "trim-whitespace-php"
  - "trim-whitespace-bash"
parameters:
  - name: "str"
    type: "string"
    default: "  Hello    World   Example  "
    description: "The string to clean up"
exampleOutputs:
  - input: { "str": "  Hello    World   Example  " }
    output: "Hello World Example"
  - input: { "str": "Too   many    spaces" }
    output: "Too many spaces"
---

```ruby
str.strip.gsub(/\s+/, ' ')
```
