---
title: "Validate JSON String"
description: "Check if a string is valid JSON that can be parsed."
topic: "validation"
parameters:
  - name: "str"
    type: "string"
    default: "{\"name\":\"John\"}"
    description: "String to validate."
exampleOutputs:
  - input: { "str": "{\"name\":\"John\"}" }
    output: "true"
  - input: { "str": "{invalid}" }
    output: "false"
---

```javascript
try { JSON.parse(str); true; } catch { false; }
```
