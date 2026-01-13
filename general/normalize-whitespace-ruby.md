---
title: "Normalize Whitespace"
description: "Replace multiple whitespace with single space"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "Hello    world   this    is   a    test"
    description: "String with irregular whitespace"
exampleOutputs:
  - input: { "s": "Hello    world   this    is   a    test" }
    output: "Hello world this is a test"
---

```ruby
s.gsub(/\s+/, ' ').strip
```
