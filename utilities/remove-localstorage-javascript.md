---
title: "Remove LocalStorage Item"
description: "Remove a specific item from localStorage"
topic: "browser"
parameters:
  - name: "key"
    type: "string"
    default: "myKey"
    description: "Key to remove"
exampleOutputs:
  - input: { "key": "myKey" }
    output: "Item removed"
---

```javascript
localStorage.removeItem(key);
return "Item removed";
```
