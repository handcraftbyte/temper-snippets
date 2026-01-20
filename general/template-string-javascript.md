---
title: "Simple Template String"
description: "Replace placeholders in a template string with values."
topic: "strings"
parameters:
  - name: "template"
    type: "string"
    default: "Hello, {{name}}! You are {{age}} years old."
    description: "Template with {{placeholders}}"
  - name: "data"
    type: "object"
    default: {"name": "John", "age": 30}
    description: "Data for replacements"
exampleOutputs:
  - input: { "template": "Hello, {{name}}!", "data": {"name": "John"} }
    output: "Hello, John!"
---

```javascript
template.replace(/\{\{(\w+)\}\}/g, (_, key) => data[key] ?? '');
```
