---
title: "Set LocalStorage"
description: "Store a value in localStorage with support for objects."
topic: "browser"
parameters:
  - name: "key"
    type: "string"
    default: "user"
    description: "Storage key."
  - name: "value"
    type: "string"
    default: "{\"name\": \"John\", \"age\": 30}"
    description: "Value to store (JSON for objects)."
exampleOutputs:
  - input: { "key": "user", "value": "{\"name\": \"John\"}" }
    output: "{\"name\": \"John\"}"
---

```javascript
localStorage.setItem(key, value);
return localStorage.getItem(key);
```
