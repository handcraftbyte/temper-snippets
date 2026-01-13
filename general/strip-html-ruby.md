---
title: "Strip HTML Tags"
description: "Remove all HTML tags from a string"
topic: "strings"
relatedSlugs:
  - "strip-html-javascript"
  - "strip-html-python"
  - "strip-html-php"
  - "strip-html-bash"
parameters:
  - name: "str"
    type: "string"
    default: "<p>Hello <strong>World</strong></p>"
    description: "The string containing HTML tags to remove"
exampleOutputs:
  - input: { "str": "<p>Hello <strong>World</strong></p>" }
    output: "Hello World"
  - input: { "str": "<div><a href='#'>Click me</a></div>" }
    output: "Click me"
---

```ruby
str.gsub(/<[^>]*>/, '')
```
