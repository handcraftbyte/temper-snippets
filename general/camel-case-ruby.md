---
title: "Convert to camelCase"
description: "Convert a string to camelCase"
topic: "strings"
relatedSlugs:
  - "camel-case-javascript"
  - "camel-case-python"
  - "camel-case-php"
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

```ruby
words = str.split(/[\s_-]+/)
return words[0].downcase + words[1..].map(&:capitalize).join
```
