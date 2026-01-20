---
title: "Delete Cookie"
description: "Delete a browser cookie by setting its expiration date to the past."
topic: "browser"
parameters:
  - name: "name"
    type: "string"
    default: "myCookie"
    description: "Cookie name to delete."
exampleOutputs:
  - input: { "name": "myCookie" }
    output: "Cookie deleted"
---

```javascript
document.cookie = `${name}=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;`;
return "Cookie deleted";
```
