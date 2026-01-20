---
title: "Strip HTML Tags"
description: "Remove all HTML tags from a string."
topic: "strings"
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

```javascript
str.replace(/<[^>]*>/g, '');
```
