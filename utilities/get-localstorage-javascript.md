---
title: "Get LocalStorage"
description: "Retrieve a value from localStorage"
topic: "browser"
parameters:
  - name: "key"
    type: "string"
    default: "user"
    description: "Storage key"
exampleOutputs:
  - input: { "key": "user" }
    output: "{\"name\": \"John\"}"
---

```javascript
localStorage.getItem(key);
```
