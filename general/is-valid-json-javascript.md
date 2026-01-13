---
title: "Validate JSON"
description: "Check if a string is valid JSON"
topic: "validation"
parameters:
  - name: "str"
    type: "string"
    default: "{\"name\": \"John\", \"age\": 30}"
    description: "The string to validate as JSON"
exampleOutputs:
  - input: { "str": "{\"name\": \"John\", \"age\": 30}" }
    output: "true"
  - input: { "str": "{invalid json}" }
    output: "false"
  - input: { "str": "[1, 2, 3]" }
    output: "true"
---

```javascript
try { JSON.parse(str); true; } catch { false; }
```
