---
title: "Convert to Pascal Case"
description: "Convert a string to PascalCase format, capitalizing each word and removing separators."
topic: "strings"
relatedSlugs:
  - "pascal-case-javascript"
  - "pascal-case-python"
  - "pascal-case-php"
  - "pascal-case-bash"
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

```ruby
str.split(/[-_\s]+/).map(&:capitalize).join
```
